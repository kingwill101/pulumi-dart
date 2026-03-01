// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateSpecContainerPort {
  /// Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  final int containerPort;
  /// The name of the Cloud Run Service.
  final String name;
  /// Protocol for port. Must be "TCP". Defaults to "TCP".
  final String protocol;

  /// Creates a new [GetServiceTemplateSpecContainerPort].
  /// [containerPort] Port number the container listens on. This must be a valid port number (between 1 and 65535). Defaults to "8080".
  /// [name] The name of the Cloud Run Service.
  /// [protocol] Protocol for port. Must be "TCP". Defaults to "TCP".
  GetServiceTemplateSpecContainerPort({
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

  factory GetServiceTemplateSpecContainerPort.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerPort(
      containerPort: map['containerPort'] as int,
      name: map['name'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

