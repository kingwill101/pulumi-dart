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
  final pulumi.Input<ServiceManagedResourcesSettings>?
  serviceManagedResourcesSettings;

  /// The list of shared private link resources in this workspace.
  final pulumi.Input<List<SharedPrivateLinkResource>>?
  sharedPrivateLinkResources;

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
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionProperty,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'featureStoreSettings':
          ?pulumi.Input.mapOptionalInputValue<
            FeatureStoreSettings,
            Map<String, dynamic>
          >(featureStoreSettings, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'hbiWorkspace': ?hbiWorkspace,
      'hubResourceId': ?hubResourceId,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'imageBuildCompute': ?imageBuildCompute,
      'keyVault': ?keyVault,
      'kind': ?kind,
      'location': ?location,
      'managedNetwork':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedNetworkSettings,
            Map<String, dynamic>
          >(managedNetwork, (value) => value.toMap()),
      'primaryUserAssignedIdentity': ?primaryUserAssignedIdentity,
      'provisionNetworkNow': ?provisionNetworkNow,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'serverlessComputeSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ServerlessComputeSettings,
            Map<String, dynamic>
          >(serverlessComputeSettings, (value) => value.toMap()),
      'serviceManagedResourcesSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceManagedResourcesSettings,
            Map<String, dynamic>
          >(serviceManagedResourcesSettings, (value) => value.toMap()),
      'sharedPrivateLinkResources':
          ?pulumi.Input.mapOptionalInputValue<
            List<SharedPrivateLinkResource>,
            List<Map<String, dynamic>>
          >(
            sharedPrivateLinkResources,
            (value) =>
                pulumi.Input.encodeList<
                  SharedPrivateLinkResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'storageAccount': ?storageAccount,
      'systemDatastoresAuthMode': ?systemDatastoresAuthMode,
      'tags': ?tags,
      'v1LegacyMode': ?v1LegacyMode,
      'workspaceHubConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WorkspaceHubConfig,
            Map<String, dynamic>
          >(workspaceHubConfig, (value) => value.toMap()),
      'workspaceName': ?workspaceName,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      allowPublicAccessWhenBehindVnet: (() {
        final guardedValue = map['allowPublicAccessWhenBehindVnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      applicationInsights: (() {
        final guardedValue = map['applicationInsights'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associatedWorkspaces: (() {
        final guardedValue = map['associatedWorkspaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      containerRegistry: (() {
        final guardedValue = map['containerRegistry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      discoveryUrl: (() {
        final guardedValue = map['discoveryUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDataIsolation: (() {
        final guardedValue = map['enableDataIsolation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableServiceSideCMKEncryption: (() {
        final guardedValue = map['enableServiceSideCMKEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionProperty.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      featureStoreSettings: (() {
        final guardedValue = map['featureStoreSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FeatureStoreSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      friendlyName: (() {
        final guardedValue = map['friendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hbiWorkspace: (() {
        final guardedValue = map['hbiWorkspace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hubResourceId: (() {
        final guardedValue = map['hubResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      imageBuildCompute: (() {
        final guardedValue = map['imageBuildCompute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVault: (() {
        final guardedValue = map['keyVault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedNetwork: (() {
        final guardedValue = map['managedNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedNetworkSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      primaryUserAssignedIdentity: (() {
        final guardedValue = map['primaryUserAssignedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisionNetworkNow: (() {
        final guardedValue = map['provisionNetworkNow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverlessComputeSettings: (() {
        final guardedValue = map['serverlessComputeSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServerlessComputeSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceManagedResourcesSettings: (() {
        final guardedValue = map['serviceManagedResourcesSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceManagedResourcesSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sharedPrivateLinkResources: (() {
        final guardedValue = map['sharedPrivateLinkResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SharedPrivateLinkResource>(
            guardedValue,
            (value) => SharedPrivateLinkResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      storageAccount: (() {
        final guardedValue = map['storageAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemDatastoresAuthMode: (() {
        final guardedValue = map['systemDatastoresAuthMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      v1LegacyMode: (() {
        final guardedValue = map['v1LegacyMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      workspaceHubConfig: (() {
        final guardedValue = map['workspaceHubConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkspaceHubConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      workspaceName: (() {
        final guardedValue = map['workspaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
