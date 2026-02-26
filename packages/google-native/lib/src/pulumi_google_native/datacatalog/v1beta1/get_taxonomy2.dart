import 'package:pulumi/pulumi.dart';
import 'get_taxonomy_args2.dart';
import 'get_taxonomy_result2.dart';

/// Gets a taxonomy.
Future<GetTaxonomyResult2> getTaxonomy2(
  GetTaxonomyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getTaxonomy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyResult2.fromMap(result);
}
