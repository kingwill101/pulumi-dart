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
/// Other available API versions: 2023-11-01-preview, 2024-09-01-preview, 2025-07-01-preview, 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a AssetEndpointProfile
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-11-01-preview, 2024-09-01-preview, 2025-07-01-preview, 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a Credential
///
/// Uses Azure REST API version 2025-11-01-preview.
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

/// Get a DiscoveredAssetEndpointProfile
///
/// Uses Azure REST API version 2024-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_deviceregistry_get_discovered_asset_endpoint_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscoveredAssetEndpointProfileResult>
getDiscoveredAssetEndpointProfile(
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

/// Get a Namespace
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a NamespaceAsset
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a NamespaceDevice
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a NamespaceDiscoveredAsset
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a NamespaceDiscoveredDevice
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a Policy
///
/// Uses Azure REST API version 2025-11-01-preview.
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

/// Get a Schema
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a SchemaRegistry
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get a SchemaVersion
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
