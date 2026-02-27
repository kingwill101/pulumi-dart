import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_workspaces_args.dart';
import 'get_image_workspaces_result.dart';

/// Use this data source to get information about a Workspaces image.
Future<GetImageWorkspacesResult> getImageWorkspaces(
  GetImageWorkspacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageWorkspacesResult.fromMap(result);
}
