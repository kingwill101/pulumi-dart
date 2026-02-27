import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_args.dart';
import 'get_user_pool_result.dart';

/// Data source for managing an AWS Cognito User Pool.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetUserPoolResult> getUserPool(
  GetUserPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPool:getUserPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserPoolResult.fromMap(result);
}
