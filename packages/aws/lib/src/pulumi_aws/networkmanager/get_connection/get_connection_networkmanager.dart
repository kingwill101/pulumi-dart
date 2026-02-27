import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_networkmanager_args.dart';
import 'get_connection_networkmanager_result.dart';

/// Provides details about an existing Network Manager connection.
Future<GetConnectionNetworkmanagerResult> getConnectionNetworkmanager(
  GetConnectionNetworkmanagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getConnection:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionNetworkmanagerResult.fromMap(result);
}
