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

  GetClusterTrialMetadata({
    required this.endTime,
    required this.graceEndTime,
    required this.startTime,
    required this.upgradeTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['graceEndTime'] = graceEndTime;
    map['startTime'] = startTime;
    map['upgradeTime'] = upgradeTime;
    return map;
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
