// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobResourceSettingsRealtimeResourceSettings {
  /// Scheduling resource group cu
  final pulumi.Input<double>? requestedCu;
  /// Scheduling resource group name
  final pulumi.Input<String>? resourceGroupIdentifier;

  /// Creates a new [DiJobResourceSettingsRealtimeResourceSettings].
  /// [requestedCu] Scheduling resource group cu
  /// [resourceGroupIdentifier] Scheduling resource group name
  DiJobResourceSettingsRealtimeResourceSettings({
    this.requestedCu,
    this.resourceGroupIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestedCu': ?requestedCu,
      'resourceGroupIdentifier': ?resourceGroupIdentifier,
    };
  }

  factory DiJobResourceSettingsRealtimeResourceSettings.fromMap(Map<String, dynamic> map) {
    return DiJobResourceSettingsRealtimeResourceSettings(
      requestedCu: map['requestedCu'] == null ? null : (map['requestedCu'] as double).input(),
      resourceGroupIdentifier: map['resourceGroupIdentifier'] == null ? null : (map['resourceGroupIdentifier'] as String).input(),
    );
  }
}

