// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationInitContainerPort {
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? protocol;

  /// Creates a new [EciScalingConfigurationInitContainerPort].
  /// [port] Optional.
  /// [protocol] Optional.
  EciScalingConfigurationInitContainerPort({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory EciScalingConfigurationInitContainerPort.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationInitContainerPort(
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

