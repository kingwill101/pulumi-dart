import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_args.dart';
import 'get_project_result.dart';

/// Use this data source to get project details.
/// For more information see
/// [API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects#Project)
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getProject:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}
