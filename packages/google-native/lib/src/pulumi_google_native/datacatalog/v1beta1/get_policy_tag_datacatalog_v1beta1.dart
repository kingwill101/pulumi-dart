import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_tag_datacatalog_v1beta1_args.dart';
import 'get_policy_tag_datacatalog_v1beta1_result.dart';

/// Gets a policy tag.
Future<GetPolicyTagDatacatalogV1beta1Result> getPolicyTagDatacatalogV1beta1(
  GetPolicyTagDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getPolicyTag',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagDatacatalogV1beta1Result.fromMap(result);
}
