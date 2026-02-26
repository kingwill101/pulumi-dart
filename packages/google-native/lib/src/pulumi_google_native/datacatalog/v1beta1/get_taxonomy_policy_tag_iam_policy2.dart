import 'package:pulumi/pulumi.dart';
import 'get_taxonomy_policy_tag_iam_policy_args2.dart';
import 'get_taxonomy_policy_tag_iam_policy_result2.dart';

/// Gets the IAM policy for a taxonomy or a policy tag.
Future<GetTaxonomyPolicyTagIamPolicyResult2> getTaxonomyPolicyTagIamPolicy2(
  GetTaxonomyPolicyTagIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomyPolicyTagIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyPolicyTagIamPolicyResult2.fromMap(result);
}
