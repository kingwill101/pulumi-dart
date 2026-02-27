import 'package:pulumi/pulumi.dart';
import 'get_policy_store_args.dart';
import 'get_policy_store_result.dart';

/// Data source for managing an AWS Verified Permissions Policy Store.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPolicyStoreResult> getPolicyStore(
  GetPolicyStoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:verifiedpermissions/getPolicyStore:getPolicyStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyStoreResult.fromMap(result);
}
