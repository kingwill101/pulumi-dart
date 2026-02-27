import 'package:pulumi/pulumi.dart';
import 'get_maintenance_windows_args.dart';
import 'get_maintenance_windows_result.dart';

/// Use this data source to get the window IDs of SSM maintenance windows.
Future<GetMaintenanceWindowsResult> getMaintenanceWindows(
  GetMaintenanceWindowsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getMaintenanceWindows:getMaintenanceWindows',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMaintenanceWindowsResult.fromMap(result);
}
