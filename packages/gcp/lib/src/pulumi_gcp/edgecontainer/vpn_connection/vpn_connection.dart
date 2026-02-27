import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpn_connection_detail/vpn_connection_detail.dart';
import '../vpn_connection_vpc_project/vpn_connection_vpc_project.dart';
import 'vpn_connection_args.dart';

/// A VPN connection
///
///
/// To get more information about VpnConnection, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/container/rest/v1/projects.locations.vpnConnections)
/// * How-to Guides
/// * [Google Distributed Cloud Edge](https://cloud.google.com/distributed-cloud/edge/latest/docs)
///
/// ## Example Usage
///
/// ### Edgecontainer Vpn Connection
///
///
///
///
/// ## Import
///
/// VpnConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vpnConnections/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, VpnConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/vpnConnection:VpnConnection default projects/{{project}}/locations/{{location}}/vpnConnections/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/vpnConnection:VpnConnection default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/vpnConnection:VpnConnection default {{location}}/{{name}}
/// ```
class VpnConnection extends pulumi.CustomResource {
  /// The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  late final pulumi.Output<String> cluster;

  /// The time when the VPN connection was created.
  late final pulumi.Output<String> createTime;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<List<VpnConnectionDetail>> details;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  late final pulumi.Output<bool> enableHighAvailability;

  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Google Cloud Platform location.
  late final pulumi.Output<String> location;

  /// The resource name of VPN connection
  late final pulumi.Output<String> name;

  /// NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// This is empty if NAT is not used.
  late final pulumi.Output<String?> natGatewayIp;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The VPN connection Cloud Router name.
  late final pulumi.Output<String?> router;

  /// The time when the VPN connection was last updated.
  late final pulumi.Output<String> updateTime;

  /// The network ID of VPC to connect to.
  late final pulumi.Output<String?> vpc;

  /// Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  /// Structure is documented below.
  late final pulumi.Output<VpnConnectionVpcProject?> vpcProject;

  VpnConnection(
    String name, {
    VpnConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgecontainer/vpnConnection:VpnConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cluster = registerOutput<String>('cluster');
    this.createTime = registerOutput<String>('createTime');
    this.details = registerOutput<List<VpnConnectionDetail>>('details');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableHighAvailability =
        registerOutput<bool>('enableHighAvailability');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.natGatewayIp = registerOutput<String?>('natGatewayIp');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.router = registerOutput<String?>('router');
    this.updateTime = registerOutput<String>('updateTime');
    this.vpc = registerOutput<String?>('vpc');
    this.vpcProject = registerOutput<VpnConnectionVpcProject?>('vpcProject');
  }
}
