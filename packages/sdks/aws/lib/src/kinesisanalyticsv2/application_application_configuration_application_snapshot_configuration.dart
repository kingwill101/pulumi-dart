// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationApplicationSnapshotConfiguration {
  /// Whether snapshots are enabled for a Flink-based application.
  final pulumi.Input<bool> snapshotsEnabled;

  /// Creates a new [ApplicationApplicationConfigurationApplicationSnapshotConfiguration].
  /// [snapshotsEnabled] Whether snapshots are enabled for a Flink-based application.
  const ApplicationApplicationConfigurationApplicationSnapshotConfiguration({
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
