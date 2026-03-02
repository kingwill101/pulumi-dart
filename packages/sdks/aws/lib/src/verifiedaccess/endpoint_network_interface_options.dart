// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_network_interface_options_port_range.dart';

class EndpointNetworkInterfaceOptions {
  final pulumi.Input<String>? networkInterfaceId;
  final pulumi.Input<int>? port;
  final pulumi.Input<List<EndpointNetworkInterfaceOptionsPortRange>>? portRanges;
  final pulumi.Input<String>? protocol;

  /// Creates a new [EndpointNetworkInterfaceOptions].
  /// [networkInterfaceId] Optional.
  /// [port] Optional.
  /// [portRanges] Optional.
  /// [protocol] Optional.
  EndpointNetworkInterfaceOptions({
    this.networkInterfaceId,
    this.port,
    this.portRanges,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceId': ?networkInterfaceId,
      'port': ?port,
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<EndpointNetworkInterfaceOptionsPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<EndpointNetworkInterfaceOptionsPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
    };
  }

  factory EndpointNetworkInterfaceOptions.fromMap(Map<String, dynamic> map) {
    return EndpointNetworkInterfaceOptions(
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      portRanges: map['portRanges'] == null ? null : (pulumi.Input.decodeList<EndpointNetworkInterfaceOptionsPortRange>(map['portRanges'], (value) => EndpointNetworkInterfaceOptionsPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
    );
  }
}

