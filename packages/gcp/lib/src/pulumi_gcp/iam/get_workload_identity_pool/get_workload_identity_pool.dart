import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_args.dart';
import 'get_workload_identity_pool_result.dart';

/// Get a IAM workload identity pool from Google Cloud by its id.
/// > **Note:** The following resource requires the Beta IAM role `roles/iam.workloadIdentityPoolAdmin` in order to succeed. `OWNER` and `EDITOR` roles do not include the necessary permissions.
Future<GetWorkloadIdentityPoolResult> getWorkloadIdentityPool(
  GetWorkloadIdentityPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getWorkloadIdentityPool:getWorkloadIdentityPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadIdentityPoolResult.fromMap(result);
}
