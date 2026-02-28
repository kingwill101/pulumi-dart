import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_args.dart';
import 'get_workload_assuredworkloads_v1beta1_args.dart';
import 'get_workload_assuredworkloads_v1beta1_result.dart';
import 'get_workload_result.dart';

/// Gets Assured Workload associated with a CRM Node
/// [args] Arguments passed to this invoke. {@macro pulumi_assuredworkloads_v1_get_workload_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadResult> getWorkload(
  GetWorkloadArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:assuredworkloads/v1:getWorkload',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadResult.fromMap(result);
}

/// Gets Assured Workload associated with a CRM Node
/// [args] Arguments passed to this invoke. {@macro pulumi_assuredworkloads_v1beta1_get_workload_assuredworkloads_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadAssuredworkloadsV1beta1Result> getWorkloadAssuredworkloadsV1beta1(
  GetWorkloadAssuredworkloadsV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:assuredworkloads/v1beta1:getWorkload',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadAssuredworkloadsV1beta1Result.fromMap(result);
}
