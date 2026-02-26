import 'package:pulumi/pulumi.dart';
import 'get_default_vpc_result.dart';

/// [NOT YET IMPLEMENTED] Get the Default VPC for a region.
Future<GetDefaultVpcResult> getDefaultVpc({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'awsx:ec2:getDefaultVpc',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetDefaultVpcResult.fromMap(result);
}
