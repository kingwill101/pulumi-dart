import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:aws_faas_basic_url/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.BasicUrlStack());
}
