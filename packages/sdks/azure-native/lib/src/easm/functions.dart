import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_label_by_workspace_args.dart';
import 'get_label_by_workspace_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Returns a label in the given workspace.
///
/// Uses Azure REST API version 2023-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_easm_get_label_by_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLabelByWorkspaceResult> getLabelByWorkspace(
  GetLabelByWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:easm:getLabelByWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLabelByWorkspaceResult.fromMap(result);
}

/// Returns a workspace with the given name.
///
/// Uses Azure REST API version 2023-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_easm_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:easm:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
