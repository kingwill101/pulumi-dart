// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationApplicationSnapshotConfiguration {
  /// Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.
  final bool snapshotsEnabled;

  ApplicationApplicationConfigurationApplicationSnapshotConfiguration({
    required this.snapshotsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['snapshotsEnabled'] = snapshotsEnabled;
    return map;
  }

  factory ApplicationApplicationConfigurationApplicationSnapshotConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationApplicationSnapshotConfiguration(
      snapshotsEnabled: map['snapshotsEnabled'] as bool,
    );
  }
}
