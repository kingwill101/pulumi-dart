// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupContainerPort {
  final int? port;
  final String? protocol;

  /// Creates a new [ContainerGroupContainerPort].
  /// [port] Optional.
  /// [protocol] Optional.
  ContainerGroupContainerPort({
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
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

