import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_ts_lb_attach_ec2/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.TsLbAttachEc2Stack());
}
