// ignore_for_file: unused_element, unnecessary_cast

class SparkLoggingInfoResponse {
  /// Project ID used for logging
  final String project;

  /// Resource type used for logging
  final String resourceType;

  /// Creates a new [SparkLoggingInfoResponse].
  /// [project] Project ID used for logging
  /// [resourceType] Resource type used for logging
  SparkLoggingInfoResponse({required this.project, required this.resourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': project, 'resourceType': resourceType};
  }

  factory SparkLoggingInfoResponse.fromMap(Map<String, dynamic> map) {
    return SparkLoggingInfoResponse(
      project: map['project'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
