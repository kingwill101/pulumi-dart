// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_response.dart';
import 'port_range_response.dart';
import 'tcpflag_field_response.dart';

/// Definition of MatchAttributes
class MatchAttributesResponse {
  /// Property destinationPorts
  final pulumi.Input<List<PortRangeResponse>>? destinationPorts;
  /// Property destinations
  final pulumi.Input<List<AddressResponse>>? destinations;
  /// Property protocols
  final pulumi.Input<List<int>>? protocols;
  /// Property sourcePorts
  final pulumi.Input<List<PortRangeResponse>>? sourcePorts;
  /// Property sources
  final pulumi.Input<List<AddressResponse>>? sources;
  /// Property tcpFlags
  final pulumi.Input<List<TCPFlagFieldResponse>>? tcpFlags;

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
      'destinationPorts': ?pulumi.Input.mapOptionalInputValue<List<PortRangeResponse>, List<Map<String, dynamic>>>(destinationPorts, (value) => pulumi.Input.encodeList<PortRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<AddressResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocols': ?protocols,
      'sourcePorts': ?pulumi.Input.mapOptionalInputValue<List<PortRangeResponse>, List<Map<String, dynamic>>>(sourcePorts, (value) => pulumi.Input.encodeList<PortRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AddressResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcpFlags': ?pulumi.Input.mapOptionalInputValue<List<TCPFlagFieldResponse>, List<Map<String, dynamic>>>(tcpFlags, (value) => pulumi.Input.encodeList<TCPFlagFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MatchAttributesResponse.fromMap(Map<String, dynamic> map) {
    return MatchAttributesResponse(
      destinationPorts: map['destinationPorts'] == null ? null : (pulumi.Input.decodeList<PortRangeResponse>(map['destinationPorts'], (value) => PortRangeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<AddressResponse>(map['destinations'], (value) => AddressResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protocols: map['protocols'] == null ? null : ((map['protocols'] as List).cast<int>()).input(),
      sourcePorts: map['sourcePorts'] == null ? null : (pulumi.Input.decodeList<PortRangeResponse>(map['sourcePorts'], (value) => PortRangeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<AddressResponse>(map['sources'], (value) => AddressResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tcpFlags: map['tcpFlags'] == null ? null : (pulumi.Input.decodeList<TCPFlagFieldResponse>(map['tcpFlags'], (value) => TCPFlagFieldResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

