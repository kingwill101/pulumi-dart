import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_taxonomy_iam_policy_datacatalog_v1beta1_args.dart';
import 'get_taxonomy_iam_policy_datacatalog_v1beta1_result.dart';

/// Gets the IAM policy for a taxonomy or a policy tag.
Future<GetTaxonomyIamPolicyDatacatalogV1beta1Result>
    getTaxonomyIamPolicyDatacatalogV1beta1(
  GetTaxonomyIamPolicyDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyIamPolicyDatacatalogV1beta1Result.fromMap(result);
}
