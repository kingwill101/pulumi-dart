import 'package:pulumi/pulumi.dart';
import 'get_fhir_store_iam_policy_args.dart';
import 'get_fhir_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare FHIR store.
///
/// ## example
Future<GetFhirStoreIamPolicyResult> getFhirStoreIamPolicy(
  GetFhirStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getFhirStoreIamPolicy:getFhirStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFhirStoreIamPolicyResult.fromMap(result);
}
