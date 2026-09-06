// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The port exposed on the container group.
class Port {
  /// The port number.
  final pulumi.Input<int> port;
  /// The protocol associated with the port.
  final pulumi.Input<dynamic>? protocol;

  /// Creates a new [Port].
  /// [port] The port number.
  /// [protocol] The protocol associated with the port.
  const Port({
    required this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': ?protocol,
    };
  }

  factory Port.fromMap(Map<String, dynamic> map) {
    return Port(
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
