import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_connectors_v1_args.dart';
import 'get_connection_connectors_v1_result.dart';

/// Gets details of a single Connection.
Future<GetConnectionConnectorsV1Result> getConnectionConnectorsV1(
  GetConnectionConnectorsV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionConnectorsV1Result.fromMap(result);
}
