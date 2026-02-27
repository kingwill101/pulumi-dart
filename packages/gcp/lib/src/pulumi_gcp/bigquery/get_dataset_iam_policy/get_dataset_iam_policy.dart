import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_iam_policy_args.dart';
import 'get_dataset_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a BigQuery dataset.
///
/// ## example
Future<GetDatasetIamPolicyResult> getDatasetIamPolicy(
  GetDatasetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDatasetIamPolicy:getDatasetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetIamPolicyResult.fromMap(result);
}
