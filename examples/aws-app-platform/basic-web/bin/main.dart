import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:aws_app_platform_basic_web/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.BasicWebStack());
}

