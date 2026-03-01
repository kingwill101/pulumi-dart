// ignore_for_file: unused_element, unnecessary_cast


class EciScalingConfigurationInitContainerPort {
  final int? port;
  final String? protocol;

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
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

