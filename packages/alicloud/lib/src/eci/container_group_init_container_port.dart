// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupInitContainerPort {
  final int? port;
  final String? protocol;

  /// Creates a new [ContainerGroupInitContainerPort].
  /// [port] Optional.
  /// [protocol] Optional.
  ContainerGroupInitContainerPort({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory ContainerGroupInitContainerPort.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainerPort(
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

