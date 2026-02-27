import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_args.dart';
import 'get_instance_type_result.dart';

/// Get characteristics for a single EC2 Instance Type.
Future<GetInstanceTypeResult> getInstanceType(
  GetInstanceTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceType:getInstanceType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeResult.fromMap(result);
}
