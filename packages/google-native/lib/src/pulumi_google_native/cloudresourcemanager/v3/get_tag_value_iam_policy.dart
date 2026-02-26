import 'package:pulumi/pulumi.dart';
import 'get_tag_value_iam_policy_args.dart';
import 'get_tag_value_iam_policy_result.dart';

/// Gets the access control policy for a TagValue. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the TagValue's resource name. For example: `tagValues/1234`. The caller must have the `cloudresourcemanager.googleapis.com/tagValues.getIamPolicy` permission on the identified TagValue to get the access control policy.
Future<GetTagValueIamPolicyResult> getTagValueIamPolicy(
  GetTagValueIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getTagValueIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagValueIamPolicyResult.fromMap(result);
}
