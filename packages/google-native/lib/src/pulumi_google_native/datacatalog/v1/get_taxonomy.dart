import 'package:pulumi/pulumi.dart';
import 'get_taxonomy_args.dart';
import 'get_taxonomy_result.dart';

/// Gets a taxonomy.
Future<GetTaxonomyResult> getTaxonomy(
  GetTaxonomyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyResult.fromMap(result);
}
