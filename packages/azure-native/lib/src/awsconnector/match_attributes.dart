// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address.dart';
import 'port_range.dart';
import 'tcpflag_field.dart';

/// Definition of MatchAttributes
class MatchAttributes {
  /// Property destinationPorts
  final List<PortRange>? destinationPorts;
  /// Property destinations
  final List<Address>? destinations;
  /// Property protocols
  final List<int>? protocols;
  /// Property sourcePorts
  final List<PortRange>? sourcePorts;
  /// Property sources
  final List<Address>? sources;
  /// Property tcpFlags
  final List<TCPFlagField>? tcpFlags;

  /// Creates a new [MatchAttributes].
  /// [destinationPorts] Property destinationPorts
  /// [destinations] Property destinations
  /// [protocols] Property protocols
  /// [sourcePorts] Property sourcePorts
  /// [sources] Property sources
  /// [tcpFlags] Property tcpFlags
  MatchAttributes({
    this.destinationPorts,
    this.destinations,
    this.protocols,
    this.sourcePorts,
    this.sources,
    this.tcpFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPorts': ?destinationPorts == null ? null : pulumi.Input.encodeList<PortRange, Map<String, dynamic>>(destinationPorts!, (value) => value.toMap()),
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<Address, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'protocols': ?protocols,
      'sourcePorts': ?sourcePorts == null ? null : pulumi.Input.encodeList<PortRange, Map<String, dynamic>>(sourcePorts!, (value) => value.toMap()),
      'sources': ?sources == null ? null : pulumi.Input.encodeList<Address, Map<String, dynamic>>(sources!, (value) => value.toMap()),
      'tcpFlags': ?tcpFlags == null ? null : pulumi.Input.encodeList<TCPFlagField, Map<String, dynamic>>(tcpFlags!, (value) => value.toMap()),
    };
  }

  factory MatchAttributes.fromMap(Map<String, dynamic> map) {
    return MatchAttributes(
      destinationPorts: map['destinationPorts'] == null ? null : pulumi.Input.decodeList<PortRange>(map['destinationPorts'], (value) => PortRange.fromMap((value as Map).cast<String, dynamic>())),
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<Address>(map['destinations'], (value) => Address.fromMap((value as Map).cast<String, dynamic>())),
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<int>(),
      sourcePorts: map['sourcePorts'] == null ? null : pulumi.Input.decodeList<PortRange>(map['sourcePorts'], (value) => PortRange.fromMap((value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<Address>(map['sources'], (value) => Address.fromMap((value as Map).cast<String, dynamic>())),
      tcpFlags: map['tcpFlags'] == null ? null : pulumi.Input.decodeList<TCPFlagField>(map['tcpFlags'], (value) => TCPFlagField.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

