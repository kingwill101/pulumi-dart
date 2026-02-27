// ignore_for_file: unused_element, unnecessary_cast

import 'status_response_vmmigration_v1alpha1.dart';

/// UpgradeStatus contains information about upgradeAppliance operation.
class UpgradeStatusResponseVmmigrationV1alpha1 {
  /// Provides details on the state of the upgrade operation in case of an error.
  final StatusResponseVmmigrationV1alpha1 error;

  /// The version from which we upgraded.
  final String previousVersion;

  /// The time the operation was started.
  final String startTime;

  /// The state of the upgradeAppliance operation.
  final String state;

  /// The version to upgrade to.
  final String version;

  UpgradeStatusResponseVmmigrationV1alpha1({
    required this.error,
    required this.previousVersion,
    required this.startTime,
    required this.state,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error.toMap();
    map['previousVersion'] = previousVersion;
    map['startTime'] = startTime;
    map['state'] = state;
    map['version'] = version;
    return map;
  }

  factory UpgradeStatusResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return UpgradeStatusResponseVmmigrationV1alpha1(
      error: StatusResponseVmmigrationV1alpha1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      previousVersion: map['previousVersion'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      version: map['version'] as String,
    );
  }
}
