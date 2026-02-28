import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_worker_pool_args.dart';
import 'get_worker_pool_result.dart';

/// Returns the specified instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_remotebuildexecution_v1alpha_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:remotebuildexecution/v1alpha:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Returns the specified worker pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_remotebuildexecution_v1alpha_get_worker_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkerPoolResult> getWorkerPool(
  GetWorkerPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:remotebuildexecution/v1alpha:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult.fromMap(result);
}
