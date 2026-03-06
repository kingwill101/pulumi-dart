// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupContainerPort {
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? protocol;

  /// Creates a new [ContainerGroupContainerPort].
  /// [port] Optional.
  /// [protocol] Optional.
  const ContainerGroupContainerPort({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory ContainerGroupContainerPort.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerPort(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

