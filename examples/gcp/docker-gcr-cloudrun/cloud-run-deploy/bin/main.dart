// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker/pulumi_docker.dart' as docker;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class CloudRunDeployStack extends pulumi.Stack {
  CloudRunDeployStack() {
    final gcpConfig = pulumi.Config('gcp');
    final location = gcpConfig.get('region') ?? 'us-central1';
    final project = gcpConfig.require('project');

    final config = pulumi.Config();
    final configFile = config.require('docker-config-file');

    final imageName = config.get('image-name') ?? 'ruby-app';

    final gcrDockerProvider = docker.providers.Docker(
      'gcr',
      args: docker.ProviderArgs(
        registryAuth: [
          docker.ProviderRegistryAuth(
            address: 'gcr.io',
            configFile: configFile,
          ),
        ],
      ),
    );

    final registryImage = pulumi.output(
      docker.getRegistryImage(
        docker.GetRegistryImageArgs(name: 'gcr.io/$project/$imageName:latest'),
      ),
    );

    final dockerImage = registryImage.apply(
      (image) => docker.RemoteImage(
        '$imageName-docker-image',
        args: docker.RemoteImageArgs(
          name: image.name,
          pullTriggers: [image.sha256Digest],
          keepLocally: true,
        ),
        options: pulumi.CustomResourceOptions(provider: gcrDockerProvider),
      ),
    );

    final truncatedSha = registryImage.apply(
      (image) => '$imageName-${image.sha256Digest.substring(8, 28)}',
    );

    final rubyService = gcp.cloudrun.Service(
      'ruby',
      args: gcp.cloudrun.ServiceArgs(
        location: location,
        name: truncatedSha,
        template: gcp.cloudrun.ServiceTemplate(
          spec: gcp.cloudrun.ServiceTemplateSpec(
            containers: [
              gcp.cloudrun.ServiceTemplateSpecContainer(
                image: dockerImage.apply((image) => image.name),
              ),
            ],
          ),
        ),
      ),
    );

    gcp.cloudrun.IamMember(
      'ruby-everyone',
      args: gcp.cloudrun.IamMemberArgs(
        service: rubyService.name,
        location: location,
        role: 'roles/run.invoker',
        member: 'allUsers',
      ),
    );

    registerOutputs({
      'rubyUrl': rubyService.statuses.apply(
        (statuses) => statuses.isNotEmpty ? statuses[0].url ?? '' : '',
      ),
    });
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => CloudRunDeployStack());
}
