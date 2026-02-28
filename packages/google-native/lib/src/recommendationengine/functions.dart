import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_item_args.dart';
import 'get_catalog_item_result.dart';

/// Gets a specific catalog item.
/// [args] Arguments passed to this invoke. {@macro pulumi_recommendationengine_v1beta1_get_catalog_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCatalogItemResult> getCatalogItem(
  GetCatalogItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:recommendationengine/v1beta1:getCatalogItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCatalogItemResult.fromMap(result);
}
