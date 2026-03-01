// ignore_for_file: unused_element, unnecessary_cast


class EciScalingConfigurationContainerPort {
  final int? port;
  final String? protocol;

  /// Creates a new [EciScalingConfigurationContainerPort].
  /// [port] Optional.
  /// [protocol] Optional.
  EciScalingConfigurationContainerPort({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory EciScalingConfigurationContainerPort.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationContainerPort(
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

