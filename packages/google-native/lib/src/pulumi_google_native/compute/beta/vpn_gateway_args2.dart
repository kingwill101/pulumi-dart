// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'vpn_gateway_gateway_ip_version2.dart';
import 'vpn_gateway_stack_type2.dart';
import 'vpn_gateway_vpn_gateway_interface2.dart';

/// The set of arguments for VpnGateway.
class VpnGatewayArgs2 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
  final Input<VpnGatewayGatewayIpVersion2>? gatewayIpVersion;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// URL of the network to which this VPN gateway is attached. Provided by the client when the VPN gateway is created.
  final Input<String>? network;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The stack type for this VPN gateway to identify the IP protocols that are enabled. Possible values are: IPV4_ONLY, IPV4_IPV6. If not specified, IPV4_ONLY will be used.
  final Input<VpnGatewayStackType2>? stackType;

  /// The list of VPN interfaces associated with this VPN gateway.
  final Input<List<VpnGatewayVpnGatewayInterface2>>? vpnInterfaces;

  VpnGatewayArgs2({
    this.description,
    this.gatewayIpVersion,
    this.labels,
    this.name,
    this.network,
    this.project,
    required this.region,
    this.requestId,
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
      map['gatewayIpVersion'] =
          Input.mapOptionalInputValue<VpnGatewayGatewayIpVersion2, String>(
              gatewayIpVersionValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] =
          Input.mapOptionalInputValue<VpnGatewayStackType2, String>(
              stackTypeValue, (value) => value.value);
    }
    final vpnInterfacesValue = vpnInterfaces;
    if (vpnInterfacesValue != null) {
      map['vpnInterfaces'] = Input.mapOptionalInputValue<
              List<VpnGatewayVpnGatewayInterface2>, List<Map<String, dynamic>>>(
          vpnInterfacesValue,
          (value) => Input.encodeList<VpnGatewayVpnGatewayInterface2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory VpnGatewayArgs2.fromMap(Map<String, dynamic> map) {
    return VpnGatewayArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      gatewayIpVersion: Input.asOptionalInput<VpnGatewayGatewayIpVersion2>(
          map['gatewayIpVersion']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      stackType: Input.asOptionalInput<VpnGatewayStackType2>(map['stackType']),
      vpnInterfaces:
          Input.asOptionalInput<List<VpnGatewayVpnGatewayInterface2>>(
              map['vpnInterfaces']),
    );
  }
}
