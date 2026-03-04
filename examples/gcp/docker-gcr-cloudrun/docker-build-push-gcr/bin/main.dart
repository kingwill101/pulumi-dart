import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:gcp_dart_docker_gcr_build/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.DockerBuildPushStack());
}
