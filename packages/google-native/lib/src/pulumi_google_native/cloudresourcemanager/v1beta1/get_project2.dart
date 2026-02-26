import 'package:pulumi/pulumi.dart';
import 'get_project_args2.dart';
import 'get_project_result2.dart';

/// Retrieves the Project identified by the specified `project_id` (for example, `my-project-123`). The caller must have read permissions for this Project.
Future<GetProjectResult2> getProject2(
  GetProjectArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1beta1:getProject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectResult2.fromMap(result);
}
