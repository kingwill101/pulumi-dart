// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Header
class Header {
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

  /// Creates a new [Header].
  /// [destination] Property destination
  /// [destinationPort] Property destinationPort
  /// [direction] Property direction
  /// [protocol] Property protocol
  /// [source] Property source
  /// [sourcePort] Property sourcePort
  Header({
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

  factory Header.fromMap(Map<String, dynamic> map) {
    return Header(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePort: (() { final guardedValue = map['sourcePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

