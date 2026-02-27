// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpn_connection_vpc_project/vpn_connection_vpc_project.dart';

/// The set of arguments for VpnConnection.
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

  VpnConnectionArgs({
    required this.cluster,
    this.enableHighAvailability,
    this.labels,
    required this.location,
    this.name,
    this.natGatewayIp,
    this.project,
    this.router,
    this.vpc,
    this.vpcProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    final enableHighAvailabilityValue = enableHighAvailability;
    if (enableHighAvailabilityValue != null) {
      map['enableHighAvailability'] = enableHighAvailabilityValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final natGatewayIpValue = natGatewayIp;
    if (natGatewayIpValue != null) {
      map['natGatewayIp'] = natGatewayIpValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final routerValue = router;
    if (routerValue != null) {
      map['router'] = routerValue;
    }
    final vpcValue = vpc;
    if (vpcValue != null) {
      map['vpc'] = vpcValue;
    }
    final vpcProjectValue = vpcProject;
    if (vpcProjectValue != null) {
      map['vpcProject'] = pulumi.Input.mapOptionalInputValue<
          VpnConnectionVpcProject,
          Map<String, dynamic>>(vpcProjectValue, (value) => value.toMap());
    }
    return map;
  }

  factory VpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpnConnectionArgs(
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      enableHighAvailability:
          pulumi.Input.asOptionalInput<bool>(map['enableHighAvailability']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      natGatewayIp: pulumi.Input.asOptionalInput<String>(map['natGatewayIp']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      router: pulumi.Input.asOptionalInput<String>(map['router']),
      vpc: pulumi.Input.asOptionalInput<String>(map['vpc']),
      vpcProject: pulumi.Input.asOptionalInput<VpnConnectionVpcProject>(
          map['vpcProject']),
    );
  }
}
