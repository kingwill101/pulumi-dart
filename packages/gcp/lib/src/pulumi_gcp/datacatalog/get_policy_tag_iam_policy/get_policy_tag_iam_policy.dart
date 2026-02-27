import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_tag_iam_policy_args.dart';
import 'get_policy_tag_iam_policy_result.dart';

/// Retrieves the current IAM policy data for policytag
Future<GetPolicyTagIamPolicyResult> getPolicyTagIamPolicy(
  GetPolicyTagIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getPolicyTagIamPolicy:getPolicyTagIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagIamPolicyResult.fromMap(result);
}
