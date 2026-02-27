import 'package:pulumi/pulumi.dart';
import '../external_vpn_gateway_interface/external_vpn_gateway_interface.dart';
import 'external_vpn_gateway_args.dart';

/// Represents a VPN gateway managed outside of GCP.
///
///
/// To get more information about ExternalVpnGateway, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/externalVpnGateways)
///
/// ## Example Usage
///
/// ### External Vpn Gateway
///
///
///
///
/// ## Import
///
/// ExternalVpnGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/externalVpnGateways/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ExternalVpnGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/externalVpnGateway:ExternalVpnGateway default projects/{{project}}/global/externalVpnGateways/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/externalVpnGateway:ExternalVpnGateway default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/externalVpnGateway:ExternalVpnGateway default {{name}}
/// ```
class ExternalVpnGateway extends CustomResource {
  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// A list of interfaces on this external VPN gateway.
  /// Structure is documented below.
  late final Output<List<ExternalVpnGatewayInterface>?> interfaces;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels for the external VPN gateway resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Indicates the redundancy type of this external VPN gateway
  /// Possible values are: `FOUR_IPS_REDUNDANCY`, `SINGLE_IP_INTERNALLY_REDUNDANT`, `TWO_IPS_REDUNDANCY`.
  late final Output<String?> redundancyType;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  ExternalVpnGateway(
    String name, {
    ExternalVpnGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/externalVpnGateway:ExternalVpnGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.interfaces =
        registerOutput<List<ExternalVpnGatewayInterface>?>('interfaces');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.redundancyType = registerOutput<String?>('redundancyType');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
