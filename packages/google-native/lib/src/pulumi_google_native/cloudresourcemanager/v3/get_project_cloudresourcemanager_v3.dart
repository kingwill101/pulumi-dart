import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_cloudresourcemanager_v3_args.dart';
import 'get_project_cloudresourcemanager_v3_result.dart';

/// Retrieves the project identified by the specified `name` (for example, `projects/415104041262`). The caller must have `resourcemanager.projects.get` permission for this project.
Future<GetProjectCloudresourcemanagerV3Result> getProjectCloudresourcemanagerV3(
  GetProjectCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCloudresourcemanagerV3Result.fromMap(result);
}
