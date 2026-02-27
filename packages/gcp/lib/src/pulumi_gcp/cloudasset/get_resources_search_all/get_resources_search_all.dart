import 'package:pulumi/pulumi.dart';
import 'get_resources_search_all_args.dart';
import 'get_resources_search_all_result2.dart';

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
Future<GetResourcesSearchAllResult2> getResourcesSearchAll(
  GetResourcesSearchAllArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudasset/getResourcesSearchAll:getResourcesSearchAll',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcesSearchAllResult2.fromMap(result);
}
