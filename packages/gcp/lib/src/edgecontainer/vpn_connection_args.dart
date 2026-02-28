// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_vpc_project.dart';

/// {@template pulumi_edgecontainer_vpn_connection_vpn_connection_args_doc}
/// The set of arguments for VpnConnection.
/// {@endtemplate}
/// {@macro pulumi_edgecontainer_vpn_connection_vpn_connection_args_doc}
class VpnConnectionArgs {
  /// The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  final pulumi.Input<String> cluster;
  /// Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  final pulumi.Input<bool>? enableHighAvailability;
  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Google Cloud Platform location.
  final pulumi.Input<String> location;
  /// The resource name of VPN connection
  final pulumi.Input<String>? name;
  /// NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// This is empty if NAT is not used.
  final pulumi.Input<String>? natGatewayIp;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The VPN connection Cloud Router name.
  final pulumi.Input<String>? router;
  /// The network ID of VPC to connect to.
  final pulumi.Input<String>? vpc;
  /// Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  /// Structure is documented below.
  final pulumi.Input<VpnConnectionVpcProject>? vpcProject;

  /// Creates a new [VpnConnectionArgs].
  /// [cluster] The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  /// [enableHighAvailability] Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  /// [labels] Labels associated with this resource.
  /// [location] Google Cloud Platform location.
  /// [name] The resource name of VPN connection
  /// [natGatewayIp] NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [router] The VPN connection Cloud Router name.
  /// [vpc] The network ID of VPC to connect to.
  /// [vpcProject] Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  VpnConnectionArgs({
    required String cluster,
    bool? enableHighAvailability,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? natGatewayIp,
    String? project,
    String? router,
    String? vpc,
    VpnConnectionVpcProject? vpcProject,
  }) :
      cluster = pulumi.Input.asInput<String>(cluster),
      enableHighAvailability = pulumi.Input.asOptionalInput<bool>(enableHighAvailability),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      natGatewayIp = pulumi.Input.asOptionalInput<String>(natGatewayIp),
      project = pulumi.Input.asOptionalInput<String>(project),
      router = pulumi.Input.asOptionalInput<String>(router),
      vpc = pulumi.Input.asOptionalInput<String>(vpc),
      vpcProject = pulumi.Input.asOptionalInput<VpnConnectionVpcProject>(vpcProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'enableHighAvailability': ?enableHighAvailability,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'natGatewayIp': ?natGatewayIp,
      'project': ?project,
      'router': ?router,
      'vpc': ?vpc,
      'vpcProject': ?pulumi.Input.mapOptionalInputValue<VpnConnectionVpcProject, Map<String, dynamic>>(vpcProject, (value) => value.toMap()),
    };
  }

  factory VpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpnConnectionArgs(
      cluster: map['cluster'] as String,
      enableHighAvailability: map['enableHighAvailability'] == null ? null : map['enableHighAvailability'] as bool,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      natGatewayIp: map['natGatewayIp'] == null ? null : map['natGatewayIp'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      router: map['router'] == null ? null : map['router'] as String,
      vpc: map['vpc'] == null ? null : map['vpc'] as String,
      vpcProject: map['vpcProject'] == null ? null : VpnConnectionVpcProject.fromMap((map['vpcProject'] as Map).cast<String, dynamic>()),
    );
  }
}

