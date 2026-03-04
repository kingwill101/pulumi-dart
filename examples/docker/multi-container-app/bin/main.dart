import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:docker_dart_multi_container_app/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.MultiContainerAppStack());
}
