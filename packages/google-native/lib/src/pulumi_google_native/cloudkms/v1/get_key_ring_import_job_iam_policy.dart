import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_ring_import_job_iam_policy_args.dart';
import 'get_key_ring_import_job_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetKeyRingImportJobIamPolicyResult> getKeyRingImportJobIamPolicy(
  GetKeyRingImportJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getKeyRingImportJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingImportJobIamPolicyResult.fromMap(result);
}
