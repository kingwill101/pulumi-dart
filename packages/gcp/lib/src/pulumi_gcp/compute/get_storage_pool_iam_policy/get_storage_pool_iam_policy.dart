import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_pool_iam_policy_args.dart';
import 'get_storage_pool_iam_policy_result.dart';

/// Retrieves the current IAM policy data for storagepool
Future<GetStoragePoolIamPolicyResult> getStoragePoolIamPolicy(
  GetStoragePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getStoragePoolIamPolicy:getStoragePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolIamPolicyResult.fromMap(result);
}
