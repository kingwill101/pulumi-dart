// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address.dart';
import 'port_range.dart';
import 'tcpflag_field.dart';

/// Definition of MatchAttributes
class MatchAttributes {
  /// Property destinationPorts
  final pulumi.Input<List<PortRange>>? destinationPorts;
  /// Property destinations
  final pulumi.Input<List<Address>>? destinations;
  /// Property protocols
  final pulumi.Input<List<int>>? protocols;
  /// Property sourcePorts
  final pulumi.Input<List<PortRange>>? sourcePorts;
  /// Property sources
  final pulumi.Input<List<Address>>? sources;
  /// Property tcpFlags
  final pulumi.Input<List<TCPFlagField>>? tcpFlags;

  /// Creates a new [MatchAttributes].
  /// [destinationPorts] Property destinationPorts
  /// [destinations] Property destinations
  /// [protocols] Property protocols
  /// [sourcePorts] Property sourcePorts
  /// [sources] Property sources
  /// [tcpFlags] Property tcpFlags
  const MatchAttributes({
    this.destinationPorts,
    this.destinations,
    this.protocols,
    this.sourcePorts,
    this.sources,
    this.tcpFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPorts': ?pulumi.Input.mapOptionalInputValue<List<PortRange>, List<Map<String, dynamic>>>(destinationPorts, (value) => pulumi.Input.encodeList<PortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<Address>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<Address, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocols': ?protocols,
      'sourcePorts': ?pulumi.Input.mapOptionalInputValue<List<PortRange>, List<Map<String, dynamic>>>(sourcePorts, (value) => pulumi.Input.encodeList<PortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<Address>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<Address, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcpFlags': ?pulumi.Input.mapOptionalInputValue<List<TCPFlagField>, List<Map<String, dynamic>>>(tcpFlags, (value) => pulumi.Input.encodeList<TCPFlagField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MatchAttributes.fromMap(Map<String, dynamic> map) {
    return MatchAttributes(
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PortRange>(guardedValue, (value) => PortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Address>(guardedValue, (value) => Address.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      sourcePorts: (() { final guardedValue = map['sourcePorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PortRange>(guardedValue, (value) => PortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Address>(guardedValue, (value) => Address.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tcpFlags: (() { final guardedValue = map['tcpFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TCPFlagField>(guardedValue, (value) => TCPFlagField.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

