import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversion_workspace_args.dart';
import 'get_conversion_workspace_result.dart';

/// Gets details of a single conversion workspace.
Future<GetConversionWorkspaceResult> getConversionWorkspace(
  GetConversionWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConversionWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversionWorkspaceResult.fromMap(result);
}
