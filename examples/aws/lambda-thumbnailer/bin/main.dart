import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:aws_dart_lambda_thumbnailer/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.LambdaThumbnailerStack());
}
