import 'package:pulumi/pulumi.dart' hide Config;
import 'get_worker_pool_args.dart';
import 'get_worker_pool_result.dart';

/// Returns details of a `WorkerPool`.
Future<GetWorkerPoolResult> getWorkerPool(
  GetWorkerPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getWorkerPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult.fromMap(result);
}
