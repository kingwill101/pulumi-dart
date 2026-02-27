import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_report_plan_args.dart';
import 'get_report_plan_result.dart';

/// Use this data source to get information on an existing backup report plan.
Future<GetReportPlanResult> getReportPlan(
  GetReportPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getReportPlan:getReportPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportPlanResult.fromMap(result);
}
