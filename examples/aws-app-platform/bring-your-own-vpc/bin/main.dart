import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:aws_app_platform_bring_your_own_vpc/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.BringYourOwnVpcStack());
}

