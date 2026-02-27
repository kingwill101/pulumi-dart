import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_client_args.dart';
import 'get_user_pool_client_result.dart';

/// Provides a Cognito User Pool Client resource.
Future<GetUserPoolClientResult> getUserPoolClient(
  GetUserPoolClientArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPoolClient:getUserPoolClient',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserPoolClientResult.fromMap(result);
}
