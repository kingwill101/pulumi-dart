import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_vpc_nodejs_vpc_subnets_with_tags/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.VpcNodejsVpcSubnetsWithTagsStack());
}
