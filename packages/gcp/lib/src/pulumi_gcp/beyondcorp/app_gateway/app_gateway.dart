import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_gateway_allocated_connection/app_gateway_allocated_connection.dart';
import 'app_gateway_args.dart';

/// A BeyondCorp AppGateway resource represents a BeyondCorp protected AppGateway to a remote application. It creates
/// all the necessary GCP components needed for creating a BeyondCorp protected AppGateway. Multiple connectors can be
/// authorised for a single AppGateway.
///
///
/// To get more information about AppGateway, see:
///
/// * [API documentation](https://cloud.google.com/beyondcorp/docs/reference/rest#rest-resource:-v1.projects.locations.appgateways)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/beyondcorp-enterprise/docs/enable-app-connector)
///
/// ## Example Usage
///
/// ### Beyondcorp App Gateway Basic
///
///
///
/// ### Beyondcorp App Gateway Full
///
///
///
///
/// ## Import
///
/// AppGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/appGateways/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AppGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default projects/{{project}}/locations/{{region}}/appGateways/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appGateway:AppGateway default {{name}}
/// ```
class AppGateway extends pulumi.CustomResource {
  /// A list of connections allocated for the Gateway.
  /// Structure is documented below.
  late final pulumi.Output<List<AppGatewayAllocatedConnection>>
      allocatedConnections;

  /// An arbitrary user-provided name for the AppGateway.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The type of hosting used by the AppGateway.
  /// Default value is `HOST_TYPE_UNSPECIFIED`.
  /// Possible values are: `HOST_TYPE_UNSPECIFIED`, `GCP_REGIONAL_MIG`.
  late final pulumi.Output<String?> hostType;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// ID of the AppGateway.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of the AppGateway.
  late final pulumi.Output<String?> region;

  /// Represents the different states of a AppGateway.
  late final pulumi.Output<String> state;

  /// The type of network connectivity used by the AppGateway.
  /// Default value is `TYPE_UNSPECIFIED`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `TCP_PROXY`.
  late final pulumi.Output<String?> type;

  /// Server-defined URI for this resource.
  late final pulumi.Output<String> uri;

  AppGateway(
    String name, {
    AppGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appGateway:AppGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocatedConnections =
        registerOutput<List<AppGatewayAllocatedConnection>>(
            'allocatedConnections');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.hostType = registerOutput<String?>('hostType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String?>('type');
    this.uri = registerOutput<String>('uri');
  }
}
