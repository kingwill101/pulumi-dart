import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_vpc_nodejs_default_args/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.VpcNodejsDefaultArgsStack());
}
