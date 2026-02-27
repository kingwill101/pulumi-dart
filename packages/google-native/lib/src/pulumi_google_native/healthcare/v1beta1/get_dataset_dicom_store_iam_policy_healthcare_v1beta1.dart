import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_dicom_store_iam_policy_healthcare_v1beta1_args.dart';
import 'get_dataset_dicom_store_iam_policy_healthcare_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetDicomStoreIamPolicyHealthcareV1beta1Result>
    getDatasetDicomStoreIamPolicyHealthcareV1beta1(
  GetDatasetDicomStoreIamPolicyHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetDicomStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetDicomStoreIamPolicyHealthcareV1beta1Result.fromMap(result);
}
