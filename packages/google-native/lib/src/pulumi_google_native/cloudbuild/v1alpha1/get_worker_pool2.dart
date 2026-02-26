import 'package:pulumi/pulumi.dart';
import 'get_worker_pool_args2.dart';
import 'get_worker_pool_result2.dart';

/// Returns information about a `WorkerPool`.
Future<GetWorkerPoolResult2> getWorkerPool2(
  GetWorkerPoolArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1alpha1:getWorkerPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult2.fromMap(result);
}
