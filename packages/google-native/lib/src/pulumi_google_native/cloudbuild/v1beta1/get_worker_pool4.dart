import 'package:pulumi/pulumi.dart' hide Config;
import 'get_worker_pool_args4.dart';
import 'get_worker_pool_result4.dart';

/// Returns details of a `WorkerPool`.
Future<GetWorkerPoolResult4> getWorkerPool4(
  GetWorkerPoolArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1beta1:getWorkerPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult4.fromMap(result);
}
