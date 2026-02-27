import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_args.dart';
import 'get_plan_result.dart';

/// Data source for managing an Amazon ARC Region Switch plan.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPlanResult> getPlan(
  GetPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:arcregionswitch/getPlan:getPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlanResult.fromMap(result);
}
