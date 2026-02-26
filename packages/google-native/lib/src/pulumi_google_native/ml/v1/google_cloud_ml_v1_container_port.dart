// ignore_for_file: unused_element, unnecessary_cast

/// Represents a network port in a single container. This message is a subset of the [Kubernetes ContainerPort v1 core specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#containerport-v1-core).
class GoogleCloudMlV1ContainerPort {
  /// Number of the port to expose on the container. This must be a valid port number: 0 < PORT_NUMBER < 65536.
  final int? containerPort;

  GoogleCloudMlV1ContainerPort({
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

  factory GoogleCloudMlV1ContainerPort.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1ContainerPort(
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
    );
  }
}
