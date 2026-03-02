import 'package:pulumi_docker/pulumi_docker.dart' as docker;

void main() {
  docker.index.Image;
  docker.index.ImageArgs;
  docker.index.DockerBuild;
  docker.index.DockerBuildArgs;
  docker.index.GetRegistryImageArgs;
  docker.index.getRegistryImage;
  docker.providers.Docker;
  docker.providers.DockerArgs;
}
