import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rate_plan_args.dart';
import 'get_rate_plan_result.dart';

/// Gets the details of a rate plan.
Future<GetRatePlanResult> getRatePlan(
  GetRatePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getRatePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRatePlanResult.fromMap(result);
}
