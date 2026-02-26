import 'package:pulumi/pulumi.dart';
import 'get_dashboard_args.dart';
import 'get_dashboard_result.dart';

/// Fetches a specific dashboard.This method requires the monitoring.dashboards.get permission on the specified dashboard. For more information, see Cloud Identity and Access Management (https://cloud.google.com/iam).
Future<GetDashboardResult> getDashboard(
  GetDashboardArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v1:getDashboard',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDashboardResult.fromMap(result);
}
