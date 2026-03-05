import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/app.dart' as app;
import 'package:pulumi_azure_native/containerregistry.dart'
    as containerregistry;
import 'package:pulumi_azure_native/operationalinsights.dart'
    as operationalinsights;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_docker/index.dart' as docker;

class AzureNativeContainerAppsStack extends pulumi.Stack {
  AzureNativeContainerAppsStack() : super() {
    final resourceGroup = resources.ResourceGroup('rg');

    final workspace = operationalinsights.Workspace(
      'loganalytics',
      args: operationalinsights.WorkspaceArgs(
        resourceGroupName: resourceGroup.name,
        sku: operationalinsights.WorkspaceSku(
          name: 'PerGB2018'.output(),
        ).output(),
        retentionInDays: 30.output(),
      ),
    );

    final workspaceSharedKeys =
        pulumi.Output.tuple(resourceGroup.name, workspace.name).apply((
          pair,
        ) async {
          return operationalinsights.getSharedKeys(
            operationalinsights.GetSharedKeysArgs(
              resourceGroupName: pair.$1.output(),
              workspaceName: pair.$2.output(),
            ),
          );
        });

    final primarySharedKey = workspaceSharedKeys.apply<String>((result) {
      final key = result.primarySharedKey;
      if (key == null || key.isEmpty) {
        throw Exception('Workspace shared keys did not include primary key');
      }
      return key;
    });

    final managedEnv = app.ManagedEnvironment(
      'env',
      args: app.ManagedEnvironmentArgs(
        resourceGroupName: resourceGroup.name,
        appLogsConfiguration: app.AppLogsConfiguration(
          destination: 'log-analytics'.output(),
          logAnalyticsConfiguration: app.LogAnalyticsConfiguration(
            customerId: workspace.customerId,
            sharedKey: primarySharedKey,
          ).output(),
        ).output(),
      ),
    );

    final registry = containerregistry.Registry(
      'registry',
      args: containerregistry.RegistryArgs(
        resourceGroupName: resourceGroup.name,
        sku: containerregistry.Sku(name: 'Basic'.output()).output(),
        adminUserEnabled: true.output(),
      ),
    );

    final credentials = pulumi.Output.tuple(resourceGroup.name, registry.name)
        .apply((pair) async {
          return containerregistry.listRegistryCredentials(
            containerregistry.ListRegistryCredentialsArgs(
              resourceGroupName: pair.$1.output(),
              registryName: pair.$2.output(),
            ),
          );
        });

    final adminUsername = credentials.apply<String>((result) {
      final username = result.username;
      if (username == null || username.isEmpty) {
        throw Exception('Registry credentials did not include a username');
      }
      return username;
    });

    final adminPassword = credentials.apply<String>((result) {
      final passwords = result.passwords;
      if (passwords == null || passwords.isEmpty) {
        throw Exception('Registry credentials did not include passwords');
      }

      final value = passwords.first.value;
      if (value == null) {
        throw Exception('Registry password value is null');
      }
      return value;
    });

    const customImage = 'node-app';
    final imageName = registry.loginServer.apply<String>(
      (server) => '$server/$customImage:v1.0.0',
    );

    final myImage = docker.Image(
      customImage,
      args: docker.ImageArgs(
        imageName: imageName,
        build: docker.DockerBuild(context: './$customImage'.output()).output(),
        registry: docker.Registry(
          server: registry.loginServer,
          username: adminUsername,
          password: adminPassword,
        ).output(),
      ),
    );

    final containerApp = app.ContainerApp(
      'app',
      args: app.ContainerAppArgs(
        resourceGroupName: resourceGroup.name,
        managedEnvironmentId: managedEnv.id,
        configuration: app.Configuration(
          ingress: app.Ingress(
            external: true.output(),
            targetPort: 80.output(),
          ).output(),
          registries: [
            app.RegistryCredentials(
              server: registry.loginServer,
              username: adminUsername,
              passwordSecretRef: 'pwd'.output(),
            ),
          ].output(),
          secrets: [
            app.Secret(name: 'pwd'.output(), value: adminPassword),
          ].output(),
        ).output(),
        template: app.Template(
          containers: [
            app.Container(name: 'myapp'.output(), image: myImage.imageName),
          ].output(),
        ).output(),
      ),
    );

    final url = containerApp.configuration.apply((config) {
      if (config == null || config.ingress == null) {
        throw Exception('Container App ingress configuration is not available');
      }

      return config.ingress!
          .output()
          .apply((ingress) => ingress.fqdn)
          .apply((fqdn) => 'https://$fqdn');
    });

    registerOutputs(<String, pulumi.Output<dynamic>>{'url': url});
  }
}
