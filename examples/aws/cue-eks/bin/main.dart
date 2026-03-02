import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:aws_dart_cue_eks/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.CueEksStack());
}
