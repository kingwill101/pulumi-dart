import 'package:pulumi/pulumi.dart';
import 'get_dicom_store_iam_policy_args.dart';
import 'get_dicom_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare DICOM store.
///
/// ## example
Future<GetDicomStoreIamPolicyResult> getDicomStoreIamPolicy(
  GetDicomStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getDicomStoreIamPolicy:getDicomStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDicomStoreIamPolicyResult.fromMap(result);
}
