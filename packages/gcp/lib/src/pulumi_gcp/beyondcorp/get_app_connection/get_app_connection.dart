import 'package:pulumi/pulumi.dart';
import 'get_app_connection_args.dart';
import 'get_app_connection_result.dart';

/// Get information about a Google BeyondCorp App Connection.
Future<GetAppConnectionResult> getAppConnection(
  GetAppConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppConnection:getAppConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionResult.fromMap(result);
}
