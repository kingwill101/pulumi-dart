import 'package:pulumi/pulumi.dart';
import 'get_tag_key_iam_policy_args.dart';
import 'get_tag_key_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tagkey
Future<GetTagKeyIamPolicyResult> getTagKeyIamPolicy(
  GetTagKeyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagKeyIamPolicy:getTagKeyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagKeyIamPolicyResult.fromMap(result);
}
