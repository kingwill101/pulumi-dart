// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Header
class HeaderResponse {
  /// Property destination
  final pulumi.Input<String>? destination;
  /// Property destinationPort
  final pulumi.Input<String>? destinationPort;
  /// Property direction
  final pulumi.Input<String>? direction;
  /// Property protocol
  final pulumi.Input<String>? protocol;
  /// Property source
  final pulumi.Input<String>? source;
  /// Property sourcePort
  final pulumi.Input<String>? sourcePort;

  /// Creates a new [HeaderResponse].
  /// [destination] Property destination
  /// [destinationPort] Property destinationPort
  /// [direction] Property direction
  /// [protocol] Property protocol
  /// [source] Property source
  /// [sourcePort] Property sourcePort
  HeaderResponse({
    this.destination,
    this.destinationPort,
    this.direction,
    this.protocol,
    this.source,
    this.sourcePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'destinationPort': ?destinationPort,
      'direction': ?direction,
      'protocol': ?protocol,
      'source': ?source,
      'sourcePort': ?sourcePort,
    };
  }

  factory HeaderResponse.fromMap(Map<String, dynamic> map) {
    return HeaderResponse(
      destination: map['destination'] == null ? null : (map['destination'] as String).input(),
      destinationPort: map['destinationPort'] == null ? null : (map['destinationPort'] as String).input(),
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      sourcePort: map['sourcePort'] == null ? null : (map['sourcePort'] as String).input(),
    );
  }
}

