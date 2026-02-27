import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_plan_args.dart';
import 'get_response_plan_result.dart';

/// Use this data source to manage a response plan in AWS Systems Manager Incident Manager.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetResponsePlanResult> getResponsePlan(
  GetResponsePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmincidents/getResponsePlan:getResponsePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResponsePlanResult.fromMap(result);
}
