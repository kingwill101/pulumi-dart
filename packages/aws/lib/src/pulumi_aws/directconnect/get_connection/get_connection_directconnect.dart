import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_directconnect_args.dart';
import 'get_connection_directconnect_result.dart';

/// Retrieve information about a Direct Connect Connection.
Future<GetConnectionDirectconnectResult> getConnectionDirectconnect(
  GetConnectionDirectconnectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getConnection:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionDirectconnectResult.fromMap(result);
}
