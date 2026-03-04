import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'online_endpoint_args.dart';
import 'online_endpoint_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:machinelearningservices:OnlineEndpoint string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/onlineEndpoints/{endpointName}
/// ```
class OnlineEndpointMachinelearningservices extends pulumi.CustomResource {
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
  late final pulumi.Output<OnlineEndpointResponse> onlineEndpointProperties;

  /// Sku details required for ARM contract for Autoscaling.
  late final pulumi.Output<SkuResponse?> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OnlineEndpointMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OnlineEndpointMachinelearningservices]. {@macro pulumi_machinelearningservices_online_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OnlineEndpointMachinelearningservices(
    String name, {
    OnlineEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:OnlineEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    onlineEndpointProperties = registerOutput<OnlineEndpointResponse>(
      'onlineEndpointProperties',
    );
    sku = registerOutput<SkuResponse?>('sku');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
