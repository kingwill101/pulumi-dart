// ignore_for_file: unused_element, unnecessary_cast

class ClusterTrialMetadata {
  /// End time of the trial cluster.
  final String? endTime;

  /// Grace end time of the trial cluster.
  final String? graceEndTime;

  /// Start time of the trial cluster.
  final String? startTime;

  /// Upgrade time of the trial cluster to standard cluster.
  final String? upgradeTime;

  ClusterTrialMetadata({
    this.endTime,
    this.graceEndTime,
    this.startTime,
    this.upgradeTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final graceEndTimeValue = graceEndTime;
    if (graceEndTimeValue != null) {
      map['graceEndTime'] = graceEndTimeValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final upgradeTimeValue = upgradeTime;
    if (upgradeTimeValue != null) {
      map['upgradeTime'] = upgradeTimeValue;
    }
    return map;
  }

  factory ClusterTrialMetadata.fromMap(Map<String, dynamic> map) {
    return ClusterTrialMetadata(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      graceEndTime:
          map['graceEndTime'] == null ? null : map['graceEndTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      upgradeTime:
          map['upgradeTime'] == null ? null : map['upgradeTime'] as String,
    );
  }
}
