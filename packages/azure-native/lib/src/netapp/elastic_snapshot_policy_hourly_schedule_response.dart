// ignore_for_file: unused_element, unnecessary_cast


/// Hourly Schedule properties used to create NetApp snapshot policy
class ElasticSnapshotPolicyHourlyScheduleResponse {
  /// Indicates which minute snapshot should be taken
  final int? minute;
  /// Hourly snapshot count to keep
  final int? snapshotsToKeep;

  /// Creates a new [ElasticSnapshotPolicyHourlyScheduleResponse].
  /// [minute] Indicates which minute snapshot should be taken
  /// [snapshotsToKeep] Hourly snapshot count to keep
  ElasticSnapshotPolicyHourlyScheduleResponse({
    this.minute,
    this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': ?minute,
      'snapshotsToKeep': ?snapshotsToKeep,
    };
  }

  factory ElasticSnapshotPolicyHourlyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyHourlyScheduleResponse(
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : map['snapshotsToKeep'] as int,
    );
  }
}

