import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_source_iam_policy_args.dart';
import 'get_source_iam_policy_result.dart';

/// Retrieves the current IAM policy data for source
Future<GetSourceIamPolicyResult> getSourceIamPolicy(
  GetSourceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securitycenter/getSourceIamPolicy:getSourceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceIamPolicyResult.fromMap(result);
}
