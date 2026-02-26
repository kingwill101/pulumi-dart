// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a Spanner connector used by the job.
class SpannerIODetailsResponse {
  /// DatabaseId accessed in the connection.
  final String databaseId;

  /// InstanceId accessed in the connection.
  final String instanceId;

  /// ProjectId accessed in the connection.
  final String project;

  SpannerIODetailsResponse({
    required this.databaseId,
    required this.instanceId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseId'] = databaseId;
    map['instanceId'] = instanceId;
    map['project'] = project;
    return map;
  }

  factory SpannerIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return SpannerIODetailsResponse(
      databaseId: map['databaseId'] as String,
      instanceId: map['instanceId'] as String,
      project: map['project'] as String,
    );
  }
}
