// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hourly Schedule properties used to create NetApp snapshot policy
class ElasticSnapshotPolicyHourlyScheduleResponse {
  /// Indicates which minute snapshot should be taken
  final pulumi.Input<int>? minute;
  /// Hourly snapshot count to keep
  final pulumi.Input<int>? snapshotsToKeep;

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
      minute: map['minute'] == null ? null : (map['minute'] as int).input(),
      snapshotsToKeep: map['snapshotsToKeep'] == null ? null : (map['snapshotsToKeep'] as int).input(),
    );
  }
}

