import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_asset_args.dart';
import 'get_asset_endpoint_profile_args.dart';
import 'get_asset_endpoint_profile_result.dart';
import 'get_asset_result.dart';
import 'get_credential_args.dart';
import 'get_credential_result.dart';
import 'get_discovered_asset_args.dart';
import 'get_discovered_asset_endpoint_profile_args.dart';
import 'get_discovered_asset_endpoint_profile_result.dart';
import 'get_discovered_asset_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_asset_args.dart';
import 'get_namespace_asset_result.dart';
import 'get_namespace_device_args.dart';
import 'get_namespace_device_result.dart';
import 'get_namespace_discovered_asset_args.dart';
import 'get_namespace_discovered_asset_result.dart';
import 'get_namespace_discovered_device_args.dart';
import 'get_namespace_discovered_device_result.dart';
import 'get_namespace_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';
import 'get_schema_args.dart';
import 'get_schema_registry_args.dart';
import 'get_schema_registry_result.dart';
import 'get_schema_result.dart';
import 'get_schema_version_args.dart';
import 'get_schema_version_result.dart';

/// Get a Asset
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-11-01-preview, 2024-09-01-preview, 2025-07-01-preview, 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_asset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssetResult> getAsset(
  GetAssetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getAsset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssetResult.fromMap(result);
}

pulumi.Output<GetAssetResult> getAssetOutput(
  GetAssetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getAsset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssetResult.fromMap);
}

/// Get a AssetEndpointProfile
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-11-01-preview, 2024-09-01-preview, 2025-07-01-preview, 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_asset_endpoint_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssetEndpointProfileResult> getAssetEndpointProfile(
  GetAssetEndpointProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getAssetEndpointProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssetEndpointProfileResult.fromMap(result);
}

pulumi.Output<GetAssetEndpointProfileResult> getAssetEndpointProfileOutput(
  GetAssetEndpointProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getAssetEndpointProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssetEndpointProfileResult.fromMap);
}

/// Get a Credential
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCredentialResult> getCredential(
  GetCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCredentialResult.fromMap(result);
}

pulumi.Output<GetCredentialResult> getCredentialOutput(
  GetCredentialArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getCredential',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCredentialResult.fromMap);
}

/// Get a DiscoveredAsset
///
/// Uses Azure REST API version 2024-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_discovered_asset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscoveredAssetResult> getDiscoveredAsset(
  GetDiscoveredAssetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getDiscoveredAsset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredAssetResult.fromMap(result);
}

pulumi.Output<GetDiscoveredAssetResult> getDiscoveredAssetOutput(
  GetDiscoveredAssetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getDiscoveredAsset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiscoveredAssetResult.fromMap);
}

/// Get a DiscoveredAssetEndpointProfile
///
/// Uses Azure REST API version 2024-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_discovered_asset_endpoint_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscoveredAssetEndpointProfileResult> getDiscoveredAssetEndpointProfile(
  GetDiscoveredAssetEndpointProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getDiscoveredAssetEndpointProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredAssetEndpointProfileResult.fromMap(result);
}

pulumi.Output<GetDiscoveredAssetEndpointProfileResult> getDiscoveredAssetEndpointProfileOutput(
  GetDiscoveredAssetEndpointProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getDiscoveredAssetEndpointProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiscoveredAssetEndpointProfileResult.fromMap);
}

/// Get a Namespace
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

pulumi.Output<GetNamespaceResult> getNamespaceOutput(
  GetNamespaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceResult.fromMap);
}

/// Get a NamespaceAsset
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_namespace_asset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceAssetResult> getNamespaceAsset(
  GetNamespaceAssetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespaceAsset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceAssetResult.fromMap(result);
}

pulumi.Output<GetNamespaceAssetResult> getNamespaceAssetOutput(
  GetNamespaceAssetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespaceAsset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceAssetResult.fromMap);
}

/// Get a NamespaceDevice
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_namespace_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceDeviceResult> getNamespaceDevice(
  GetNamespaceDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespaceDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceDeviceResult.fromMap(result);
}

pulumi.Output<GetNamespaceDeviceResult> getNamespaceDeviceOutput(
  GetNamespaceDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespaceDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceDeviceResult.fromMap);
}

/// Get a NamespaceDiscoveredAsset
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_namespace_discovered_asset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceDiscoveredAssetResult> getNamespaceDiscoveredAsset(
  GetNamespaceDiscoveredAssetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespaceDiscoveredAsset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceDiscoveredAssetResult.fromMap(result);
}

pulumi.Output<GetNamespaceDiscoveredAssetResult> getNamespaceDiscoveredAssetOutput(
  GetNamespaceDiscoveredAssetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespaceDiscoveredAsset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceDiscoveredAssetResult.fromMap);
}

/// Get a NamespaceDiscoveredDevice
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_namespace_discovered_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceDiscoveredDeviceResult> getNamespaceDiscoveredDevice(
  GetNamespaceDiscoveredDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespaceDiscoveredDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceDiscoveredDeviceResult.fromMap(result);
}

pulumi.Output<GetNamespaceDiscoveredDeviceResult> getNamespaceDiscoveredDeviceOutput(
  GetNamespaceDiscoveredDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getNamespaceDiscoveredDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceDiscoveredDeviceResult.fromMap);
}

/// Get a Policy
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

pulumi.Output<GetPolicyResult> getPolicyOutput(
  GetPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyResult.fromMap);
}

/// Get a Schema
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaResult> getSchema(
  GetSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaResult.fromMap(result);
}

pulumi.Output<GetSchemaResult> getSchemaOutput(
  GetSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSchemaResult.fromMap);
}

/// Get a SchemaRegistry
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_schema_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaRegistryResult> getSchemaRegistry(
  GetSchemaRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getSchemaRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaRegistryResult.fromMap(result);
}

pulumi.Output<GetSchemaRegistryResult> getSchemaRegistryOutput(
  GetSchemaRegistryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getSchemaRegistry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSchemaRegistryResult.fromMap);
}

/// Get a SchemaVersion
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_schema_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemaVersionResult> getSchemaVersion(
  GetSchemaVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:deviceregistry:getSchemaVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemaVersionResult.fromMap(result);
}

pulumi.Output<GetSchemaVersionResult> getSchemaVersionOutput(
  GetSchemaVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:deviceregistry:getSchemaVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSchemaVersionResult.fromMap);
}
