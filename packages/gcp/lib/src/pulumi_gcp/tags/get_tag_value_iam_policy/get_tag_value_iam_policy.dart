import 'package:pulumi/pulumi.dart';
import 'get_tag_value_iam_policy_args.dart';
import 'get_tag_value_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tagvalue
Future<GetTagValueIamPolicyResult> getTagValueIamPolicy(
  GetTagValueIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagValueIamPolicy:getTagValueIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagValueIamPolicyResult.fromMap(result);
}
