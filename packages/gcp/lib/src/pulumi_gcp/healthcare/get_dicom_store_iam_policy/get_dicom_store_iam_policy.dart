import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dicom_store_iam_policy_args.dart';
import 'get_dicom_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare DICOM store.
///
/// ## example
Future<GetDicomStoreIamPolicyResult> getDicomStoreIamPolicy(
  GetDicomStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getDicomStoreIamPolicy:getDicomStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDicomStoreIamPolicyResult.fromMap(result);
}
