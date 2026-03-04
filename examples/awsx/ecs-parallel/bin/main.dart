import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_ecs_parallel/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.EcsParallelStack());
}
