// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The port exposed on the container instance.
class ContainerPort {
  /// The port number exposed within the container group.
  final pulumi.Input<int> port;
  /// The protocol associated with the port.
  final pulumi.Input<String>? protocol;

  /// Creates a new [ContainerPort].
  /// [port] The port number exposed within the container group.
  /// [protocol] The protocol associated with the port.
  ContainerPort({
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
      port: (map['port'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
    );
  }
}

