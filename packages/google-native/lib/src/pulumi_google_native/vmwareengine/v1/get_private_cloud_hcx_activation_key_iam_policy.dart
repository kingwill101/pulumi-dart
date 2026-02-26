import 'package:pulumi/pulumi.dart';
import 'get_private_cloud_hcx_activation_key_iam_policy_args.dart';
import 'get_private_cloud_hcx_activation_key_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPrivateCloudHcxActivationKeyIamPolicyResult>
    getPrivateCloudHcxActivationKeyIamPolicy(
  GetPrivateCloudHcxActivationKeyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloudHcxActivationKeyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudHcxActivationKeyIamPolicyResult.fromMap(result);
}
