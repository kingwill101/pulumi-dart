// ignore_for_file: unused_element, unnecessary_cast

/// ContainerPort represents a network port in a single container.
class GoogleCloudRunV2ContainerPort {
  /// Port number the container listens on. This must be a valid TCP port number, 0 < container_port < 65536.
  final int? containerPort;

  /// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  final String? name;

  /// Creates a new [GoogleCloudRunV2ContainerPort].
  /// [containerPort] Port number the container listens on. This must be a valid TCP port number, 0 < container_port < 65536.
  /// [name] If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  GoogleCloudRunV2ContainerPort({
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

  factory GoogleCloudRunV2ContainerPort.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2ContainerPort(
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
