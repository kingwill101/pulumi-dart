import 'package:pulumi/pulumi.dart';
import 'get_dataset_dicom_store_iam_policy_args.dart';
import 'get_dataset_dicom_store_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetDicomStoreIamPolicyResult> getDatasetDicomStoreIamPolicy(
  GetDatasetDicomStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getDatasetDicomStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetDicomStoreIamPolicyResult.fromMap(result);
}
