import 'package:pulumi/pulumi.dart' hide Config;
import 'get_storage_pool_iam_policy_args.dart';
import 'get_storage_pool_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetStoragePoolIamPolicyResult> getStoragePoolIamPolicy(
  GetStoragePoolIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getStoragePoolIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolIamPolicyResult.fromMap(result);
}
