import 'package:pulumi/pulumi.dart';
import 'get_iam_policy_args4.dart';
import 'get_iam_policy_result4.dart';

/// Retrieves the current IAM policy data for a service account.
///
/// ## example
Future<GetIamPolicyResult4> getIamPolicy4(
  GetIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult4.fromMap(result);
}
