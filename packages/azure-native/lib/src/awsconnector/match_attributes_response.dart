// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_response.dart';
import 'port_range_response.dart';
import 'tcpflag_field_response.dart';

/// Definition of MatchAttributes
class MatchAttributesResponse {
  /// Property destinationPorts
  final List<PortRangeResponse>? destinationPorts;
  /// Property destinations
  final List<AddressResponse>? destinations;
  /// Property protocols
  final List<int>? protocols;
  /// Property sourcePorts
  final List<PortRangeResponse>? sourcePorts;
  /// Property sources
  final List<AddressResponse>? sources;
  /// Property tcpFlags
  final List<TCPFlagFieldResponse>? tcpFlags;

  /// Creates a new [MatchAttributesResponse].
  /// [destinationPorts] Property destinationPorts
  /// [destinations] Property destinations
  /// [protocols] Property protocols
  /// [sourcePorts] Property sourcePorts
  /// [sources] Property sources
  /// [tcpFlags] Property tcpFlags
  MatchAttributesResponse({
    this.destinationPorts,
    this.destinations,
    this.protocols,
    this.sourcePorts,
    this.sources,
    this.tcpFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPorts': ?destinationPorts == null ? null : pulumi.Input.encodeList<PortRangeResponse, Map<String, dynamic>>(destinationPorts!, (value) => value.toMap()),
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<AddressResponse, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'protocols': ?protocols,
      'sourcePorts': ?sourcePorts == null ? null : pulumi.Input.encodeList<PortRangeResponse, Map<String, dynamic>>(sourcePorts!, (value) => value.toMap()),
      'sources': ?sources == null ? null : pulumi.Input.encodeList<AddressResponse, Map<String, dynamic>>(sources!, (value) => value.toMap()),
      'tcpFlags': ?tcpFlags == null ? null : pulumi.Input.encodeList<TCPFlagFieldResponse, Map<String, dynamic>>(tcpFlags!, (value) => value.toMap()),
    };
  }

  factory MatchAttributesResponse.fromMap(Map<String, dynamic> map) {
    return MatchAttributesResponse(
      destinationPorts: map['destinationPorts'] == null ? null : pulumi.Input.decodeList<PortRangeResponse>(map['destinationPorts'], (value) => PortRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<AddressResponse>(map['destinations'], (value) => AddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      protocols: map['protocols'] == null ? null : (map['protocols'] as List).cast<int>(),
      sourcePorts: map['sourcePorts'] == null ? null : pulumi.Input.decodeList<PortRangeResponse>(map['sourcePorts'], (value) => PortRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<AddressResponse>(map['sources'], (value) => AddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      tcpFlags: map['tcpFlags'] == null ? null : pulumi.Input.decodeList<TCPFlagFieldResponse>(map['tcpFlags'], (value) => TCPFlagFieldResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

