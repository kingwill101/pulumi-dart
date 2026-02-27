import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_remotebuildexecution_v1alpha_args.dart';
import 'get_worker_pool_remotebuildexecution_v1alpha_result.dart';

/// Returns the specified worker pool.
Future<GetWorkerPoolRemotebuildexecutionV1alphaResult>
    getWorkerPoolRemotebuildexecutionV1alpha(
  GetWorkerPoolRemotebuildexecutionV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:remotebuildexecution/v1alpha:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolRemotebuildexecutionV1alphaResult.fromMap(result);
}
