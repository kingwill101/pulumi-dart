import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args2.dart';
import 'get_instance_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for instance
Future<GetInstanceIamPolicyResult2> getInstanceIamPolicy2(
  GetInstanceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult2.fromMap(result);
}
