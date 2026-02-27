import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_taxonomy_policy_tag_iam_policy_args.dart';
import 'get_taxonomy_policy_tag_iam_policy_result.dart';

/// Gets the IAM policy for a policy tag or a taxonomy.
Future<GetTaxonomyPolicyTagIamPolicyResult> getTaxonomyPolicyTagIamPolicy(
  GetTaxonomyPolicyTagIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomyPolicyTagIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyPolicyTagIamPolicyResult.fromMap(result);
}
