import 'package:pulumi/pulumi.dart';
import 'get_identity_pool_args.dart';
import 'get_identity_pool_result.dart';

/// Data source for managing an AWS Cognito Identity Pool.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetIdentityPoolResult> getIdentityPool(
  GetIdentityPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getIdentityPool:getIdentityPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIdentityPoolResult.fromMap(result);
}
