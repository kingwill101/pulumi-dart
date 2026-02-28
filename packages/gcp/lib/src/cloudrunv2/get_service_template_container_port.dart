// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateContainerPort {
  /// Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536.
  final int containerPort;

  /// The name of the Cloud Run v2 Service.
  final String name;

  /// Creates a new [GetServiceTemplateContainerPort].
  /// [containerPort] Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536.
  /// [name] The name of the Cloud Run v2 Service.
  GetServiceTemplateContainerPort({
    required this.containerPort,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerPort'] = containerPort;
    map['name'] = name;
    return map;
  }

  factory GetServiceTemplateContainerPort.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerPort(
      containerPort: map['containerPort'] as int,
      name: map['name'] as String,
    );
  }
}
