// ignore_for_file: unused_element, unnecessary_cast


/// Represents a network port in a container.
class GoogleCloudAiplatformV1PortResponse {
  /// The number of the port to expose on the pod's IP address. Must be a valid port number, between 1 and 65535 inclusive.
  final int containerPort;

  /// Creates a new [GoogleCloudAiplatformV1PortResponse].
  /// [containerPort] The number of the port to expose on the pod's IP address. Must be a valid port number, between 1 and 65535 inclusive.
  GoogleCloudAiplatformV1PortResponse({
    required this.containerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': containerPort,
    };
  }

  factory GoogleCloudAiplatformV1PortResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PortResponse(
      containerPort: map['containerPort'] as int,
    );
  }
}

