import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafana_args.dart';
import 'managed_grafana_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'resource_sku_response.dart';
import 'system_data_response.dart';

/// The grafana resource type.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-08-01, 2022-10-01-preview, 2023-09-01, 2023-10-01-preview, 2024-11-01-preview, 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:dashboard:Grafana myWorkspace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Dashboard/grafana/{workspaceName}
/// ```
class Grafana extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed identity of the grafana resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the grafana resource lives
  late final pulumi.Output<String?> location;
  /// Name of the grafana resource.
  late final pulumi.Output<String> name;
  /// Properties specific to the grafana resource.
  late final pulumi.Output<ManagedGrafanaPropertiesResponse> properties;
  /// The Sku of the grafana resource.
  late final pulumi.Output<ResourceSkuResponse?> sku;
  /// The system meta data relating to this grafana resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tags for grafana resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the grafana resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Grafana].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Grafana]. {@macro pulumi_dashboard_grafana_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Grafana(
    String name, {
    GrafanaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dashboard:Grafana',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ManagedGrafanaPropertiesResponse>('properties');
    this.sku = registerOutput<ResourceSkuResponse?>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
