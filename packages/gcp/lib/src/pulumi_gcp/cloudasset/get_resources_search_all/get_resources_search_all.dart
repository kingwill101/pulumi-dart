import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resources_search_all_args.dart';
import 'get_resources_search_all_cloudasset_result.dart';

/// Retrieve all the resources within a given accessible CRM scope (project/folder/organization). See the
/// [REST API](https://cloud.google.com/asset-inventory/docs/reference/rest/v1p1beta1/resources/searchAll)
/// for more details.
///
/// ## Example Usage
///
/// ### Searching For All Projects In An Org
///
///
///
/// ### Searching For All Projects With CloudBuild API Enabled
///
///
///
/// ### Searching For All Service Accounts In A Project
Future<GetResourcesSearchAllCloudassetResult> getResourcesSearchAll(
  GetResourcesSearchAllArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudasset/getResourcesSearchAll:getResourcesSearchAll',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcesSearchAllCloudassetResult.fromMap(result);
}
