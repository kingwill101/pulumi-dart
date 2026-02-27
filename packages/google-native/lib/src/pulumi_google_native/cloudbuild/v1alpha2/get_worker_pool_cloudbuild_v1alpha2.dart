import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_cloudbuild_v1alpha2_args.dart';
import 'get_worker_pool_cloudbuild_v1alpha2_result.dart';

/// Returns details of a `WorkerPool`.
Future<GetWorkerPoolCloudbuildV1alpha2Result> getWorkerPoolCloudbuildV1alpha2(
  GetWorkerPoolCloudbuildV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v1alpha2:getWorkerPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolCloudbuildV1alpha2Result.fromMap(result);
}
