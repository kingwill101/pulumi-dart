// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Snapshot Controller settings for the storage profile.
class ManagedClusterStorageProfileSnapshotControllerResponse {
  /// Whether to enable Snapshot Controller. The default value is true.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterStorageProfileSnapshotControllerResponse].
  /// [enabled] Whether to enable Snapshot Controller. The default value is true.
  ManagedClusterStorageProfileSnapshotControllerResponse({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ManagedClusterStorageProfileSnapshotControllerResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedClusterStorageProfileSnapshotControllerResponse(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
