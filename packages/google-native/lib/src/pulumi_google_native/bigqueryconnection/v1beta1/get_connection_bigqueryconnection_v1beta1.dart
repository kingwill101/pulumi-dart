import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_bigqueryconnection_v1beta1_args.dart';
import 'get_connection_bigqueryconnection_v1beta1_result.dart';

/// Returns specified connection.
Future<GetConnectionBigqueryconnectionV1beta1Result>
    getConnectionBigqueryconnectionV1beta1(
  GetConnectionBigqueryconnectionV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryconnection/v1beta1:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionBigqueryconnectionV1beta1Result.fromMap(result);
}
