import 'package:pulumi/pulumi.dart';
import 'get_dataset_fhir_store_iam_policy_args2.dart';
import 'get_dataset_fhir_store_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetFhirStoreIamPolicyResult2> getDatasetFhirStoreIamPolicy2(
  GetDatasetFhirStoreIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetFhirStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetFhirStoreIamPolicyResult2.fromMap(result);
}
