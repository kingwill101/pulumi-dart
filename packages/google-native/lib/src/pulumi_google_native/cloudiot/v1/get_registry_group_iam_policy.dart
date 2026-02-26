import 'package:pulumi/pulumi.dart';
import 'get_registry_group_iam_policy_args.dart';
import 'get_registry_group_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegistryGroupIamPolicyResult> getRegistryGroupIamPolicy(
  GetRegistryGroupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getRegistryGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistryGroupIamPolicyResult.fromMap(result);
}
