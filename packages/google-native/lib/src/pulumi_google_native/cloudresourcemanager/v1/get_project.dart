import 'package:pulumi/pulumi.dart';
import 'get_project_args.dart';
import 'get_project_result.dart';

/// Retrieves the Project identified by the specified `project_id` (for example, `my-project-123`). The caller must have read permissions for this Project.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1:getProject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}
