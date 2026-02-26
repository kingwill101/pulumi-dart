// ignore_for_file: unused_element, unnecessary_cast

/// Represents a network port in a container.
class GoogleCloudAiplatformV1beta1PortResponse {
  /// The number of the port to expose on the pod's IP address. Must be a valid port number, between 1 and 65535 inclusive.
  final int containerPort;

  GoogleCloudAiplatformV1beta1PortResponse({
    required this.containerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerPort'] = containerPort;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1PortResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PortResponse(
      containerPort: map['containerPort'] as int,
    );
  }
}
