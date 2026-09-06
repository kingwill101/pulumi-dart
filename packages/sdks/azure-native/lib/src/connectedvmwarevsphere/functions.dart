import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_datastore_args.dart';
import 'get_datastore_result.dart';
import 'get_guest_agent_args.dart';
import 'get_guest_agent_result.dart';
import 'get_host_args.dart';
import 'get_host_result.dart';
import 'get_hybrid_identity_metadatum_args.dart';
import 'get_hybrid_identity_metadatum_result.dart';
import 'get_inventory_item_args.dart';
import 'get_inventory_item_result.dart';
import 'get_machine_extension_args.dart';
import 'get_machine_extension_result.dart';
import 'get_resource_pool_args.dart';
import 'get_resource_pool_result.dart';
import 'get_vcenter_args.dart';
import 'get_vcenter_result.dart';
import 'get_virtual_machine_args.dart';
import 'get_virtual_machine_instance_args.dart';
import 'get_virtual_machine_instance_result.dart';
import 'get_virtual_machine_result.dart';
import 'get_virtual_machine_template_args.dart';
import 'get_virtual_machine_template_result.dart';
import 'get_virtual_network_args.dart';
import 'get_virtual_network_result.dart';
import 'get_vminstance_guest_agent_args.dart';
import 'get_vminstance_guest_agent_result.dart';

/// Implements cluster GET method.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Implements datastore GET method.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_datastore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatastoreResult> getDatastore(
  GetDatastoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getDatastore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatastoreResult.fromMap(result);
}

pulumi.Output<GetDatastoreResult> getDatastoreOutput(
  GetDatastoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getDatastore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatastoreResult.fromMap);
}

/// Implements GuestAgent GET method.
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2022-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_guest_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestAgentResult> getGuestAgent(
  GetGuestAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getGuestAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestAgentResult.fromMap(result);
}

pulumi.Output<GetGuestAgentResult> getGuestAgentOutput(
  GetGuestAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getGuestAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGuestAgentResult.fromMap);
}

/// Implements host GET method.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostResult> getHost(
  GetHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostResult.fromMap(result);
}

pulumi.Output<GetHostResult> getHostOutput(
  GetHostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getHost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHostResult.fromMap);
}

/// Implements HybridIdentityMetadata GET method.
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2022-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_hybrid_identity_metadatum_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridIdentityMetadatumResult> getHybridIdentityMetadatum(
  GetHybridIdentityMetadatumArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getHybridIdentityMetadatum',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridIdentityMetadatumResult.fromMap(result);
}

pulumi.Output<GetHybridIdentityMetadatumResult> getHybridIdentityMetadatumOutput(
  GetHybridIdentityMetadatumArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getHybridIdentityMetadatum',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHybridIdentityMetadatumResult.fromMap);
}

/// Implements InventoryItem GET method.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_inventory_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInventoryItemResult> getInventoryItem(
  GetInventoryItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getInventoryItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInventoryItemResult.fromMap(result);
}

pulumi.Output<GetInventoryItemResult> getInventoryItemOutput(
  GetInventoryItemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getInventoryItem',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInventoryItemResult.fromMap);
}

/// The operation to get the extension.
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2022-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_machine_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineExtensionResult> getMachineExtension(
  GetMachineExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getMachineExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineExtensionResult.fromMap(result);
}

pulumi.Output<GetMachineExtensionResult> getMachineExtensionOutput(
  GetMachineExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getMachineExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMachineExtensionResult.fromMap);
}

/// Implements resourcePool GET method.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_resource_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePoolResult> getResourcePool(
  GetResourcePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getResourcePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePoolResult.fromMap(result);
}

pulumi.Output<GetResourcePoolResult> getResourcePoolOutput(
  GetResourcePoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getResourcePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourcePoolResult.fromMap);
}

/// Implements vCenter GET method.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_vcenter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVCenterResult> getVCenter(
  GetVCenterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVCenter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVCenterResult.fromMap(result);
}

pulumi.Output<GetVCenterResult> getVCenterOutput(
  GetVCenterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVCenter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVCenterResult.fromMap);
}

/// Implements GuestAgent GET method.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_vminstance_guest_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVMInstanceGuestAgentResult> getVMInstanceGuestAgent(
  GetVMInstanceGuestAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVMInstanceGuestAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVMInstanceGuestAgentResult.fromMap(result);
}

pulumi.Output<GetVMInstanceGuestAgentResult> getVMInstanceGuestAgentOutput(
  GetVMInstanceGuestAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVMInstanceGuestAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVMInstanceGuestAgentResult.fromMap);
}

/// Implements virtual machine GET method.
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// Other available API versions: 2022-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineResult> getVirtualMachine(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVirtualMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineResult> getVirtualMachineOutput(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVirtualMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineResult.fromMap);
}

/// Retrieves information about a virtual machine instance.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_virtual_machine_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineInstanceResult> getVirtualMachineInstance(
  GetVirtualMachineInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVirtualMachineInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineInstanceResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineInstanceResult> getVirtualMachineInstanceOutput(
  GetVirtualMachineInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVirtualMachineInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineInstanceResult.fromMap);
}

/// Implements virtual machine template GET method.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_virtual_machine_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineTemplateResult> getVirtualMachineTemplate(
  GetVirtualMachineTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVirtualMachineTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineTemplateResult.fromMap(result);
}

pulumi.Output<GetVirtualMachineTemplateResult> getVirtualMachineTemplateOutput(
  GetVirtualMachineTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVirtualMachineTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineTemplateResult.fromMap);
}

/// Implements virtual network GET method.
///
/// Uses Azure REST API version 2023-12-01.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_connectedvmwarevsphere_get_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkResult> getVirtualNetwork(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkResult> getVirtualNetworkOutput(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:connectedvmwarevsphere:getVirtualNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkResult.fromMap);
}
