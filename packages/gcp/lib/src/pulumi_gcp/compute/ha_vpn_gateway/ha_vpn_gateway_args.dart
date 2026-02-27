// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ha_vpn_gateway_vpn_interface/ha_vpn_gateway_vpn_interface.dart';

/// The set of arguments for HaVpnGateway.
class HaVpnGatewayArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
  /// Default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? gatewayIpVersion;

  /// Labels for this resource. These can only be added or modified by the setLabels method.
  /// Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The network this VPN gateway is accepting traffic for.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region this gateway should sit in.
  final pulumi.Input<String>? region;

  /// The stack type for this VPN gateway to identify the IP protocols that are enabled.
  /// If not specified, IPV4_ONLY will be used.
  /// Default value is `IPV4_ONLY`.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  final pulumi.Input<String>? stackType;

  /// A list of interfaces on this VPN gateway.
  /// Structure is documented below.
  final pulumi.Input<List<HaVpnGatewayVpnInterface>>? vpnInterfaces;

  HaVpnGatewayArgs({
    this.description,
    this.gatewayIpVersion,
    this.labels,
    this.name,
    required this.network,
    this.project,
    this.region,
    this.stackType,
    this.vpnInterfaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final gatewayIpVersionValue = gatewayIpVersion;
    if (gatewayIpVersionValue != null) {
      map['gatewayIpVersion'] = gatewayIpVersionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] = stackTypeValue;
    }
    final vpnInterfacesValue = vpnInterfaces;
    if (vpnInterfacesValue != null) {
      map['vpnInterfaces'] = pulumi.Input.mapOptionalInputValue<
              List<HaVpnGatewayVpnInterface>, List<Map<String, dynamic>>>(
          vpnInterfacesValue,
          (value) => pulumi.Input.encodeList<HaVpnGatewayVpnInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory HaVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return HaVpnGatewayArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      gatewayIpVersion:
          pulumi.Input.asOptionalInput<String>(map['gatewayIpVersion']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      stackType: pulumi.Input.asOptionalInput<String>(map['stackType']),
      vpnInterfaces:
          pulumi.Input.asOptionalInput<List<HaVpnGatewayVpnInterface>>(
              map['vpnInterfaces']),
    );
  }
}
