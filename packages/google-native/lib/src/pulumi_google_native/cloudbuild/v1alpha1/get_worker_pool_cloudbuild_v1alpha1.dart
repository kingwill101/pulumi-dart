import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_cloudbuild_v1alpha1_args.dart';
import 'get_worker_pool_cloudbuild_v1alpha1_result.dart';

/// Returns information about a `WorkerPool`.
Future<GetWorkerPoolCloudbuildV1alpha1Result> getWorkerPoolCloudbuildV1alpha1(
  GetWorkerPoolCloudbuildV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1alpha1:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolCloudbuildV1alpha1Result.fromMap(result);
}
