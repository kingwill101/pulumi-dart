import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_provider_args.dart';
import 'get_workload_identity_pool_provider_result.dart';

/// Get a IAM workload identity provider from Google Cloud by its id.
Future<GetWorkloadIdentityPoolProviderResult> getWorkloadIdentityPoolProvider(
  GetWorkloadIdentityPoolProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkloadIdentityPoolProvider:getWorkloadIdentityPoolProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolProviderResult.fromMap(result);
}
