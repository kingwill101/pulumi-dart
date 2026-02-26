// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecContainerPort {
  /// Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  final int? containerPort;

  /// If specified, used to specify which protocol to use. Allowed values are "http1" (HTTP/1) and "h2c" (HTTP/2 end-to-end). Defaults to "http1".
  final String? name;

  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final String? protocol;

  ServiceTemplateSpecContainerPort({
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

  factory ServiceTemplateSpecContainerPort.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerPort(
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
