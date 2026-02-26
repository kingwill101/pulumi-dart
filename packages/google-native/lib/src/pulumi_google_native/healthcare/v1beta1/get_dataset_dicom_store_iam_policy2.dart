import 'package:pulumi/pulumi.dart';
import 'get_dataset_dicom_store_iam_policy_args2.dart';
import 'get_dataset_dicom_store_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDatasetDicomStoreIamPolicyResult2> getDatasetDicomStoreIamPolicy2(
  GetDatasetDicomStoreIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getDatasetDicomStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetDicomStoreIamPolicyResult2.fromMap(result);
}
