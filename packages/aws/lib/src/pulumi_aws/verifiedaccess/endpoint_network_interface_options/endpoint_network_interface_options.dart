// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_network_interface_options_port_range/endpoint_network_interface_options_port_range.dart';

class EndpointNetworkInterfaceOptions {
  final String? networkInterfaceId;
  final int? port;
  final List<EndpointNetworkInterfaceOptionsPortRange>? portRanges;
  final String? protocol;

  EndpointNetworkInterfaceOptions({
    this.networkInterfaceId,
    this.port,
    this.portRanges,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkInterfaceIdValue = networkInterfaceId;
    if (networkInterfaceIdValue != null) {
      map['networkInterfaceId'] = networkInterfaceIdValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final portRangesValue = portRanges;
    if (portRangesValue != null) {
      map['portRanges'] = pulumi.Input.encodeList<
          EndpointNetworkInterfaceOptionsPortRange,
          Map<String, dynamic>>(portRangesValue, (value) => value.toMap());
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    return map;
  }

  factory EndpointNetworkInterfaceOptions.fromMap(Map<String, dynamic> map) {
    return EndpointNetworkInterfaceOptions(
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portRanges: map['portRanges'] == null
          ? null
          : pulumi.Input.decodeList<EndpointNetworkInterfaceOptionsPortRange>(
              map['portRanges'],
              (value) => EndpointNetworkInterfaceOptionsPortRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
