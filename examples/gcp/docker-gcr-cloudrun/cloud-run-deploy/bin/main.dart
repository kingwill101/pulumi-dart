import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:gcp_dart_cloud_run_deploy/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.CloudRunDeployStack());
}
