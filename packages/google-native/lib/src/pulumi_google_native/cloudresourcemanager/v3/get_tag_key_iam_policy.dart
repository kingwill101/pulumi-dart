import 'package:pulumi/pulumi.dart' hide Config;
import 'get_tag_key_iam_policy_args.dart';
import 'get_tag_key_iam_policy_result.dart';

/// Gets the access control policy for a TagKey. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the TagKey's resource name. For example, "tagKeys/1234". The caller must have `cloudresourcemanager.googleapis.com/tagKeys.getIamPolicy` permission on the specified TagKey.
Future<GetTagKeyIamPolicyResult> getTagKeyIamPolicy(
  GetTagKeyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getTagKeyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagKeyIamPolicyResult.fromMap(result);
}
