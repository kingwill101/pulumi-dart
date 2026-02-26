// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpn_connection_vpc_project/vpn_connection_vpc_project.dart';

/// The set of arguments for VpnConnection.
class VpnConnectionArgs {
  /// The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  final Input<String> cluster;

  /// Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  final Input<bool>? enableHighAvailability;

  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Google Cloud Platform location.
  final Input<String> location;

  /// The resource name of VPN connection
  final Input<String>? name;

  /// NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// This is empty if NAT is not used.
  final Input<String>? natGatewayIp;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The VPN connection Cloud Router name.
  final Input<String>? router;

  /// The network ID of VPC to connect to.
  final Input<String>? vpc;

  /// Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  /// Structure is documented below.
  final Input<VpnConnectionVpcProject>? vpcProject;

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
      map['vpcProject'] = Input.mapOptionalInputValue<VpnConnectionVpcProject,
          Map<String, dynamic>>(vpcProjectValue, (value) => value.toMap());
    }
    return map;
  }

  factory VpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpnConnectionArgs(
      cluster: Input.asInput<String>(map['cluster']),
      enableHighAvailability:
          Input.asOptionalInput<bool>(map['enableHighAvailability']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      natGatewayIp: Input.asOptionalInput<String>(map['natGatewayIp']),
      project: Input.asOptionalInput<String>(map['project']),
      router: Input.asOptionalInput<String>(map['router']),
      vpc: Input.asOptionalInput<String>(map['vpc']),
      vpcProject:
          Input.asOptionalInput<VpnConnectionVpcProject>(map['vpcProject']),
    );
  }
}
