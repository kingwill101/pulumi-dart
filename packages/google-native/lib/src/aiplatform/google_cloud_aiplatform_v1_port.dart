// ignore_for_file: unused_element, unnecessary_cast

/// Represents a network port in a container.
class GoogleCloudAiplatformV1Port {
  /// The number of the port to expose on the pod's IP address. Must be a valid port number, between 1 and 65535 inclusive.
  final int? containerPort;

  /// Creates a new [GoogleCloudAiplatformV1Port].
  /// [containerPort] The number of the port to expose on the pod's IP address. Must be a valid port number, between 1 and 65535 inclusive.
  GoogleCloudAiplatformV1Port({
    this.containerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerPortValue = containerPort;
    if (containerPortValue != null) {
      map['containerPort'] = containerPortValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1Port.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1Port(
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
    );
  }
}
