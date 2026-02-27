import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_appregistry_attribute_group_args.dart';
import 'get_appregistry_attribute_group_result.dart';

/// Data source for managing an AWS Service Catalog AppRegistry Attribute Group.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetAppregistryAttributeGroupResult> getAppregistryAttributeGroup(
  GetAppregistryAttributeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getAppregistryAttributeGroup:getAppregistryAttributeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppregistryAttributeGroupResult.fromMap(result);
}
