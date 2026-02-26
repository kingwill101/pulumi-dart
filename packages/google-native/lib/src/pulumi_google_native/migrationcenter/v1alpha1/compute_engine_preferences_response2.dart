// ignore_for_file: unused_element, unnecessary_cast

import 'machine_preferences_response2.dart';

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferencesResponse2 {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  final String licenseType;

  /// Preferences concerning the machine types to consider on Compute Engine.
  final MachinePreferencesResponse2 machinePreferences;

  /// Persistent disk type to use. If unspecified (default), all types are considered, based on available usage data.
  final String persistentDiskType;

  ComputeEnginePreferencesResponse2({
    required this.licenseType,
    required this.machinePreferences,
    required this.persistentDiskType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['licenseType'] = licenseType;
    map['machinePreferences'] = machinePreferences.toMap();
    map['persistentDiskType'] = persistentDiskType;
    return map;
  }

  factory ComputeEnginePreferencesResponse2.fromMap(Map<String, dynamic> map) {
    return ComputeEnginePreferencesResponse2(
      licenseType: map['licenseType'] as String,
      machinePreferences: MachinePreferencesResponse2.fromMap(
          (map['machinePreferences'] as Map).cast<String, dynamic>()),
      persistentDiskType: map['persistentDiskType'] as String,
    );
  }
}
