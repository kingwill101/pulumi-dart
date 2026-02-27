import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_management_server_args.dart';
import 'get_management_server_result.dart';

/// Get information about a Google Backup DR Management server.
Future<GetManagementServerResult> getManagementServer(
  GetManagementServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getManagementServer:getManagementServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementServerResult.fromMap(result);
}
