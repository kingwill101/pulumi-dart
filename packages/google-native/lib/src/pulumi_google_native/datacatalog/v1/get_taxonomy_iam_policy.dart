import 'package:pulumi/pulumi.dart';
import 'get_taxonomy_iam_policy_args.dart';
import 'get_taxonomy_iam_policy_result.dart';

/// Gets the IAM policy for a policy tag or a taxonomy.
Future<GetTaxonomyIamPolicyResult> getTaxonomyIamPolicy(
  GetTaxonomyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyIamPolicyResult.fromMap(result);
}
