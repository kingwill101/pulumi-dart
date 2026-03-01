// ignore_for_file: unused_element, unnecessary_cast


/// The port exposed on the container instance.
class ContainerPortResponse {
  /// The port number exposed within the container group.
  final int port;
  /// The protocol associated with the port.
  final String? protocol;

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
      port: map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

