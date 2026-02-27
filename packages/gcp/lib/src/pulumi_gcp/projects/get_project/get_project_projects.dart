import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_projects_args.dart';
import 'get_project_projects_result.dart';

/// Retrieve information about a set of projects based on a filter. See the
/// [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/list)
/// for more details.
///
/// ## Example Usage
///
/// ### Searching For Projects About To Be Deleted In An Org
Future<GetProjectProjectsResult> getProjectProjects(
  GetProjectProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getProject:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectProjectsResult.fromMap(result);
}
