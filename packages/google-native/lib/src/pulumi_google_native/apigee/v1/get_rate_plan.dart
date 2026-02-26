import 'package:pulumi/pulumi.dart';
import 'get_rate_plan_args.dart';
import 'get_rate_plan_result.dart';

/// Gets the details of a rate plan.
Future<GetRatePlanResult> getRatePlan(
  GetRatePlanArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getRatePlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRatePlanResult.fromMap(result);
}
