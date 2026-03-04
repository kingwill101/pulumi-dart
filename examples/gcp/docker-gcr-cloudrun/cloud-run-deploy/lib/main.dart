import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker/pulumi_docker.dart' as docker;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class CloudRunDeployStack extends pulumi.Stack {
  late final pulumi.Output<String> rubyUrl;

  CloudRunDeployStack() {
    final gcpConfig = pulumi.Config('gcp');
    final location = gcpConfig.get('region') ?? 'us-central1';
    final project = gcpConfig.require('project');

    final config = pulumi.Config();
    final configFile = config.require('docker-config-file');
    final imageName = config.get('image-name') ?? 'ruby-app';

    final gcrDockerProvider = docker.providers.Docker(
      'gcr',
      args: docker.providers.DockerArgs(
        registryAuth: [
          docker.index.ProviderRegistryAuth(
            address: 'gcr.io'.output(),
            configFile: configFile.output(),
          ),
        ].output(),
      ),
    );

    final registryImage = pulumi.output(
      docker.index.getRegistryImage(
        docker.index.GetRegistryImageArgs(
          name: 'gcr.io/$project/$imageName:latest'.output(),
        ),
      ),
    );

    final dockerImage = registryImage.apply(
      (image) => docker.index.RemoteImage(
        '$imageName-docker-image',
        args: docker.index.RemoteImageArgs(
          name: image.name,
          pullTriggers: image.sha256Digest.apply<List<String>>(
            (digest) => [digest],
          ),
          keepLocally: true.output(),
        ),
        options: pulumi.CustomResourceOptions(provider: gcrDockerProvider),
      ),
    );

    final truncatedSha = registryImage.apply<String>(
      (image) => '$imageName-${image.sha256Digest.substring(8, 28)}',
    );

    final rubyService = gcp.cloudrun.Service(
      'ruby',
      args: gcp.cloudrun.ServiceArgs(
        location: location.output(),
        name: truncatedSha,
        template: gcp.cloudrun
            .ServiceTemplate(
              spec: gcp.cloudrun
                  .ServiceTemplateSpec(
                    containers: [
                      gcp.cloudrun.ServiceTemplateSpecContainer(
                        image: dockerImage.apply((image) => image.name),
                      ),
                    ].output(),
                  )
                  .output(),
            )
            .output(),
      ),
    );

    gcp.cloudrun.IamMember(
      'ruby-everyone',
      args: gcp.cloudrun.IamMemberArgs(
        service: rubyService.name,
        location: location.output(),
        role: 'roles/run.invoker'.output(),
        member: 'allUsers'.output(),
      ),
    );

    rubyUrl = rubyService.statuses.apply(
      (statuses) => statuses.isNotEmpty ? statuses[0].url ?? '' : '',
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('rubyUrl', rubyUrl)];
  }
}
