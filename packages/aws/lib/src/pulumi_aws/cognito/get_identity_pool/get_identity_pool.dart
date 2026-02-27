import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_identity_pool_args.dart';
import 'get_identity_pool_result.dart';

/// Data source for managing an AWS Cognito Identity Pool.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetIdentityPoolResult> getIdentityPool(
  GetIdentityPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getIdentityPool:getIdentityPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIdentityPoolResult.fromMap(result);
}
