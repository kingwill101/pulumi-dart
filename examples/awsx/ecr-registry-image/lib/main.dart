import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_docker/index.dart' as docker;

class TsEcrRegistryImageStack extends pulumi.Stack {
  late final pulumi.Output<String?> repositoryName;
  late final pulumi.Output<String> imageId;
  late final pulumi.Output<String?> latestImageDigest;

  TsEcrRegistryImageStack() {
    final repository = awsx.ecr.Repository(
      'repository',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.input()),
    );

    final config = pulumi.Config();
    final message = config.require('message');

    final localImage = docker.Image(
      'local-image',
      args: docker.ImageArgs(
        build: docker.DockerBuild(
          context: 'app'.input(),
          args: {'message': message}.input(),
        ).input(),
        imageName: 'my-awesome-image:test'.input(),
        skipPush: true.input(),
      ),
    );

    final latestImage = awsx.ecr.RegistryImage(
      'image-name',
      args: awsx.ecr.RegistryImageArgs(
        repositoryUrl: repository.url.apply<String>((url) => url ?? ''),
        sourceImage: localImage.imageName,
        keepRemotely: true.input(),
      ),
    );

    awsx.ecr.RegistryImage(
      'tagged-image',
      args: awsx.ecr.RegistryImageArgs(
        repositoryUrl: repository.url.apply<String>((url) => url ?? ''),
        sourceImage: localImage.imageName,
        tag: 'v1.0.0'.input(),
        keepRemotely: true.input(),
      ),
    );

    awsx.ecr.RegistryImage(
      'digest',
      args: awsx.ecr.RegistryImageArgs(
        repositoryUrl: repository.url.apply<String>((url) => url ?? ''),
        sourceImage: localImage.repoDigest,
        tag: 'test'.input(),
        keepRemotely: true.input(),
      ),
    );

    repositoryName = repository.repository.apply<String?>((repo) => repo?.name);
    imageId = localImage.repoDigest;
    latestImageDigest = latestImage.image.apply<String?>(
      (image) => image?.sha256Digest,
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('repositoryName', repositoryName),
      pulumi.OutputProperty('imageId', imageId),
      pulumi.OutputProperty('latestImageDigest', latestImageDigest),
    ];
  }
}
