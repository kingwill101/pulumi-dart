import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_profile_args.dart';
import 'get_instance_profile_result.dart';

/// This data source can be used to fetch information about a specific
/// IAM instance profile. By using this data source, you can reference IAM
/// instance profile properties without having to hard code ARNs as input.
Future<GetInstanceProfileResult> getInstanceProfile(
  GetInstanceProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getInstanceProfile:getInstanceProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceProfileResult.fromMap(result);
}
