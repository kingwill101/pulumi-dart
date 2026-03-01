// ignore_for_file: unused_element, unnecessary_cast

class GetClusterTrialMetadata {
  /// End time of the trial cluster.
  final String endTime;

  /// Grace end time of the trial cluster.
  final String graceEndTime;

  /// Start time of the trial cluster.
  final String startTime;

  /// Upgrade time of the trial cluster to standard cluster.
  final String upgradeTime;

  /// Creates a new [GetClusterTrialMetadata].
  /// [endTime] End time of the trial cluster.
  /// [graceEndTime] Grace end time of the trial cluster.
  /// [startTime] Start time of the trial cluster.
  /// [upgradeTime] Upgrade time of the trial cluster to standard cluster.
  GetClusterTrialMetadata({
    required this.endTime,
    required this.graceEndTime,
    required this.startTime,
    required this.upgradeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'graceEndTime': graceEndTime,
      'startTime': startTime,
      'upgradeTime': upgradeTime,
    };
  }

  factory GetClusterTrialMetadata.fromMap(Map<String, dynamic> map) {
    return GetClusterTrialMetadata(
      endTime: map['endTime'] as String,
      graceEndTime: map['graceEndTime'] as String,
      startTime: map['startTime'] as String,
      upgradeTime: map['upgradeTime'] as String,
    );
  }
}
