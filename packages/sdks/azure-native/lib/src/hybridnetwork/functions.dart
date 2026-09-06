import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_artifact_manifest_args.dart';
import 'get_artifact_manifest_result.dart';
import 'get_artifact_store_args.dart';
import 'get_artifact_store_result.dart';
import 'get_configuration_group_schema_args.dart';
import 'get_configuration_group_schema_result.dart';
import 'get_configuration_group_value_args.dart';
import 'get_configuration_group_value_result.dart';
import 'get_device_args.dart';
import 'get_device_result.dart';
import 'get_network_function_args.dart';
import 'get_network_function_definition_group_args.dart';
import 'get_network_function_definition_group_result.dart';
import 'get_network_function_definition_version_args.dart';
import 'get_network_function_definition_version_result.dart';
import 'get_network_function_result.dart';
import 'get_network_service_design_group_args.dart';
import 'get_network_service_design_group_result.dart';
import 'get_network_service_design_version_args.dart';
import 'get_network_service_design_version_result.dart';
import 'get_publisher_args.dart';
import 'get_publisher_result.dart';
import 'get_site_args.dart';
import 'get_site_network_service_args.dart';
import 'get_site_network_service_result.dart';
import 'get_site_result.dart';
import 'get_vendor_args.dart';
import 'get_vendor_result.dart';
import 'get_vendor_sku_preview_args.dart';
import 'get_vendor_sku_preview_result.dart';
import 'get_vendor_skus_args.dart';
import 'get_vendor_skus_result.dart';
import 'list_artifact_manifest_credential_args.dart';
import 'list_artifact_manifest_credential_result.dart';
import 'list_artifact_store_network_fabric_controller_private_end_points_args.dart';
import 'list_artifact_store_network_fabric_controller_private_end_points_result.dart';
import 'list_artifact_store_private_end_points_args.dart';
import 'list_artifact_store_private_end_points_result.dart';
import 'list_device_registration_key_args.dart';
import 'list_device_registration_key_result.dart';
import 'list_vendor_skus_credential_args.dart';
import 'list_vendor_skus_credential_result.dart';

/// Gets information about a artifact manifest resource.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_artifact_manifest_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArtifactManifestResult> getArtifactManifest(
  GetArtifactManifestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getArtifactManifest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactManifestResult.fromMap(result);
}

pulumi.Output<GetArtifactManifestResult> getArtifactManifestOutput(
  GetArtifactManifestArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getArtifactManifest',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetArtifactManifestResult.fromMap);
}

/// Gets information about the specified artifact store.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_artifact_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArtifactStoreResult> getArtifactStore(
  GetArtifactStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getArtifactStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactStoreResult.fromMap(result);
}

pulumi.Output<GetArtifactStoreResult> getArtifactStoreOutput(
  GetArtifactStoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getArtifactStore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetArtifactStoreResult.fromMap);
}

/// Gets information about the specified configuration group schema.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_configuration_group_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationGroupSchemaResult> getConfigurationGroupSchema(
  GetConfigurationGroupSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getConfigurationGroupSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationGroupSchemaResult.fromMap(result);
}

pulumi.Output<GetConfigurationGroupSchemaResult> getConfigurationGroupSchemaOutput(
  GetConfigurationGroupSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getConfigurationGroupSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigurationGroupSchemaResult.fromMap);
}

/// Gets information about the specified hybrid configuration group values.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_configuration_group_value_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationGroupValueResult> getConfigurationGroupValue(
  GetConfigurationGroupValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getConfigurationGroupValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationGroupValueResult.fromMap(result);
}

pulumi.Output<GetConfigurationGroupValueResult> getConfigurationGroupValueOutput(
  GetConfigurationGroupValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getConfigurationGroupValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigurationGroupValueResult.fromMap);
}

/// Gets information about the specified device.
///
/// Uses Azure REST API version 2022-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}

pulumi.Output<GetDeviceResult> getDeviceOutput(
  GetDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeviceResult.fromMap);
}

/// Gets information about the specified network function resource.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2022-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_network_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFunctionResult> getNetworkFunction(
  GetNetworkFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFunctionResult.fromMap(result);
}

pulumi.Output<GetNetworkFunctionResult> getNetworkFunctionOutput(
  GetNetworkFunctionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkFunctionResult.fromMap);
}

/// Gets information about the specified networkFunctionDefinition group.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_network_function_definition_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFunctionDefinitionGroupResult> getNetworkFunctionDefinitionGroup(
  GetNetworkFunctionDefinitionGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkFunctionDefinitionGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFunctionDefinitionGroupResult.fromMap(result);
}

pulumi.Output<GetNetworkFunctionDefinitionGroupResult> getNetworkFunctionDefinitionGroupOutput(
  GetNetworkFunctionDefinitionGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkFunctionDefinitionGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkFunctionDefinitionGroupResult.fromMap);
}

/// Gets information about a network function definition version.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_network_function_definition_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFunctionDefinitionVersionResult> getNetworkFunctionDefinitionVersion(
  GetNetworkFunctionDefinitionVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkFunctionDefinitionVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFunctionDefinitionVersionResult.fromMap(result);
}

pulumi.Output<GetNetworkFunctionDefinitionVersionResult> getNetworkFunctionDefinitionVersionOutput(
  GetNetworkFunctionDefinitionVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkFunctionDefinitionVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkFunctionDefinitionVersionResult.fromMap);
}

/// Gets information about the specified networkServiceDesign group.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_network_service_design_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkServiceDesignGroupResult> getNetworkServiceDesignGroup(
  GetNetworkServiceDesignGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkServiceDesignGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkServiceDesignGroupResult.fromMap(result);
}

pulumi.Output<GetNetworkServiceDesignGroupResult> getNetworkServiceDesignGroupOutput(
  GetNetworkServiceDesignGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkServiceDesignGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkServiceDesignGroupResult.fromMap);
}

/// Gets information about a network service design version.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_network_service_design_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkServiceDesignVersionResult> getNetworkServiceDesignVersion(
  GetNetworkServiceDesignVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkServiceDesignVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkServiceDesignVersionResult.fromMap(result);
}

pulumi.Output<GetNetworkServiceDesignVersionResult> getNetworkServiceDesignVersionOutput(
  GetNetworkServiceDesignVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getNetworkServiceDesignVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkServiceDesignVersionResult.fromMap);
}

/// Gets information about the specified publisher.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_publisher_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublisherResult> getPublisher(
  GetPublisherArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getPublisher',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublisherResult.fromMap(result);
}

pulumi.Output<GetPublisherResult> getPublisherOutput(
  GetPublisherArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getPublisher',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPublisherResult.fromMap);
}

/// Gets information about the specified network site.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteResult> getSite(
  GetSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteResult.fromMap(result);
}

pulumi.Output<GetSiteResult> getSiteOutput(
  GetSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSiteResult.fromMap);
}

/// Gets information about the specified site network service.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_site_network_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteNetworkServiceResult> getSiteNetworkService(
  GetSiteNetworkServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getSiteNetworkService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteNetworkServiceResult.fromMap(result);
}

pulumi.Output<GetSiteNetworkServiceResult> getSiteNetworkServiceOutput(
  GetSiteNetworkServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getSiteNetworkService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSiteNetworkServiceResult.fromMap);
}

/// Gets information about the specified vendor.
///
/// Uses Azure REST API version 2022-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_vendor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVendorResult> getVendor(
  GetVendorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getVendor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVendorResult.fromMap(result);
}

pulumi.Output<GetVendorResult> getVendorOutput(
  GetVendorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getVendor',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVendorResult.fromMap);
}

/// Gets the preview information of a vendor sku.
///
/// Uses Azure REST API version 2022-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_vendor_sku_preview_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVendorSkuPreviewResult> getVendorSkuPreview(
  GetVendorSkuPreviewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getVendorSkuPreview',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVendorSkuPreviewResult.fromMap(result);
}

pulumi.Output<GetVendorSkuPreviewResult> getVendorSkuPreviewOutput(
  GetVendorSkuPreviewArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getVendorSkuPreview',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVendorSkuPreviewResult.fromMap);
}

/// Gets information about the specified sku.
///
/// Uses Azure REST API version 2022-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_get_vendor_skus_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVendorSkusResult> getVendorSkus(
  GetVendorSkusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getVendorSkus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVendorSkusResult.fromMap(result);
}

pulumi.Output<GetVendorSkusResult> getVendorSkusOutput(
  GetVendorSkusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:getVendorSkus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVendorSkusResult.fromMap);
}

/// List credential for publishing artifacts defined in artifact manifest.
///
/// Uses Azure REST API version 2024-04-15.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_list_artifact_manifest_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<ListArtifactManifestCredentialResult> listArtifactManifestCredential(
  ListArtifactManifestCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listArtifactManifestCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListArtifactManifestCredentialResult.fromMap(result);
}

pulumi.Output<ListArtifactManifestCredentialResult> listArtifactManifestCredentialOutput(
  ListArtifactManifestCredentialArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listArtifactManifestCredential',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListArtifactManifestCredentialResult.fromMap);
}

/// List network fabric controllers to artifact stores
///
/// Uses Azure REST API version 2024-04-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_list_artifact_store_network_fabric_controller_private_end_points_args_doc}
/// [options] Invoke options controlling this call.
Future<ListArtifactStoreNetworkFabricControllerPrivateEndPointsResult> listArtifactStoreNetworkFabricControllerPrivateEndPoints(
  ListArtifactStoreNetworkFabricControllerPrivateEndPointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listArtifactStoreNetworkFabricControllerPrivateEndPoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListArtifactStoreNetworkFabricControllerPrivateEndPointsResult.fromMap(result);
}

pulumi.Output<ListArtifactStoreNetworkFabricControllerPrivateEndPointsResult> listArtifactStoreNetworkFabricControllerPrivateEndPointsOutput(
  ListArtifactStoreNetworkFabricControllerPrivateEndPointsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listArtifactStoreNetworkFabricControllerPrivateEndPoints',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListArtifactStoreNetworkFabricControllerPrivateEndPointsResult.fromMap);
}

/// List manual private endpoints on artifact stores
///
/// Uses Azure REST API version 2024-04-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_list_artifact_store_private_end_points_args_doc}
/// [options] Invoke options controlling this call.
Future<ListArtifactStorePrivateEndPointsResult> listArtifactStorePrivateEndPoints(
  ListArtifactStorePrivateEndPointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listArtifactStorePrivateEndPoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListArtifactStorePrivateEndPointsResult.fromMap(result);
}

pulumi.Output<ListArtifactStorePrivateEndPointsResult> listArtifactStorePrivateEndPointsOutput(
  ListArtifactStorePrivateEndPointsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listArtifactStorePrivateEndPoints',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListArtifactStorePrivateEndPointsResult.fromMap);
}

/// List the registration key for the device.
///
/// Uses Azure REST API version 2022-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_list_device_registration_key_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDeviceRegistrationKeyResult> listDeviceRegistrationKey(
  ListDeviceRegistrationKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listDeviceRegistrationKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDeviceRegistrationKeyResult.fromMap(result);
}

pulumi.Output<ListDeviceRegistrationKeyResult> listDeviceRegistrationKeyOutput(
  ListDeviceRegistrationKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listDeviceRegistrationKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDeviceRegistrationKeyResult.fromMap);
}

/// Generate credentials for publishing SKU images.
///
/// Uses Azure REST API version 2022-01-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridnetwork_list_vendor_skus_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<ListVendorSkusCredentialResult> listVendorSkusCredential(
  ListVendorSkusCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listVendorSkusCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListVendorSkusCredentialResult.fromMap(result);
}

pulumi.Output<ListVendorSkusCredentialResult> listVendorSkusCredentialOutput(
  ListVendorSkusCredentialArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridnetwork:listVendorSkusCredential',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListVendorSkusCredentialResult.fromMap);
}
