// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_property.dart';
import 'feature_store_settings.dart';
import 'managed_network_settings.dart';
import 'managed_service_identity.dart';
import 'serverless_compute_settings.dart';
import 'service_managed_resources_settings.dart';
import 'shared_private_link_resource.dart';
import 'sku.dart';
import 'workspace_hub_config.dart';

/// {@template pulumi_machinelearningservices_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_workspace_args_doc}
class WorkspaceArgs {
  /// The flag to indicate whether to allow public access when behind VNet.
  final pulumi.Input<bool>? allowPublicAccessWhenBehindVnet;
  /// ARM id of the application insights associated with this workspace.
  final pulumi.Input<String>? applicationInsights;
  final pulumi.Input<List<String>>? associatedWorkspaces;
  /// ARM id of the container registry associated with this workspace.
  final pulumi.Input<String>? containerRegistry;
  /// The description of this workspace.
  final pulumi.Input<String>? description;
  /// Url for the discovery service to identify regional endpoints for machine learning experimentation services
  final pulumi.Input<String>? discoveryUrl;
  final pulumi.Input<bool>? enableDataIsolation;
  final pulumi.Input<bool>? enableServiceSideCMKEncryption;
  /// The encryption settings of Azure ML workspace.
  final pulumi.Input<EncryptionProperty>? encryption;
  /// Settings for feature store type workspace.
  final pulumi.Input<FeatureStoreSettings>? featureStoreSettings;
  /// The friendly name for this workspace. This name in mutable
  final pulumi.Input<String>? friendlyName;
  /// The flag to signal HBI data in the workspace and reduce diagnostic data collected by the service
  final pulumi.Input<bool>? hbiWorkspace;
  final pulumi.Input<String>? hubResourceId;
  /// The identity of the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The compute name for image build
  final pulumi.Input<String>? imageBuildCompute;
  /// ARM id of the key vault associated with this workspace. This cannot be changed once the workspace has been created
  final pulumi.Input<String>? keyVault;
  final pulumi.Input<String>? kind;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// Managed Network settings for a machine learning workspace.
  final pulumi.Input<ManagedNetworkSettings>? managedNetwork;
  /// The user assigned identity resource id that represents the workspace identity.
  final pulumi.Input<String>? primaryUserAssignedIdentity;
  /// Set to trigger the provisioning of the managed VNet with the default Options when creating a Workspace with the managed VNet enabled, or else it does nothing.
  final pulumi.Input<bool>? provisionNetworkNow;
  /// Whether requests from Public Network are allowed.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Settings for serverless compute created in the workspace
  final pulumi.Input<ServerlessComputeSettings>? serverlessComputeSettings;
  /// The service managed resource settings.
  final pulumi.Input<ServiceManagedResourcesSettings>? serviceManagedResourcesSettings;
  /// The list of shared private link resources in this workspace.
  final pulumi.Input<List<SharedPrivateLinkResource>>? sharedPrivateLinkResources;
  /// The sku of the workspace.
  final pulumi.Input<Sku>? sku;
  /// ARM id of the storage account associated with this workspace. This cannot be changed once the workspace has been created
  final pulumi.Input<String>? storageAccount;
  /// The auth mode used for accessing the system datastores of the workspace.
  final pulumi.Input<String>? systemDatastoresAuthMode;
  /// Contains resource tags defined as key/value pairs.
  final pulumi.Input<Map<String, String>>? tags;
  /// Enabling v1_legacy_mode may prevent you from using features provided by the v2 API.
  final pulumi.Input<bool>? v1LegacyMode;
  /// WorkspaceHub's configuration object.
  final pulumi.Input<WorkspaceHubConfig>? workspaceHubConfig;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [WorkspaceArgs].
  /// [allowPublicAccessWhenBehindVnet] The flag to indicate whether to allow public access when behind VNet.
  /// [applicationInsights] ARM id of the application insights associated with this workspace.
  /// [associatedWorkspaces] Optional.
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
  /// [identity] The identity of the resource.
  /// [imageBuildCompute] The compute name for image build
  /// [keyVault] ARM id of the key vault associated with this workspace. This cannot be changed once the workspace has been created
  /// [kind] Optional.
  /// [location] Specifies the location of the resource.
  /// [managedNetwork] Managed Network settings for a machine learning workspace.
  /// [primaryUserAssignedIdentity] The user assigned identity resource id that represents the workspace identity.
  /// [provisionNetworkNow] Set to trigger the provisioning of the managed VNet with the default Options when creating a Workspace with the managed VNet enabled, or else it does nothing.
  /// [publicNetworkAccess] Whether requests from Public Network are allowed.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverlessComputeSettings] Settings for serverless compute created in the workspace
  /// [serviceManagedResourcesSettings] The service managed resource settings.
  /// [sharedPrivateLinkResources] The list of shared private link resources in this workspace.
  /// [sku] The sku of the workspace.
  /// [storageAccount] ARM id of the storage account associated with this workspace. This cannot be changed once the workspace has been created
  /// [systemDatastoresAuthMode] The auth mode used for accessing the system datastores of the workspace.
  /// [tags] Contains resource tags defined as key/value pairs.
  /// [v1LegacyMode] Enabling v1_legacy_mode may prevent you from using features provided by the v2 API.
  /// [workspaceHubConfig] WorkspaceHub's configuration object.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  WorkspaceArgs({
    this.allowPublicAccessWhenBehindVnet,
    this.applicationInsights,
    this.associatedWorkspaces,
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
    this.identity,
    this.imageBuildCompute,
    this.keyVault,
    this.kind,
    this.location,
    this.managedNetwork,
    this.primaryUserAssignedIdentity,
    this.provisionNetworkNow,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.serverlessComputeSettings,
    this.serviceManagedResourcesSettings,
    this.sharedPrivateLinkResources,
    this.sku,
    this.storageAccount,
    this.systemDatastoresAuthMode,
    this.tags,
    this.v1LegacyMode,
    this.workspaceHubConfig,
    this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPublicAccessWhenBehindVnet': ?allowPublicAccessWhenBehindVnet,
      'applicationInsights': ?applicationInsights,
      'associatedWorkspaces': ?associatedWorkspaces,
      'containerRegistry': ?containerRegistry,
      'description': ?description,
      'discoveryUrl': ?discoveryUrl,
      'enableDataIsolation': ?enableDataIsolation,
      'enableServiceSideCMKEncryption': ?enableServiceSideCMKEncryption,
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionProperty, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'featureStoreSettings': ?pulumi.Input.mapOptionalInputValue<FeatureStoreSettings, Map<String, dynamic>>(featureStoreSettings, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'hbiWorkspace': ?hbiWorkspace,
      'hubResourceId': ?hubResourceId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'imageBuildCompute': ?imageBuildCompute,
      'keyVault': ?keyVault,
      'kind': ?kind,
      'location': ?location,
      'managedNetwork': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkSettings, Map<String, dynamic>>(managedNetwork, (value) => value.toMap()),
      'primaryUserAssignedIdentity': ?primaryUserAssignedIdentity,
      'provisionNetworkNow': ?provisionNetworkNow,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'serverlessComputeSettings': ?pulumi.Input.mapOptionalInputValue<ServerlessComputeSettings, Map<String, dynamic>>(serverlessComputeSettings, (value) => value.toMap()),
      'serviceManagedResourcesSettings': ?pulumi.Input.mapOptionalInputValue<ServiceManagedResourcesSettings, Map<String, dynamic>>(serviceManagedResourcesSettings, (value) => value.toMap()),
      'sharedPrivateLinkResources': ?pulumi.Input.mapOptionalInputValue<List<SharedPrivateLinkResource>, List<Map<String, dynamic>>>(sharedPrivateLinkResources, (value) => pulumi.Input.encodeList<SharedPrivateLinkResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageAccount': ?storageAccount,
      'systemDatastoresAuthMode': ?systemDatastoresAuthMode,
      'tags': ?tags,
      'v1LegacyMode': ?v1LegacyMode,
      'workspaceHubConfig': ?pulumi.Input.mapOptionalInputValue<WorkspaceHubConfig, Map<String, dynamic>>(workspaceHubConfig, (value) => value.toMap()),
      'workspaceName': ?workspaceName,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      allowPublicAccessWhenBehindVnet: map['allowPublicAccessWhenBehindVnet'] == null ? null : (map['allowPublicAccessWhenBehindVnet']! as bool).input(),
      applicationInsights: map['applicationInsights'] == null ? null : (map['applicationInsights']! as String).input(),
      associatedWorkspaces: map['associatedWorkspaces'] == null ? null : ((map['associatedWorkspaces']! as List).cast<String>()).input(),
      containerRegistry: map['containerRegistry'] == null ? null : (map['containerRegistry']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      discoveryUrl: map['discoveryUrl'] == null ? null : (map['discoveryUrl']! as String).input(),
      enableDataIsolation: map['enableDataIsolation'] == null ? null : (map['enableDataIsolation']! as bool).input(),
      enableServiceSideCMKEncryption: map['enableServiceSideCMKEncryption'] == null ? null : (map['enableServiceSideCMKEncryption']! as bool).input(),
      encryption: map['encryption'] == null ? null : (EncryptionProperty.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      featureStoreSettings: map['featureStoreSettings'] == null ? null : (FeatureStoreSettings.fromMap((map['featureStoreSettings']! as Map).cast<String, dynamic>())).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      hbiWorkspace: map['hbiWorkspace'] == null ? null : (map['hbiWorkspace']! as bool).input(),
      hubResourceId: map['hubResourceId'] == null ? null : (map['hubResourceId']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      imageBuildCompute: map['imageBuildCompute'] == null ? null : (map['imageBuildCompute']! as String).input(),
      keyVault: map['keyVault'] == null ? null : (map['keyVault']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedNetwork: map['managedNetwork'] == null ? null : (ManagedNetworkSettings.fromMap((map['managedNetwork']! as Map).cast<String, dynamic>())).input(),
      primaryUserAssignedIdentity: map['primaryUserAssignedIdentity'] == null ? null : (map['primaryUserAssignedIdentity']! as String).input(),
      provisionNetworkNow: map['provisionNetworkNow'] == null ? null : (map['provisionNetworkNow']! as bool).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverlessComputeSettings: map['serverlessComputeSettings'] == null ? null : (ServerlessComputeSettings.fromMap((map['serverlessComputeSettings']! as Map).cast<String, dynamic>())).input(),
      serviceManagedResourcesSettings: map['serviceManagedResourcesSettings'] == null ? null : (ServiceManagedResourcesSettings.fromMap((map['serviceManagedResourcesSettings']! as Map).cast<String, dynamic>())).input(),
      sharedPrivateLinkResources: map['sharedPrivateLinkResources'] == null ? null : (pulumi.Input.decodeList<SharedPrivateLinkResource>(map['sharedPrivateLinkResources']!, (value) => SharedPrivateLinkResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      storageAccount: map['storageAccount'] == null ? null : (map['storageAccount']! as String).input(),
      systemDatastoresAuthMode: map['systemDatastoresAuthMode'] == null ? null : (map['systemDatastoresAuthMode']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      v1LegacyMode: map['v1LegacyMode'] == null ? null : (map['v1LegacyMode']! as bool).input(),
      workspaceHubConfig: map['workspaceHubConfig'] == null ? null : (WorkspaceHubConfig.fromMap((map['workspaceHubConfig']! as Map).cast<String, dynamic>())).input(),
      workspaceName: map['workspaceName'] == null ? null : (map['workspaceName']! as String).input(),
    );
  }
}

