import 'package:pulumi/pulumi.dart';
import 'get_iam_policy_args2.dart';
import 'get_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for a folder.
///
/// ## example
Future<GetIamPolicyResult2> getIamPolicy2(
  GetIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:folder/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult2.fromMap(result);
}
