import 'package:pulumi/pulumi.dart';
import 'get_worker_pool_args.dart';
import 'get_worker_pool_result.dart';

/// Get information about a Google Cloud Run v2 Worker Pool. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
Future<GetWorkerPoolResult> getWorkerPool(
  GetWorkerPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getWorkerPool:getWorkerPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult.fromMap(result);
}
