import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:random_dart_cue/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.RandomCueStack());
}
