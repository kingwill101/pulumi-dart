import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:gcp_faas_binary_upload/main.dart';

Future<void> main() async {
  await pulumi.Deployment.run(() => BinaryUploadStack());
}
