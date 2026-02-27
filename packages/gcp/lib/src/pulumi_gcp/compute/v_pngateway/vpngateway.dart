import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpngateway_args.dart';

/// Represents a VPN gateway running in GCP. This virtual device is managed
/// by Google, but used only by you.
///
///
/// To get more information about VpnGateway, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/targetVpnGateways)
///
/// > **Warning:** Classic VPN is deprecating certain functionality on October 31, 2021. For more information,
/// see the [Classic VPN partial deprecation page](https://cloud.google.com/network-connectivity/docs/vpn/deprecations/classic-vpn-deprecation).
///
/// ## Example Usage
///
/// ### Target Vpn Gateway Basic
///
///
///
///
/// ## Import
///
/// VpnGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetVpnGateways/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, VpnGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/vPNGateway:VPNGateway default projects/{{project}}/regions/{{region}}/targetVpnGateways/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/vPNGateway:VPNGateway default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/vPNGateway:VPNGateway default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/vPNGateway:VPNGateway default {{name}}
/// ```
class VPNGateway extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// The unique identifier for the resource.
  late final pulumi.Output<int> gatewayId;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The network this VPN gateway is accepting traffic for.
  late final pulumi.Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region this gateway should sit in.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  VPNGateway(
    String name, {
    VPNGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/vPNGateway:VPNGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.gatewayId = registerOutput<int>('gatewayId');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
