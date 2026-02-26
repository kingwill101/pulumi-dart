import 'package:pulumi/pulumi.dart';
import 'get_taxonomy_iam_policy_args2.dart';
import 'get_taxonomy_iam_policy_result2.dart';

/// Gets the IAM policy for a taxonomy or a policy tag.
Future<GetTaxonomyIamPolicyResult2> getTaxonomyIamPolicy2(
  GetTaxonomyIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyIamPolicyResult2.fromMap(result);
}
