import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_service_args.dart';
import 'get_project_service_result.dart';

/// Verify the API service for the Google Cloud Platform project to see if it is enabled or not.
///
/// For a list of services available, visit the [API library page](https://console.cloud.google.com/apis/library)
/// or run `gcloud services list --available`.
///
/// This datasource requires the [Service Usage API](https://console.cloud.google.com/apis/library/serviceusage.googleapis.com)
/// to use.
///
///
/// To get more information about `gcp.projects.Service`, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1/services)
/// * How-to Guides
/// * [Enabling and Disabling Services](https://cloud.google.com/service-usage/docs/enable-disable)
Future<GetProjectServiceResult> getProjectService(
  GetProjectServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getProjectService:getProjectService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectServiceResult.fromMap(result);
}
