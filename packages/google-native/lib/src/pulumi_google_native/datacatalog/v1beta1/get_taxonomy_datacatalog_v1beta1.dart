import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_taxonomy_datacatalog_v1beta1_args.dart';
import 'get_taxonomy_datacatalog_v1beta1_result.dart';

/// Gets a taxonomy.
Future<GetTaxonomyDatacatalogV1beta1Result> getTaxonomyDatacatalogV1beta1(
  GetTaxonomyDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyDatacatalogV1beta1Result.fromMap(result);
}
