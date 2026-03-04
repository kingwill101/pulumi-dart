import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_vpc_nodejs_vpc_ipam_ipv4_auto_cidrblock_with_specs/main.dart'
    as app;

Future<void> main() async {
  await pulumi.Deployment.run(
    () => app.VpcNodejsVpcIpamIpv4AutoCidrblockWithSpecsStack(),
  );
}
