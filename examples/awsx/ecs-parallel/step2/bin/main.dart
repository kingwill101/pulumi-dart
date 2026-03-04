import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_ecs_parallel_step2/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.EcsParallelStep2Stack());
}
