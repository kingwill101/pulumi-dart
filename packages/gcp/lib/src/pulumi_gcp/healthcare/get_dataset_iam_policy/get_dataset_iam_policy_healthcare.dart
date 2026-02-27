import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_iam_policy_healthcare_args.dart';
import 'get_dataset_iam_policy_healthcare_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare dataset.
///
/// ## example
Future<GetDatasetIamPolicyHealthcareResult> getDatasetIamPolicyHealthcare(
  GetDatasetIamPolicyHealthcareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getDatasetIamPolicy:getDatasetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetIamPolicyHealthcareResult.fromMap(result);
}
