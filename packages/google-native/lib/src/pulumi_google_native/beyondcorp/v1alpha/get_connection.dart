import 'package:pulumi/pulumi.dart';
import 'get_connection_args.dart';
import 'get_connection_result.dart';

/// Gets details of a single Connection.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}
