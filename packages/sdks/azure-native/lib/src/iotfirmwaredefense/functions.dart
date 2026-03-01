import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firmware_args.dart';
import 'get_firmware_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Get firmware.
///
/// Uses Azure REST API version 2024-01-10.
///
/// Other available API versions: 2023-02-08-preview, 2025-04-01-preview, 2025-08-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotfirmwaredefense [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotfirmwaredefense_get_firmware_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirmwareResult> getFirmware(
  GetFirmwareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotfirmwaredefense:getFirmware',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirmwareResult.fromMap(result);
}

/// Get firmware analysis workspace.
///
/// Uses Azure REST API version 2024-01-10.
///
/// Other available API versions: 2023-02-08-preview, 2025-04-01-preview, 2025-08-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotfirmwaredefense [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_iotfirmwaredefense_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:iotfirmwaredefense:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
