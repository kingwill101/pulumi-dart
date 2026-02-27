import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_cloudbuild_v1beta1_args.dart';
import 'get_worker_pool_cloudbuild_v1beta1_result.dart';

/// Returns details of a `WorkerPool`.
Future<GetWorkerPoolCloudbuildV1beta1Result> getWorkerPoolCloudbuildV1beta1(
  GetWorkerPoolCloudbuildV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1beta1:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolCloudbuildV1beta1Result.fromMap(result);
}
