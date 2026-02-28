// ignore_for_file: unused_element, unnecessary_cast


/// Metadata for a Cloud Bigtable connector used by the job.
class BigTableIODetailsResponse {
  /// InstanceId accessed in the connection.
  final String instanceId;
  /// ProjectId accessed in the connection.
  final String project;
  /// TableId accessed in the connection.
  final String tableId;

  /// Creates a new [BigTableIODetailsResponse].
  /// [instanceId] InstanceId accessed in the connection.
  /// [project] ProjectId accessed in the connection.
  /// [tableId] TableId accessed in the connection.
  BigTableIODetailsResponse({
    required this.instanceId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': project,
      'tableId': tableId,
    };
  }

  factory BigTableIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return BigTableIODetailsResponse(
      instanceId: map['instanceId'] as String,
      project: map['project'] as String,
      tableId: map['tableId'] as String,
    );
  }
}

