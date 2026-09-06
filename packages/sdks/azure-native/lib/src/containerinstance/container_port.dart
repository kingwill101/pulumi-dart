// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The port exposed on the container instance.
class ContainerPort {
  /// The port number exposed within the container group.
  final pulumi.Input<int> port;
  /// The protocol associated with the port.
  final pulumi.Input<dynamic>? protocol;

  /// Creates a new [ContainerPort].
  /// [port] The port number exposed within the container group.
  /// [protocol] The protocol associated with the port.
  const ContainerPort({
    required this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': ?protocol,
    };
  }

  factory ContainerPort.fromMap(Map<String, dynamic> map) {
    return ContainerPort(
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
