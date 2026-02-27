import 'package:pulumi/pulumi.dart';
import 'get_policy_tag_iam_policy_args.dart';
import 'get_policy_tag_iam_policy_result.dart';

/// Retrieves the current IAM policy data for policytag
Future<GetPolicyTagIamPolicyResult> getPolicyTagIamPolicy(
  GetPolicyTagIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getPolicyTagIamPolicy:getPolicyTagIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagIamPolicyResult.fromMap(result);
}
