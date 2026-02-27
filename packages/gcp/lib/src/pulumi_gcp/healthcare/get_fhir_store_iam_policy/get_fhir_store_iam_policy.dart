import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fhir_store_iam_policy_args.dart';
import 'get_fhir_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare FHIR store.
///
/// ## example
Future<GetFhirStoreIamPolicyResult> getFhirStoreIamPolicy(
  GetFhirStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getFhirStoreIamPolicy:getFhirStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFhirStoreIamPolicyResult.fromMap(result);
}
