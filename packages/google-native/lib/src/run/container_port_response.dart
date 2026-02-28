// ignore_for_file: unused_element, unnecessary_cast


/// ContainerPort represents a network port in a single container.
class ContainerPortResponse {
  /// Port number the container listens on. If present, this must be a valid port number, 0 < x < 65536. If not present, it will default to port 8080. For more information, see https://cloud.google.com/run/docs/container-contract#port
  final int containerPort;
  /// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  final String name;
  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final String protocol;

  /// Creates a new [ContainerPortResponse].
  /// [containerPort] Port number the container listens on. If present, this must be a valid port number, 0 < x < 65536. If not present, it will default to port 8080. For more information, see https://cloud.google.com/run/docs/container-contract#port
  /// [name] If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  /// [protocol] Protocol for port. Must be "TCP". Defaults to "TCP".
  ContainerPortResponse({
    required this.containerPort,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': containerPort,
      'name': name,
      'protocol': protocol,
    };
  }

  factory ContainerPortResponse.fromMap(Map<String, dynamic> map) {
    return ContainerPortResponse(
      containerPort: map['containerPort'] as int,
      name: map['name'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

