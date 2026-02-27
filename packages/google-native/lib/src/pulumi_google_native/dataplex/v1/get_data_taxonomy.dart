import 'package:pulumi/pulumi.dart' hide Config;
import 'get_data_taxonomy_args.dart';
import 'get_data_taxonomy_result.dart';

/// Retrieves a DataTaxonomy resource.
Future<GetDataTaxonomyResult> getDataTaxonomy(
  GetDataTaxonomyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataTaxonomy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataTaxonomyResult.fromMap(result);
}
