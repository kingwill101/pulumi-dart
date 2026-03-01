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

  /// Creates a new [ClusterTrialMetadata].
  /// [endTime] End time of the trial cluster.
  /// [graceEndTime] Grace end time of the trial cluster.
  /// [startTime] Start time of the trial cluster.
  /// [upgradeTime] Upgrade time of the trial cluster to standard cluster.
  ClusterTrialMetadata({
    this.endTime,
    this.graceEndTime,
    this.startTime,
    this.upgradeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'graceEndTime': ?graceEndTime,
      'startTime': ?startTime,
      'upgradeTime': ?upgradeTime,
    };
  }

  factory ClusterTrialMetadata.fromMap(Map<String, dynamic> map) {
    return ClusterTrialMetadata(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      graceEndTime: map['graceEndTime'] == null
          ? null
          : map['graceEndTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      upgradeTime: map['upgradeTime'] == null
          ? null
          : map['upgradeTime'] as String,
    );
  }
}
