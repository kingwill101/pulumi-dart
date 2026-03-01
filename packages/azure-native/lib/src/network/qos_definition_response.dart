// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_ip_range_response.dart';
import 'qos_port_range_response.dart';

/// Quality of Service defines the traffic configuration between endpoints. Mandatory to have one marking.
class QosDefinitionResponse {
  /// Destination IP ranges.
  final List<QosIpRangeResponse>? destinationIpRanges;
  /// Destination port ranges.
  final List<QosPortRangeResponse>? destinationPortRanges;
  /// List of markings to be used in the configuration.
  final List<int>? markings;
  /// RNM supported protocol types.
  final String? protocol;
  /// Source IP ranges.
  final List<QosIpRangeResponse>? sourceIpRanges;
  /// Sources port ranges.
  final List<QosPortRangeResponse>? sourcePortRanges;

  /// Creates a new [QosDefinitionResponse].
  /// [destinationIpRanges] Destination IP ranges.
  /// [destinationPortRanges] Destination port ranges.
  /// [markings] List of markings to be used in the configuration.
  /// [protocol] RNM supported protocol types.
  /// [sourceIpRanges] Source IP ranges.
  /// [sourcePortRanges] Sources port ranges.
  QosDefinitionResponse({
    this.destinationIpRanges,
    this.destinationPortRanges,
    this.markings,
    this.protocol,
    this.sourceIpRanges,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationIpRanges': ?destinationIpRanges == null ? null : pulumi.Input.encodeList<QosIpRangeResponse, Map<String, dynamic>>(destinationIpRanges!, (value) => value.toMap()),
      'destinationPortRanges': ?destinationPortRanges == null ? null : pulumi.Input.encodeList<QosPortRangeResponse, Map<String, dynamic>>(destinationPortRanges!, (value) => value.toMap()),
      'markings': ?markings,
      'protocol': ?protocol,
      'sourceIpRanges': ?sourceIpRanges == null ? null : pulumi.Input.encodeList<QosIpRangeResponse, Map<String, dynamic>>(sourceIpRanges!, (value) => value.toMap()),
      'sourcePortRanges': ?sourcePortRanges == null ? null : pulumi.Input.encodeList<QosPortRangeResponse, Map<String, dynamic>>(sourcePortRanges!, (value) => value.toMap()),
    };
  }

  factory QosDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return QosDefinitionResponse(
      destinationIpRanges: map['destinationIpRanges'] == null ? null : pulumi.Input.decodeList<QosIpRangeResponse>(map['destinationIpRanges'], (value) => QosIpRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : pulumi.Input.decodeList<QosPortRangeResponse>(map['destinationPortRanges'], (value) => QosPortRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      markings: map['markings'] == null ? null : (map['markings'] as List).cast<int>(),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceIpRanges: map['sourceIpRanges'] == null ? null : pulumi.Input.decodeList<QosIpRangeResponse>(map['sourceIpRanges'], (value) => QosIpRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : pulumi.Input.decodeList<QosPortRangeResponse>(map['sourcePortRanges'], (value) => QosPortRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

