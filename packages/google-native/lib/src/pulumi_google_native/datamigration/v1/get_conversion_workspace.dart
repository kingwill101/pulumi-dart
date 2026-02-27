import 'package:pulumi/pulumi.dart' hide Config;
import 'get_conversion_workspace_args.dart';
import 'get_conversion_workspace_result.dart';

/// Gets details of a single conversion workspace.
Future<GetConversionWorkspaceResult> getConversionWorkspace(
  GetConversionWorkspaceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getConversionWorkspace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversionWorkspaceResult.fromMap(result);
}
