import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_vpc_nodejs_specific_vpc_layout/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.VpcNodejsSpecificVpcLayoutStack());
}
