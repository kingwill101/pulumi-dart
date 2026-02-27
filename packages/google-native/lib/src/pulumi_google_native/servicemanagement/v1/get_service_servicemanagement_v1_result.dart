// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getService.
class GetServiceServicemanagementV1Result {
  /// ID of the project that produces and owns this service.
  final String producerProjectId;

  /// The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  final String serviceName;

  GetServiceServicemanagementV1Result({
    required this.producerProjectId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['producerProjectId'] = producerProjectId;
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceServicemanagementV1Result.fromMap(
      Map<String, dynamic> map) {
    return GetServiceServicemanagementV1Result(
      producerProjectId: map['producerProjectId'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
