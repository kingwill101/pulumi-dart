import 'package:pulumi/pulumi.dart';
import 'get_asset_iam_policy_args.dart';
import 'get_asset_iam_policy_result.dart';

/// Retrieves the current IAM policy data for asset
Future<GetAssetIamPolicyResult> getAssetIamPolicy(
  GetAssetIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getAssetIamPolicy:getAssetIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAssetIamPolicyResult.fromMap(result);
}
