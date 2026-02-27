import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_cloudresourcemanager_v1beta1_args.dart';
import 'get_project_cloudresourcemanager_v1beta1_result.dart';

/// Retrieves the Project identified by the specified `project_id` (for example, `my-project-123`). The caller must have read permissions for this Project.
Future<GetProjectCloudresourcemanagerV1beta1Result>
    getProjectCloudresourcemanagerV1beta1(
  GetProjectCloudresourcemanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1beta1:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCloudresourcemanagerV1beta1Result.fromMap(result);
}
