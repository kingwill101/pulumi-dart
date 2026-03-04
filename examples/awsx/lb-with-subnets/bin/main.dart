import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_ts_lb_with_subnets/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.TsLbWithSubnetsStack());
}
