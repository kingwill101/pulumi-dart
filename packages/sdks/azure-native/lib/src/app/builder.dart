import 'package:pulumi/pulumi.dart' as pulumi;
import 'builder_args.dart';
import 'container_registry_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Information about the SourceToCloud builder resource.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-08-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:app:Builder testBuilder /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/builders/{builderName}
/// ```
class Builder extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of mappings of container registries and the managed identity used to connect to it.
  late final pulumi.Output<List<ContainerRegistryResponse>?> containerRegistries;
  /// Resource ID of the container apps environment that the builder is associated with.
  late final pulumi.Output<String> environmentId;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of a builder resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Builder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Builder]. {@macro pulumi_app_builder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Builder(
    String name, {
    BuilderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:Builder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerRegistries = registerOutput<List<ContainerRegistryResponse>?>('containerRegistries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerRegistryResponse>(guardedValue, (value) => ContainerRegistryResponse.fromMap((value as Map).cast<String, dynamic>())); });
    environmentId = registerOutput<String>('environmentId');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Builder] resource.
  Builder.reference(String urn)
    : super(
        'azure-native:app:Builder',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerRegistries = registerOutput<List<ContainerRegistryResponse>?>('containerRegistries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerRegistryResponse>(guardedValue, (value) => ContainerRegistryResponse.fromMap((value as Map).cast<String, dynamic>())); });
    environmentId = registerOutput<String>('environmentId');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
