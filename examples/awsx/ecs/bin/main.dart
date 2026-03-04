import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_ecs_nodejs/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.EcsNodejsStack());
}
