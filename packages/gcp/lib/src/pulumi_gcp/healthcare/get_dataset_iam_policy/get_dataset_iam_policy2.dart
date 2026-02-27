import 'package:pulumi/pulumi.dart';
import 'get_dataset_iam_policy_args2.dart';
import 'get_dataset_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare dataset.
///
/// ## example
Future<GetDatasetIamPolicyResult2> getDatasetIamPolicy2(
  GetDatasetIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getDatasetIamPolicy:getDatasetIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetIamPolicyResult2.fromMap(result);
}
