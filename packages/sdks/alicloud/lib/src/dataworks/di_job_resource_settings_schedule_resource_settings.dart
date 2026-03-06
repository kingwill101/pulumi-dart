// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobResourceSettingsScheduleResourceSettings {
  /// Scheduling resource group cu
  final pulumi.Input<double>? requestedCu;
  /// Scheduling resource group name
  final pulumi.Input<String>? resourceGroupIdentifier;

  /// Creates a new [DiJobResourceSettingsScheduleResourceSettings].
  /// [requestedCu] Scheduling resource group cu
  /// [resourceGroupIdentifier] Scheduling resource group name
  const DiJobResourceSettingsScheduleResourceSettings({
    this.requestedCu,
    this.resourceGroupIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestedCu': ?requestedCu,
      'resourceGroupIdentifier': ?resourceGroupIdentifier,
    };
  }

  factory DiJobResourceSettingsScheduleResourceSettings.fromMap(Map<String, dynamic> map) {
    return DiJobResourceSettingsScheduleResourceSettings(
      requestedCu: (() { final guardedValue = map['requestedCu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      resourceGroupIdentifier: (() { final guardedValue = map['resourceGroupIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

