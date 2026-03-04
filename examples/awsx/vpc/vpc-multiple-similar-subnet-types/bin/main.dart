import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_vpc_nodejs_vpc_multiple_similar_subnet_types/main.dart'
    as app;

Future<void> main() async {
  await pulumi.Deployment.run(
    () => app.VpcNodejsVpcMultipleSimilarSubnetTypesStack(),
  );
}
