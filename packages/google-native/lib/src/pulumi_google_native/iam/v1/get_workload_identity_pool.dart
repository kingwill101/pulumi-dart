import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workload_identity_pool_args.dart';
import 'get_workload_identity_pool_result.dart';

/// Gets an individual WorkloadIdentityPool.
Future<GetWorkloadIdentityPoolResult> getWorkloadIdentityPool(
  GetWorkloadIdentityPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkloadIdentityPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolResult.fromMap(result);
}
