// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_property_response.dart';
import 'feature_store_settings_response.dart';
import 'managed_network_settings_response.dart';
import 'managed_service_identity_response.dart';
import 'notebook_resource_info_response.dart';
import 'private_endpoint_connection_response.dart';
import 'serverless_compute_settings_response.dart';
import 'service_managed_resources_settings_response.dart';
import 'shared_private_link_resource_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';
import 'workspace_hub_config_response.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The flag to indicate whether to allow public access when behind VNet.
  final bool? allowPublicAccessWhenBehindVnet;
  /// ARM id of the application insights associated with this workspace.
  final String? applicationInsights;
  final List<String>? associatedWorkspaces;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ARM id of the container registry associated with this workspace.
  final String? containerRegistry;
  /// The description of this workspace.
  final String? description;
  /// Url for the discovery service to identify regional endpoints for machine learning experimentation services
  final String? discoveryUrl;
  final bool? enableDataIsolation;
  final bool? enableServiceSideCMKEncryption;
  /// The encryption settings of Azure ML workspace.
  final EncryptionPropertyResponse? encryption;
  /// Settings for feature store type workspace.
  final FeatureStoreSettingsResponse? featureStoreSettings;
  /// The friendly name for this workspace. This name in mutable
  final String? friendlyName;
  /// The flag to signal HBI data in the workspace and reduce diagnostic data collected by the service
  final bool? hbiWorkspace;
  final String? hubResourceId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the resource.
  final ManagedServiceIdentityResponse? identity;
  /// The compute name for image build
  final String? imageBuildCompute;
  /// ARM id of the key vault associated with this workspace. This cannot be changed once the workspace has been created
  final String? keyVault;
  final String? kind;
  /// Specifies the location of the resource.
  final String? location;
  /// Managed Network settings for a machine learning workspace.
  final ManagedNetworkSettingsResponse? managedNetwork;
  /// The URI associated with this workspace that machine learning flow must point at to set up tracking.
  final String mlFlowTrackingUri;
  /// The name of the resource
  final String name;
  /// The notebook info of Azure ML workspace.
  final NotebookResourceInfoResponse notebookInfo;
  /// The user assigned identity resource id that represents the workspace identity.
  final String? primaryUserAssignedIdentity;
  /// The list of private endpoint connections in the workspace.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Count of private connections in the workspace
  final int privateLinkCount;
  /// Set to trigger the provisioning of the managed VNet with the default Options when creating a Workspace with the managed VNet enabled, or else it does nothing.
  final bool? provisionNetworkNow;
  /// The current deployment state of workspace resource. The provisioningState is to indicate states for resource provisioning.
  final String provisioningState;
  /// Whether requests from Public Network are allowed.
  final String? publicNetworkAccess;
  /// Settings for serverless compute created in the workspace
  final ServerlessComputeSettingsResponse? serverlessComputeSettings;
  /// The service managed resource settings.
  final ServiceManagedResourcesSettingsResponse? serviceManagedResourcesSettings;
  /// The name of the managed resource group created by workspace RP in customer subscription if the workspace is CMK workspace
  final String serviceProvisionedResourceGroup;
  /// The list of shared private link resources in this workspace.
  final List<SharedPrivateLinkResourceResponse>? sharedPrivateLinkResources;
  /// The sku of the workspace.
  final SkuResponse? sku;
  /// ARM id of the storage account associated with this workspace. This cannot be changed once the workspace has been created
  final String? storageAccount;
  /// If the storage associated with the workspace has hierarchical namespace(HNS) enabled.
  final bool storageHnsEnabled;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The auth mode used for accessing the system datastores of the workspace.
  final String? systemDatastoresAuthMode;
  /// Contains resource tags defined as key/value pairs.
  final Map<String, String>? tags;
  /// The tenant id associated with this workspace.
  final String tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Enabling v1_legacy_mode may prevent you from using features provided by the v2 API.
  final bool? v1LegacyMode;
  /// WorkspaceHub's configuration object.
  final WorkspaceHubConfigResponse? workspaceHubConfig;
  /// The immutable id associated with this workspace.
  final String workspaceId;

  /// Creates a new [GetWorkspaceResult].
  /// [allowPublicAccessWhenBehindVnet] The flag to indicate whether to allow public access when behind VNet.
  /// [applicationInsights] ARM id of the application insights associated with this workspace.
  /// [associatedWorkspaces] Optional.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerRegistry] ARM id of the container registry associated with this workspace.
  /// [description] The description of this workspace.
  /// [discoveryUrl] Url for the discovery service to identify regional endpoints for machine learning experimentation services
  /// [enableDataIsolation] Optional.
  /// [enableServiceSideCMKEncryption] Optional.
  /// [encryption] The encryption settings of Azure ML workspace.
  /// [featureStoreSettings] Settings for feature store type workspace.
  /// [friendlyName] The friendly name for this workspace. This name in mutable
  /// [hbiWorkspace] The flag to signal HBI data in the workspace and reduce diagnostic data collected by the service
  /// [hubResourceId] Optional.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the resource.
  /// [imageBuildCompute] The compute name for image build
  /// [keyVault] ARM id of the key vault associated with this workspace. This cannot be changed once the workspace has been created
  /// [kind] Optional.
  /// [location] Specifies the location of the resource.
  /// [managedNetwork] Managed Network settings for a machine learning workspace.
  /// [mlFlowTrackingUri] The URI associated with this workspace that machine learning flow must point at to set up tracking.
  /// [name] The name of the resource
  /// [notebookInfo] The notebook info of Azure ML workspace.
  /// [primaryUserAssignedIdentity] The user assigned identity resource id that represents the workspace identity.
  /// [privateEndpointConnections] The list of private endpoint connections in the workspace.
  /// [privateLinkCount] Count of private connections in the workspace
  /// [provisionNetworkNow] Set to trigger the provisioning of the managed VNet with the default Options when creating a Workspace with the managed VNet enabled, or else it does nothing.
  /// [provisioningState] The current deployment state of workspace resource. The provisioningState is to indicate states for resource provisioning.
  /// [publicNetworkAccess] Whether requests from Public Network are allowed.
  /// [serverlessComputeSettings] Settings for serverless compute created in the workspace
  /// [serviceManagedResourcesSettings] The service managed resource settings.
  /// [serviceProvisionedResourceGroup] The name of the managed resource group created by workspace RP in customer subscription if the workspace is CMK workspace
  /// [sharedPrivateLinkResources] The list of shared private link resources in this workspace.
  /// [sku] The sku of the workspace.
  /// [storageAccount] ARM id of the storage account associated with this workspace. This cannot be changed once the workspace has been created
  /// [storageHnsEnabled] If the storage associated with the workspace has hierarchical namespace(HNS) enabled.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [systemDatastoresAuthMode] The auth mode used for accessing the system datastores of the workspace.
  /// [tags] Contains resource tags defined as key/value pairs.
  /// [tenantId] The tenant id associated with this workspace.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [v1LegacyMode] Enabling v1_legacy_mode may prevent you from using features provided by the v2 API.
  /// [workspaceHubConfig] WorkspaceHub's configuration object.
  /// [workspaceId] The immutable id associated with this workspace.
  GetWorkspaceResult({
    this.allowPublicAccessWhenBehindVnet,
    this.applicationInsights,
    this.associatedWorkspaces,
    required this.azureApiVersion,
    this.containerRegistry,
    this.description,
    this.discoveryUrl,
    this.enableDataIsolation,
    this.enableServiceSideCMKEncryption,
    this.encryption,
    this.featureStoreSettings,
    this.friendlyName,
    this.hbiWorkspace,
    this.hubResourceId,
    required this.id,
    this.identity,
    this.imageBuildCompute,
    this.keyVault,
    this.kind,
    this.location,
    this.managedNetwork,
    required this.mlFlowTrackingUri,
    required this.name,
    required this.notebookInfo,
    this.primaryUserAssignedIdentity,
    required this.privateEndpointConnections,
    required this.privateLinkCount,
    this.provisionNetworkNow,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.serverlessComputeSettings,
    this.serviceManagedResourcesSettings,
    required this.serviceProvisionedResourceGroup,
    this.sharedPrivateLinkResources,
    this.sku,
    this.storageAccount,
    required this.storageHnsEnabled,
    required this.systemData,
    this.systemDatastoresAuthMode,
    this.tags,
    required this.tenantId,
    required this.type,
    this.v1LegacyMode,
    this.workspaceHubConfig,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPublicAccessWhenBehindVnet': ?allowPublicAccessWhenBehindVnet,
      'applicationInsights': ?applicationInsights,
      'associatedWorkspaces': ?associatedWorkspaces,
      'azureApiVersion': azureApiVersion,
      'containerRegistry': ?containerRegistry,
      'description': ?description,
      'discoveryUrl': ?discoveryUrl,
      'enableDataIsolation': ?enableDataIsolation,
      'enableServiceSideCMKEncryption': ?enableServiceSideCMKEncryption,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'featureStoreSettings': ?featureStoreSettings == null ? null : featureStoreSettings!.toMap(),
      'friendlyName': ?friendlyName,
      'hbiWorkspace': ?hbiWorkspace,
      'hubResourceId': ?hubResourceId,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'imageBuildCompute': ?imageBuildCompute,
      'keyVault': ?keyVault,
      'kind': ?kind,
      'location': ?location,
      'managedNetwork': ?managedNetwork == null ? null : managedNetwork!.toMap(),
      'mlFlowTrackingUri': mlFlowTrackingUri,
      'name': name,
      'notebookInfo': notebookInfo.toMap(),
      'primaryUserAssignedIdentity': ?primaryUserAssignedIdentity,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'privateLinkCount': privateLinkCount,
      'provisionNetworkNow': ?provisionNetworkNow,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'serverlessComputeSettings': ?serverlessComputeSettings == null ? null : serverlessComputeSettings!.toMap(),
      'serviceManagedResourcesSettings': ?serviceManagedResourcesSettings == null ? null : serviceManagedResourcesSettings!.toMap(),
      'serviceProvisionedResourceGroup': serviceProvisionedResourceGroup,
      'sharedPrivateLinkResources': ?sharedPrivateLinkResources == null ? null : pulumi.Input.encodeList<SharedPrivateLinkResourceResponse, Map<String, dynamic>>(sharedPrivateLinkResources!, (value) => value.toMap()),
      'sku': ?sku == null ? null : sku!.toMap(),
      'storageAccount': ?storageAccount,
      'storageHnsEnabled': storageHnsEnabled,
      'systemData': systemData.toMap(),
      'systemDatastoresAuthMode': ?systemDatastoresAuthMode,
      'tags': ?tags,
      'tenantId': tenantId,
      'type': type,
      'v1LegacyMode': ?v1LegacyMode,
      'workspaceHubConfig': ?workspaceHubConfig == null ? null : workspaceHubConfig!.toMap(),
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      allowPublicAccessWhenBehindVnet: map['allowPublicAccessWhenBehindVnet'] == null ? null : map['allowPublicAccessWhenBehindVnet'] as bool,
      applicationInsights: map['applicationInsights'] == null ? null : map['applicationInsights'] as String,
      associatedWorkspaces: map['associatedWorkspaces'] == null ? null : (map['associatedWorkspaces'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      containerRegistry: map['containerRegistry'] == null ? null : map['containerRegistry'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      discoveryUrl: map['discoveryUrl'] == null ? null : map['discoveryUrl'] as String,
      enableDataIsolation: map['enableDataIsolation'] == null ? null : map['enableDataIsolation'] as bool,
      enableServiceSideCMKEncryption: map['enableServiceSideCMKEncryption'] == null ? null : map['enableServiceSideCMKEncryption'] as bool,
      encryption: map['encryption'] == null ? null : EncryptionPropertyResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      featureStoreSettings: map['featureStoreSettings'] == null ? null : FeatureStoreSettingsResponse.fromMap((map['featureStoreSettings'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      hbiWorkspace: map['hbiWorkspace'] == null ? null : map['hbiWorkspace'] as bool,
      hubResourceId: map['hubResourceId'] == null ? null : map['hubResourceId'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      imageBuildCompute: map['imageBuildCompute'] == null ? null : map['imageBuildCompute'] as String,
      keyVault: map['keyVault'] == null ? null : map['keyVault'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedNetwork: map['managedNetwork'] == null ? null : ManagedNetworkSettingsResponse.fromMap((map['managedNetwork'] as Map).cast<String, dynamic>()),
      mlFlowTrackingUri: map['mlFlowTrackingUri'] as String,
      name: map['name'] as String,
      notebookInfo: NotebookResourceInfoResponse.fromMap((map['notebookInfo'] as Map).cast<String, dynamic>()),
      primaryUserAssignedIdentity: map['primaryUserAssignedIdentity'] == null ? null : map['primaryUserAssignedIdentity'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkCount: map['privateLinkCount'] as int,
      provisionNetworkNow: map['provisionNetworkNow'] == null ? null : map['provisionNetworkNow'] as bool,
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      serverlessComputeSettings: map['serverlessComputeSettings'] == null ? null : ServerlessComputeSettingsResponse.fromMap((map['serverlessComputeSettings'] as Map).cast<String, dynamic>()),
      serviceManagedResourcesSettings: map['serviceManagedResourcesSettings'] == null ? null : ServiceManagedResourcesSettingsResponse.fromMap((map['serviceManagedResourcesSettings'] as Map).cast<String, dynamic>()),
      serviceProvisionedResourceGroup: map['serviceProvisionedResourceGroup'] as String,
      sharedPrivateLinkResources: map['sharedPrivateLinkResources'] == null ? null : pulumi.Input.decodeList<SharedPrivateLinkResourceResponse>(map['sharedPrivateLinkResources'], (value) => SharedPrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      storageAccount: map['storageAccount'] == null ? null : map['storageAccount'] as String,
      storageHnsEnabled: map['storageHnsEnabled'] as bool,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      systemDatastoresAuthMode: map['systemDatastoresAuthMode'] == null ? null : map['systemDatastoresAuthMode'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      v1LegacyMode: map['v1LegacyMode'] == null ? null : map['v1LegacyMode'] as bool,
      workspaceHubConfig: map['workspaceHubConfig'] == null ? null : WorkspaceHubConfigResponse.fromMap((map['workspaceHubConfig'] as Map).cast<String, dynamic>()),
      workspaceId: map['workspaceId'] as String,
    );
  }
}

