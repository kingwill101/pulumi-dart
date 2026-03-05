// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The port exposed on the container instance.
class ContainerPortResponse {
  /// The port number exposed within the container group.
  final pulumi.Input<int> port;
  /// The protocol associated with the port.
  final pulumi.Input<String>? protocol;

  /// Creates a new [ContainerPortResponse].
  /// [port] The port number exposed within the container group.
  /// [protocol] The protocol associated with the port.
  ContainerPortResponse({
    required this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': ?protocol,
    };
  }

  factory ContainerPortResponse.fromMap(Map<String, dynamic> map) {
    return ContainerPortResponse(
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

