import 'package:pulumi/pulumi.dart' hide Config;
import 'get_worker_pool_args3.dart';
import 'get_worker_pool_result3.dart';

/// Returns details of a `WorkerPool`.
Future<GetWorkerPoolResult3> getWorkerPool3(
  GetWorkerPoolArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1alpha2:getWorkerPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult3.fromMap(result);
}
