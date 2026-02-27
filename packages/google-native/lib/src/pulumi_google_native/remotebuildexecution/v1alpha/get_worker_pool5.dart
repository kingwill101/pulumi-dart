import 'package:pulumi/pulumi.dart' hide Config;
import 'get_worker_pool_args5.dart';
import 'get_worker_pool_result5.dart';

/// Returns the specified worker pool.
Future<GetWorkerPoolResult5> getWorkerPool5(
  GetWorkerPoolArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:remotebuildexecution/v1alpha:getWorkerPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult5.fromMap(result);
}
