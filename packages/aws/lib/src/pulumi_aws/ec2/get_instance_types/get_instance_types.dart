import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_args.dart';
import 'get_instance_types_result.dart';

/// Information about EC2 Instance Types.
Future<GetInstanceTypesResult> getInstanceTypes(
  GetInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceTypes:getInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypesResult.fromMap(result);
}
