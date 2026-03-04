import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_vpc_nodejs_export_eip_tags/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.VpcNodejsExportEipTagsStack());
}
