import 'package:pulumi/pulumi.dart' hide Config;
import 'get_data_taxonomy_attribute_iam_policy_args.dart';
import 'get_data_taxonomy_attribute_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDataTaxonomyAttributeIamPolicyResult>
    getDataTaxonomyAttributeIamPolicy(
  GetDataTaxonomyAttributeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomyAttributeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataTaxonomyAttributeIamPolicyResult.fromMap(result);
}
