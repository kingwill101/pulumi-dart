// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';

/// UpgradeStatus contains information about upgradeAppliance operation.
class UpgradeStatusResponse {
  /// Provides details on the state of the upgrade operation in case of an error.
  final StatusResponse error;
  /// The version from which we upgraded.
  final String previousVersion;
  /// The time the operation was started.
  final String startTime;
  /// The state of the upgradeAppliance operation.
  final String state;
  /// The version to upgrade to.
  final String version;

  /// Creates a new [UpgradeStatusResponse].
  /// [error] Provides details on the state of the upgrade operation in case of an error.
  /// [previousVersion] The version from which we upgraded.
  /// [startTime] The time the operation was started.
  /// [state] The state of the upgradeAppliance operation.
  /// [version] The version to upgrade to.
  UpgradeStatusResponse({
    required this.error,
    required this.previousVersion,
    required this.startTime,
    required this.state,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'previousVersion': previousVersion,
      'startTime': startTime,
      'state': state,
      'version': version,
    };
  }

  factory UpgradeStatusResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeStatusResponse(
      error: StatusResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      previousVersion: map['previousVersion'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      version: map['version'] as String,
    );
  }
}

