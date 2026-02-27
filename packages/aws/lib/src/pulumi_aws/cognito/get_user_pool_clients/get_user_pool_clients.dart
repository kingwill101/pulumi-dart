import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_clients_args.dart';
import 'get_user_pool_clients_result.dart';

/// Use this data source to get a list of Cognito user pools clients for a Cognito IdP user pool.
Future<GetUserPoolClientsResult> getUserPoolClients(
  GetUserPoolClientsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cognito/getUserPoolClients:getUserPoolClients',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserPoolClientsResult.fromMap(result);
}
