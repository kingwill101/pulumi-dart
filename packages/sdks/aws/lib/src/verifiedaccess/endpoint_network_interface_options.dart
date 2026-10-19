// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_network_interface_options_port_range.dart';

class EndpointNetworkInterfaceOptions {
  /// ID of the network interface.
  final pulumi.Input<String?>? networkInterfaceId;
  /// IP port number.
  final pulumi.Input<int?>? port;
  /// Port ranges. See below.
  final pulumi.Input<List<EndpointNetworkInterfaceOptionsPortRange>?>? portRanges;
  /// IP protocol.
  final pulumi.Input<String?>? protocol;

  /// Creates a new [EndpointNetworkInterfaceOptions].
  /// [networkInterfaceId] ID of the network interface.
  /// [port] IP port number.
  /// [portRanges] Port ranges. See below.
  /// [protocol] IP protocol.
  const EndpointNetworkInterfaceOptions({
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
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointNetworkInterfaceOptionsPortRange>(guardedValue, (value) => EndpointNetworkInterfaceOptionsPortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
