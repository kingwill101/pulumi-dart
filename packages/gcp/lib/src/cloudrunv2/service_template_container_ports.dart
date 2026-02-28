// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateContainerPorts {
  /// Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536.
  final int? containerPort;

  /// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  final String? name;

  /// Creates a new [ServiceTemplateContainerPorts].
  /// [containerPort] Port number the container listens on. This must be a valid TCP port number, 0 < containerPort < 65536.
  /// [name] If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  ServiceTemplateContainerPorts({
    this.containerPort,
    this.name,
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
    return map;
  }

  factory ServiceTemplateContainerPorts.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerPorts(
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
