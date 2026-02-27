import 'package:pulumi/pulumi.dart';
import 'get_plan_args2.dart';
import 'get_plan_result2.dart';

/// Use this data source to get information on an existing backup plan.
Future<GetPlanResult2> getPlan2(
  GetPlanArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getPlan:getPlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPlanResult2.fromMap(result);
}
