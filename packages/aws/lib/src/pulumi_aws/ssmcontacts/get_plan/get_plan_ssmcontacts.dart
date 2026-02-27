import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_ssmcontacts_args.dart';
import 'get_plan_ssmcontacts_result.dart';

/// Data source for managing a Plan of an AWS SSM Contact.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPlanSsmcontactsResult> getPlanSsmcontacts(
  GetPlanSsmcontactsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getPlan:getPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlanSsmcontactsResult.fromMap(result);
}
