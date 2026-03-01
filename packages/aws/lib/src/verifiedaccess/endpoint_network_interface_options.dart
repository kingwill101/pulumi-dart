// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_network_interface_options_port_range.dart';

class EndpointNetworkInterfaceOptions {
  final String? networkInterfaceId;
  final int? port;
  final List<EndpointNetworkInterfaceOptionsPortRange>? portRanges;
  final String? protocol;

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
      'portRanges': ?portRanges == null ? null : pulumi.Input.encodeList<EndpointNetworkInterfaceOptionsPortRange, Map<String, dynamic>>(portRanges!, (value) => value.toMap()),
      'protocol': ?protocol,
    };
  }

  factory EndpointNetworkInterfaceOptions.fromMap(Map<String, dynamic> map) {
    return EndpointNetworkInterfaceOptions(
      networkInterfaceId: map['networkInterfaceId'] == null ? null : map['networkInterfaceId'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portRanges: map['portRanges'] == null ? null : pulumi.Input.decodeList<EndpointNetworkInterfaceOptionsPortRange>(map['portRanges'], (value) => EndpointNetworkInterfaceOptionsPortRange.fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

