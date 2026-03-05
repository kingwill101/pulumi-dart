// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationApplicationSnapshotConfiguration {
  /// Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.
  final pulumi.Input<bool> snapshotsEnabled;

  /// Creates a new [ApplicationApplicationConfigurationApplicationSnapshotConfiguration].
  /// [snapshotsEnabled] Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.
  ApplicationApplicationConfigurationApplicationSnapshotConfiguration({
    required this.snapshotsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotsEnabled': snapshotsEnabled,
    };
  }

  factory ApplicationApplicationConfigurationApplicationSnapshotConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationApplicationSnapshotConfiguration(
      snapshotsEnabled: pulumi.Input.fromValue(map['snapshotsEnabled'] as bool),
    );
  }
}

