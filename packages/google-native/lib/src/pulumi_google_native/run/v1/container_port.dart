// ignore_for_file: unused_element, unnecessary_cast

/// ContainerPort represents a network port in a single container.
class ContainerPort {
  /// Port number the container listens on. If present, this must be a valid port number, 0 < x < 65536. If not present, it will default to port 8080. For more information, see https://cloud.google.com/run/docs/container-contract#port
  final int? containerPort;

  /// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  final String? name;

  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final String? protocol;

  ContainerPort({
    this.containerPort,
    this.name,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerPortValue = containerPort;
    if (containerPortValue != null) {
      map['containerPort'] = containerPortValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    return map;
  }

  factory ContainerPort.fromMap(Map<String, dynamic> map) {
    return ContainerPort(
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
