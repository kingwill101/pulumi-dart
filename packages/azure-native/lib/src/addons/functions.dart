import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_support_plan_type_args.dart';
import 'get_support_plan_type_result.dart';

/// Returns whether or not the canonical support plan of type {type} is enabled for the subscription.
///
/// Uses Azure REST API version 2018-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_addons_get_support_plan_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSupportPlanTypeResult> getSupportPlanType(
  GetSupportPlanTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:addons:getSupportPlanType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSupportPlanTypeResult.fromMap(result);
}
