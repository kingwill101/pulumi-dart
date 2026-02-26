// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateSpecContainerPort {
  /// Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  final int containerPort;

  /// The name of the Cloud Run Service.
  final String name;

  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final String protocol;

  GetServiceTemplateSpecContainerPort({
    required this.containerPort,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerPort'] = containerPort;
    map['name'] = name;
    map['protocol'] = protocol;
    return map;
  }

  factory GetServiceTemplateSpecContainerPort.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerPort(
      containerPort: map['containerPort'] as int,
      name: map['name'] as String,
      protocol: map['protocol'] as String,
    );
  }
}
