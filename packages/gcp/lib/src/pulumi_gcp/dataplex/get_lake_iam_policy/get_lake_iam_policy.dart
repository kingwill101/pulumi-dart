import 'package:pulumi/pulumi.dart';
import 'get_lake_iam_policy_args.dart';
import 'get_lake_iam_policy_result.dart';

/// Retrieves the current IAM policy data for lake
Future<GetLakeIamPolicyResult> getLakeIamPolicy(
  GetLakeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getLakeIamPolicy:getLakeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLakeIamPolicyResult.fromMap(result);
}
