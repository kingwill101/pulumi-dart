import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:gcp_faas_basic_url/main.dart';

Future<void> main() async {
  await pulumi.Deployment.run(() => BasicUrlStack());
}
