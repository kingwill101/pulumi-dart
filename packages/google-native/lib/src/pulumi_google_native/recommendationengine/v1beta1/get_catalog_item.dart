import 'package:pulumi/pulumi.dart' hide Config;
import 'get_catalog_item_args.dart';
import 'get_catalog_item_result.dart';

/// Gets a specific catalog item.
Future<GetCatalogItemResult> getCatalogItem(
  GetCatalogItemArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:recommendationengine/v1beta1:getCatalogItem',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCatalogItemResult.fromMap(result);
}
