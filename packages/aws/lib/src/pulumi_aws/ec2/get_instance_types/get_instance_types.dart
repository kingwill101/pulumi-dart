import 'package:pulumi/pulumi.dart';
import 'get_instance_types_args.dart';
import 'get_instance_types_result.dart';

/// Information about EC2 Instance Types.
Future<GetInstanceTypesResult> getInstanceTypes(
  GetInstanceTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceTypes:getInstanceTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypesResult.fromMap(result);
}
