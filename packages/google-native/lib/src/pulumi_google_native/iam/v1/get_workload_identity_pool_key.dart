import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_key_args.dart';
import 'get_workload_identity_pool_key_result.dart';

/// Gets an individual WorkloadIdentityPoolProviderKey.
Future<GetWorkloadIdentityPoolKeyResult> getWorkloadIdentityPoolKey(
  GetWorkloadIdentityPoolKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getWorkloadIdentityPoolKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolKeyResult.fromMap(result);
}
