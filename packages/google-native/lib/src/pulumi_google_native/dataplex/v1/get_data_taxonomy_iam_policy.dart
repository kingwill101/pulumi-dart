import 'package:pulumi/pulumi.dart';
import 'get_data_taxonomy_iam_policy_args.dart';
import 'get_data_taxonomy_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDataTaxonomyIamPolicyResult> getDataTaxonomyIamPolicy(
  GetDataTaxonomyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataTaxonomyIamPolicyResult.fromMap(result);
}
