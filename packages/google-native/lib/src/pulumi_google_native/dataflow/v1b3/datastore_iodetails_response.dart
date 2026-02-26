// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a Datastore connector used by the job.
class DatastoreIODetailsResponse {
  /// Namespace used in the connection.
  final String namespace;

  /// ProjectId accessed in the connection.
  final String project;

  DatastoreIODetailsResponse({
    required this.namespace,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    map['project'] = project;
    return map;
  }

  factory DatastoreIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return DatastoreIODetailsResponse(
      namespace: map['namespace'] as String,
      project: map['project'] as String,
    );
  }
}
