import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_taxonomy_args.dart';
import 'get_taxonomy_result.dart';

/// Gets a taxonomy.
Future<GetTaxonomyResult> getTaxonomy(
  GetTaxonomyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getTaxonomy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyResult.fromMap(result);
}
