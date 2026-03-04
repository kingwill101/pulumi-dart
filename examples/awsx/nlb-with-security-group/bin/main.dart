import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_ts_nlb_with_security_group/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.TsNlbWithSecurityGroupStack());
}
