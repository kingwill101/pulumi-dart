import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_search_all_resources_args.dart';
import 'get_search_all_resources_cloudasset_result.dart';

/// Searches all Google Cloud resources within the specified scope, such as a project, folder, or organization. See the
/// [REST API](https://cloud.google.com/asset-inventory/docs/reference/rest/v1/TopLevel/searchAllResources)
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
Future<GetSearchAllResourcesCloudassetResult> getSearchAllResources(
  GetSearchAllResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudasset/getSearchAllResources:getSearchAllResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSearchAllResourcesCloudassetResult.fromMap(result);
}
