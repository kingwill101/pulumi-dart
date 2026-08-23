// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Grafana Snapshots settings
class SnapshotsResponse {
  /// Set to false to disable external snapshot publish endpoint
  final pulumi.Input<bool>? externalEnabled;

  /// Creates a new [SnapshotsResponse].
  /// [externalEnabled] Set to false to disable external snapshot publish endpoint
  const SnapshotsResponse({
    this.externalEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalEnabled': ?externalEnabled,
    };
  }

  factory SnapshotsResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotsResponse(
      externalEnabled: (() { final guardedValue = map['externalEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
