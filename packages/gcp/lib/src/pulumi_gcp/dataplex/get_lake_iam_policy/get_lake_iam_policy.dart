import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lake_iam_policy_args.dart';
import 'get_lake_iam_policy_result.dart';

/// Retrieves the current IAM policy data for lake
Future<GetLakeIamPolicyResult> getLakeIamPolicy(
  GetLakeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getLakeIamPolicy:getLakeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeIamPolicyResult.fromMap(result);
}
