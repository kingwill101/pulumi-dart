import 'package:pulumi/pulumi.dart';
import 'get_user_pool_client_args.dart';
import 'get_user_pool_client_result.dart';

/// Provides a Cognito User Pool Client resource.
Future<GetUserPoolClientResult> getUserPoolClient(
  GetUserPoolClientArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPoolClient:getUserPoolClient',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserPoolClientResult.fromMap(result);
}
