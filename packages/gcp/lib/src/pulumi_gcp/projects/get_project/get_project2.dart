import 'package:pulumi/pulumi.dart';
import 'get_project_args2.dart';
import 'get_project_result2.dart';

/// Retrieve information about a set of projects based on a filter. See the
/// [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/list)
/// for more details.
///
/// ## Example Usage
///
/// ### Searching For Projects About To Be Deleted In An Org
Future<GetProjectResult2> getProject2(
  GetProjectArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getProject:getProject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectResult2.fromMap(result);
}
