import 'package:pulumi/pulumi.dart';
import 'get_iceberg_catalog_iam_policy_args.dart';
import 'get_iceberg_catalog_iam_policy_result.dart';

/// Retrieves the current IAM policy data for icebergcatalog
Future<GetIcebergCatalogIamPolicyResult> getIcebergCatalogIamPolicy(
  GetIcebergCatalogIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:biglake/getIcebergCatalogIamPolicy:getIcebergCatalogIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIcebergCatalogIamPolicyResult.fromMap(result);
}
