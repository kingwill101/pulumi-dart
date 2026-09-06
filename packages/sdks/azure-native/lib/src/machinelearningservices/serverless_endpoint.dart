import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'serverless_endpoint_args.dart';
import 'serverless_endpoint_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-08-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// A Serverless Endpoint requires a Marketplace subscription. You can create one via the [MarketplaceSubscription resource](https://www.pulumi.com/registry/packages/azure-native/api-docs/machinelearningservices/marketplacesubscription/) and then making your endpoint [depend](https://www.pulumi.com/docs/iac/concepts/options/dependson/) on it.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:machinelearningservices:ServerlessEndpoint string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/serverlessEndpoints/{name}
/// ```
class ServerlessEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<ServerlessEndpointPropertiesResponse> properties;
  /// Sku details required for ARM contract for Autoscaling.
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServerlessEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessEndpoint]. {@macro pulumi_machinelearningservices_serverless_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessEndpoint(
    String name, {
    ServerlessEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:ServerlessEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ServerlessEndpointPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessEndpointPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServerlessEndpoint] resource.
  ServerlessEndpoint.reference(String urn)
    : super(
        'azure-native:machinelearningservices:ServerlessEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ServerlessEndpointPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessEndpointPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
