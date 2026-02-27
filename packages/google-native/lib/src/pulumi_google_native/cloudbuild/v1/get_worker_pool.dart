import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_args.dart';
import 'get_worker_pool_result.dart';

/// Returns details of a `WorkerPool`.
Future<GetWorkerPoolResult> getWorkerPool(
  GetWorkerPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult.fromMap(result);
}
