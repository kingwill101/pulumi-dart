import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_glossary_iam_policy_args.dart';
import 'get_glossary_iam_policy_result.dart';

/// Retrieves the current IAM policy data for glossary
Future<GetGlossaryIamPolicyResult> getGlossaryIamPolicy(
  GetGlossaryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getGlossaryIamPolicy:getGlossaryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlossaryIamPolicyResult.fromMap(result);
}
