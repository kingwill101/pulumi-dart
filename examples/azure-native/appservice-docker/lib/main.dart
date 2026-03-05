import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/containerregistry.dart'
    as containerregistry;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/web.dart' as web;
import 'package:pulumi_docker/index.dart' as docker;

class AzureNativeAppServiceDockerStack extends pulumi.Stack {
  AzureNativeAppServiceDockerStack() : super() {
    final resourceGroup = resources.ResourceGroup('appservice-docker-rg');

    final plan = web.AppServicePlan(
      'plan',
      args: web.AppServicePlanArgs(
        resourceGroupName: resourceGroup.name,
        kind: 'Linux'.output(),
        reserved: true.output(),
        sku: web.SkuDescription(
          name: 'B1'.output(),
          tier: 'Basic'.output(),
        ).output(),
      ),
    );

    const imageInDockerHub = 'microsoft/azure-appservices-go-quickstart';
    final helloApp = web.WebApp(
      'helloApp',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: plan.id,
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(
              name: 'WEBSITES_ENABLE_APP_SERVICE_STORAGE'.output(),
              value: 'false'.output(),
            ),
          ].output(),
          alwaysOn: true.output(),
          linuxFxVersion: 'DOCKER|$imageInDockerHub'.output(),
        ).output(),
        httpsOnly: true.output(),
      ),
    );

    const customImage = 'node-app';
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

    final getStartedApp = web.WebApp(
      'getStartedApp',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: plan.id,
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(
              name: 'WEBSITES_ENABLE_APP_SERVICE_STORAGE'.output(),
              value: 'false'.output(),
            ),
            web.NameValuePair(
              name: 'DOCKER_REGISTRY_SERVER_URL'.output(),
              value: registry.loginServer.apply((server) => 'https://$server'),
            ),
            web.NameValuePair(
              name: 'DOCKER_REGISTRY_SERVER_USERNAME'.output(),
              value: adminUsername,
            ),
            web.NameValuePair(
              name: 'DOCKER_REGISTRY_SERVER_PASSWORD'.output(),
              value: adminPassword,
            ),
            web.NameValuePair(
              name: 'WEBSITES_PORT'.output(),
              value: '80'.output(),
            ),
          ].output(),
          alwaysOn: true.output(),
          linuxFxVersion: myImage.imageName.apply((name) => 'DOCKER|$name'),
        ).output(),
        httpsOnly: true.output(),
      ),
    );

    final helloEndpoint = helloApp.defaultHostName.apply(
      (hostname) => 'https://$hostname/hello',
    );
    final getStartedEndpoint = getStartedApp.defaultHostName.apply(
      (hostname) => 'https://$hostname',
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'helloEndpoint': helloEndpoint,
      'getStartedEndpoint': getStartedEndpoint,
    });
  }
}
