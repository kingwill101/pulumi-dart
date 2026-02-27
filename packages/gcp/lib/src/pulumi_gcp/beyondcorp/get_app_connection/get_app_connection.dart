import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connection_args.dart';
import 'get_app_connection_result.dart';

/// Get information about a Google BeyondCorp App Connection.
Future<GetAppConnectionResult> getAppConnection(
  GetAppConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppConnection:getAppConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionResult.fromMap(result);
}
