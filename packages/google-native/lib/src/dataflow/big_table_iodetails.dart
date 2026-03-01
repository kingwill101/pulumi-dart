// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a Cloud Bigtable connector used by the job.
class BigTableIODetails {
  /// InstanceId accessed in the connection.
  final String? instanceId;

  /// ProjectId accessed in the connection.
  final String? project;

  /// TableId accessed in the connection.
  final String? tableId;

  /// Creates a new [BigTableIODetails].
  /// [instanceId] InstanceId accessed in the connection.
  /// [project] ProjectId accessed in the connection.
  /// [tableId] TableId accessed in the connection.
  BigTableIODetails({this.instanceId, this.project, this.tableId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'project': ?project,
      'tableId': ?tableId,
    };
  }

  factory BigTableIODetails.fromMap(Map<String, dynamic> map) {
    return BigTableIODetails(
      instanceId: map['instanceId'] == null
          ? null
          : map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tableId: map['tableId'] == null ? null : map['tableId'] as String,
    );
  }
}
