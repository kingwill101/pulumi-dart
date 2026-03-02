import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:aws_dart_eks_minimal/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.EksMinimalStack());
}
