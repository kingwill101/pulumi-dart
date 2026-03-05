import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_property_response.dart';
import 'feature_store_settings_response.dart';
import 'managed_network_settings_response.dart';
import 'managed_service_identity_response.dart';
import 'notebook_resource_info_response.dart';
import 'serverless_compute_settings_response.dart';
import 'service_managed_resources_settings_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';
import 'workspace_args.dart';
import 'workspace_hub_config_response.dart';

/// An object that represents a machine learning workspace.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2020-05-01-preview, 2020-05-15-preview, 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:machinelearningservices:Workspace testworkspace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The flag to indicate whether to allow public access when behind VNet.
  late final pulumi.Output<bool?> allowPublicAccessWhenBehindVnet;
  /// ARM id of the application insights associated with this workspace.
  late final pulumi.Output<String?> applicationInsights;
  late final pulumi.Output<List<String>?> associatedWorkspaces;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// ARM id of the container registry associated with this workspace.
  late final pulumi.Output<String?> containerRegistry;
  /// The description of this workspace.
  late final pulumi.Output<String?> description;
  /// Url for the discovery service to identify regional endpoints for machine learning experimentation services
  late final pulumi.Output<String?> discoveryUrl;
  late final pulumi.Output<bool?> enableDataIsolation;
  late final pulumi.Output<bool?> enableServiceSideCMKEncryption;
  /// The encryption settings of Azure ML workspace.
  late final pulumi.Output<EncryptionPropertyResponse?> encryption;
  /// Settings for feature store type workspace.
  late final pulumi.Output<FeatureStoreSettingsResponse?> featureStoreSettings;
  /// The friendly name for this workspace. This name in mutable
  late final pulumi.Output<String?> friendlyName;
  /// The flag to signal HBI data in the workspace and reduce diagnostic data collected by the service
  late final pulumi.Output<bool?> hbiWorkspace;
  late final pulumi.Output<String?> hubResourceId;
  /// The identity of the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The compute name for image build
  late final pulumi.Output<String?> imageBuildCompute;
  /// ARM id of the key vault associated with this workspace. This cannot be changed once the workspace has been created
  late final pulumi.Output<String?> keyVault;
  late final pulumi.Output<String?> kind;
  /// Specifies the location of the resource.
  late final pulumi.Output<String?> location;
  /// Managed Network settings for a machine learning workspace.
  late final pulumi.Output<ManagedNetworkSettingsResponse?> managedNetwork;
  /// The URI associated with this workspace that machine learning flow must point at to set up tracking.
  late final pulumi.Output<String> mlFlowTrackingUri;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The notebook info of Azure ML workspace.
  late final pulumi.Output<NotebookResourceInfoResponse> notebookInfo;
  /// The user assigned identity resource id that represents the workspace identity.
  late final pulumi.Output<String?> primaryUserAssignedIdentity;
  /// The list of private endpoint connections in the workspace.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Count of private connections in the workspace
  late final pulumi.Output<int> privateLinkCount;
  /// Set to trigger the provisioning of the managed VNet with the default Options when creating a Workspace with the managed VNet enabled, or else it does nothing.
  late final pulumi.Output<bool?> provisionNetworkNow;
  /// The current deployment state of workspace resource. The provisioningState is to indicate states for resource provisioning.
  late final pulumi.Output<String> provisioningState;
  /// Whether requests from Public Network are allowed.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Settings for serverless compute created in the workspace
  late final pulumi.Output<ServerlessComputeSettingsResponse?> serverlessComputeSettings;
  /// The service managed resource settings.
  late final pulumi.Output<ServiceManagedResourcesSettingsResponse?> serviceManagedResourcesSettings;
  /// The name of the managed resource group created by workspace RP in customer subscription if the workspace is CMK workspace
  late final pulumi.Output<String> serviceProvisionedResourceGroup;
  /// The list of shared private link resources in this workspace.
  late final pulumi.Output<List<Map<String, dynamic>>?> sharedPrivateLinkResources;
  /// The sku of the workspace.
  late final pulumi.Output<SkuResponse?> sku;
  /// ARM id of the storage account associated with this workspace. This cannot be changed once the workspace has been created
  late final pulumi.Output<String?> storageAccount;
  /// If the storage associated with the workspace has hierarchical namespace(HNS) enabled.
  late final pulumi.Output<bool> storageHnsEnabled;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The auth mode used for accessing the system datastores of the workspace.
  late final pulumi.Output<String?> systemDatastoresAuthMode;
  /// Contains resource tags defined as key/value pairs.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The tenant id associated with this workspace.
  late final pulumi.Output<String> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Enabling v1_legacy_mode may prevent you from using features provided by the v2 API.
  late final pulumi.Output<bool?> v1LegacyMode;
  /// WorkspaceHub's configuration object.
  late final pulumi.Output<WorkspaceHubConfigResponse?> workspaceHubConfig;
  /// The immutable id associated with this workspace.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_machinelearningservices_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowPublicAccessWhenBehindVnet = registerOutput<bool?>('allowPublicAccessWhenBehindVnet');
    applicationInsights = registerOutput<String?>('applicationInsights');
    associatedWorkspaces = registerOutput<List<String>?>('associatedWorkspaces');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerRegistry = registerOutput<String?>('containerRegistry');
    description = registerOutput<String?>('description');
    discoveryUrl = registerOutput<String?>('discoveryUrl');
    enableDataIsolation = registerOutput<bool?>('enableDataIsolation');
    enableServiceSideCMKEncryption = registerOutput<bool?>('enableServiceSideCMKEncryption');
    encryption = registerOutput<EncryptionPropertyResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    featureStoreSettings = registerOutput<FeatureStoreSettingsResponse?>('featureStoreSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeatureStoreSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String?>('friendlyName');
    hbiWorkspace = registerOutput<bool?>('hbiWorkspace');
    hubResourceId = registerOutput<String?>('hubResourceId');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageBuildCompute = registerOutput<String?>('imageBuildCompute');
    keyVault = registerOutput<String?>('keyVault');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    managedNetwork = registerOutput<ManagedNetworkSettingsResponse?>('managedNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedNetworkSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mlFlowTrackingUri = registerOutput<String>('mlFlowTrackingUri');
    this.name = registerOutput<String>('name');
    notebookInfo = registerOutput<NotebookResourceInfoResponse>('notebookInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotebookResourceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    primaryUserAssignedIdentity = registerOutput<String?>('primaryUserAssignedIdentity');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    privateLinkCount = registerOutput<int>('privateLinkCount');
    provisionNetworkNow = registerOutput<bool?>('provisionNetworkNow');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    serverlessComputeSettings = registerOutput<ServerlessComputeSettingsResponse?>('serverlessComputeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessComputeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceManagedResourcesSettings = registerOutput<ServiceManagedResourcesSettingsResponse?>('serviceManagedResourcesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceManagedResourcesSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceProvisionedResourceGroup = registerOutput<String>('serviceProvisionedResourceGroup');
    sharedPrivateLinkResources = registerOutput<List<Map<String, dynamic>>?>('sharedPrivateLinkResources');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccount = registerOutput<String?>('storageAccount');
    storageHnsEnabled = registerOutput<bool>('storageHnsEnabled');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemDatastoresAuthMode = registerOutput<String?>('systemDatastoresAuthMode');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
    v1LegacyMode = registerOutput<bool?>('v1LegacyMode');
    workspaceHubConfig = registerOutput<WorkspaceHubConfigResponse?>('workspaceHubConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceHubConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }
}
