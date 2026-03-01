import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_vpc_result.dart';

/// [NOT YET IMPLEMENTED] Get the Default VPC for a region.
/// [options] Invoke options controlling this call.
Future<GetDefaultVpcResult> getDefaultVpc(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'awsx:ec2:getDefaultVpc',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultVpcResult.fromMap(result);
}
