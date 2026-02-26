// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getService.
class GetServiceResult9 {
  /// ID of the project that produces and owns this service.
  final String producerProjectId;

  /// The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  final String serviceName;

  GetServiceResult9({
    required this.producerProjectId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['producerProjectId'] = producerProjectId;
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceResult9.fromMap(Map<String, dynamic> map) {
    return GetServiceResult9(
      producerProjectId: map['producerProjectId'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
