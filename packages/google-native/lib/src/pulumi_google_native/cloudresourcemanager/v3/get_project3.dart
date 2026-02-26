import 'package:pulumi/pulumi.dart';
import 'get_project_args3.dart';
import 'get_project_result3.dart';

/// Retrieves the project identified by the specified `name` (for example, `projects/415104041262`). The caller must have `resourcemanager.projects.get` permission for this project.
Future<GetProjectResult3> getProject3(
  GetProjectArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getProject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectResult3.fromMap(result);
}
