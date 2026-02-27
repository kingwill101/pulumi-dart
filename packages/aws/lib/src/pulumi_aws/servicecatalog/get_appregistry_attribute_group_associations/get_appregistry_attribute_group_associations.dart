import 'package:pulumi/pulumi.dart';
import 'get_appregistry_attribute_group_associations_args.dart';
import 'get_appregistry_attribute_group_associations_result.dart';

/// Data source for managing AWS Service Catalog AppRegistry Attribute Group Associations.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetAppregistryAttributeGroupAssociationsResult>
    getAppregistryAttributeGroupAssociations(
  GetAppregistryAttributeGroupAssociationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getAppregistryAttributeGroupAssociations:getAppregistryAttributeGroupAssociations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppregistryAttributeGroupAssociationsResult.fromMap(result);
}
