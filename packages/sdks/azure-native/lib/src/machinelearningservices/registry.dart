import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id_response.dart';
import 'managed_resource_group_settings_response.dart';
import 'managed_service_identity_response.dart';
import 'registry_args.dart';
import 'registry_private_endpoint_connection_response.dart';
import 'registry_region_arm_details_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:machinelearningservices:Registry string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}
/// ```
class Registry extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Discovery URL for the Registry
  late final pulumi.Output<String?> discoveryUrl;
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// IntellectualPropertyPublisher for the registry
  late final pulumi.Output<String?> intellectualPropertyPublisher;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// ResourceId of the managed RG if the registry has system created resources
  late final pulumi.Output<ArmResourceIdResponse?> managedResourceGroup;
  /// Managed resource group specific settings
  late final pulumi.Output<ManagedResourceGroupSettingsResponse?> managedResourceGroupSettings;
  /// MLFlow Registry URI for the Registry
  late final pulumi.Output<String?> mlFlowRegistryUri;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Is the Registry accessible from the internet?
  /// Possible values: "Enabled" or "Disabled"
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Details of each region the registry is in
  late final pulumi.Output<List<RegistryRegionArmDetailsResponse>?> regionDetails;
  /// Private endpoint connections info used for pending connections in private link portal
  late final pulumi.Output<List<RegistryPrivateEndpointConnectionResponse>?> registryPrivateEndpointConnections;
  /// Sku details required for ARM contract for Autoscaling.
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Registry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Registry]. {@macro pulumi_machinelearningservices_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Registry(
    String name, {
    RegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:Registry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoveryUrl = registerOutput<String?>('discoveryUrl');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    intellectualPropertyPublisher = registerOutput<String?>('intellectualPropertyPublisher');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedResourceGroup = registerOutput<ArmResourceIdResponse?>('managedResourceGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ArmResourceIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedResourceGroupSettings = registerOutput<ManagedResourceGroupSettingsResponse?>('managedResourceGroupSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedResourceGroupSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mlFlowRegistryUri = registerOutput<String?>('mlFlowRegistryUri');
    this.name = registerOutput<String>('name');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    regionDetails = registerOutput<List<RegistryRegionArmDetailsResponse>?>('regionDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryRegionArmDetailsResponse>(guardedValue, (value) => RegistryRegionArmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    registryPrivateEndpointConnections = registerOutput<List<RegistryPrivateEndpointConnectionResponse>?>('registryPrivateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryPrivateEndpointConnectionResponse>(guardedValue, (value) => RegistryPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Registry] resource.
  Registry.reference(String urn)
    : super(
        'azure-native:machinelearningservices:Registry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoveryUrl = registerOutput<String?>('discoveryUrl');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    intellectualPropertyPublisher = registerOutput<String?>('intellectualPropertyPublisher');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedResourceGroup = registerOutput<ArmResourceIdResponse?>('managedResourceGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ArmResourceIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedResourceGroupSettings = registerOutput<ManagedResourceGroupSettingsResponse?>('managedResourceGroupSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedResourceGroupSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mlFlowRegistryUri = registerOutput<String?>('mlFlowRegistryUri');
    this.name = registerOutput<String>('name');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    regionDetails = registerOutput<List<RegistryRegionArmDetailsResponse>?>('regionDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryRegionArmDetailsResponse>(guardedValue, (value) => RegistryRegionArmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    registryPrivateEndpointConnections = registerOutput<List<RegistryPrivateEndpointConnectionResponse>?>('registryPrivateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryPrivateEndpointConnectionResponse>(guardedValue, (value) => RegistryPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
