// ignore_for_file: unused_element, unnecessary_cast

class SparkLoggingInfoResponse {
  /// Project ID used for logging
  final String project;

  /// Resource type used for logging
  final String resourceType;

  SparkLoggingInfoResponse({
    required this.project,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    map['resourceType'] = resourceType;
    return map;
  }

  factory SparkLoggingInfoResponse.fromMap(Map<String, dynamic> map) {
    return SparkLoggingInfoResponse(
      project: map['project'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
