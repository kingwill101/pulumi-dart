import 'package:pulumi/pulumi.dart';
import 'get_savings_plan_args.dart';
import 'get_savings_plan_result.dart';

/// Use this data source to get information on an existing AWS Savings Plan.
Future<GetSavingsPlanResult> getSavingsPlan(
  GetSavingsPlanArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:savingsplans/getSavingsPlan:getSavingsPlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSavingsPlanResult.fromMap(result);
}
