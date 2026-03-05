import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:aws_faas_zip_s3/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.ZipS3Stack());
}
