import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args6.dart';
import 'get_instance_iam_policy_result6.dart';

/// Retrieves the current IAM policy data for a Spanner instance.
///
/// ## example
Future<GetInstanceIamPolicyResult6> getInstanceIamPolicy6(
  GetInstanceIamPolicyArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult6.fromMap(result);
}
