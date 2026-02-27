import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_taxonomy_args.dart';
import 'get_data_taxonomy_result.dart';

/// Retrieves a DataTaxonomy resource.
Future<GetDataTaxonomyResult> getDataTaxonomy(
  GetDataTaxonomyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataTaxonomyResult.fromMap(result);
}
