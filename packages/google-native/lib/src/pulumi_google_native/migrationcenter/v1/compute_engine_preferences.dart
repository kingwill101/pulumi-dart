// ignore_for_file: unused_element, unnecessary_cast

import 'compute_engine_preferences_license_type.dart';
import 'machine_preferences.dart';

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferences {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  final ComputeEnginePreferencesLicenseType? licenseType;

  /// Preferences concerning the machine types to consider on Compute Engine.
  final MachinePreferences? machinePreferences;

  ComputeEnginePreferences({
    this.licenseType,
    this.machinePreferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final licenseTypeValue = licenseType;
    if (licenseTypeValue != null) {
      map['licenseType'] = licenseTypeValue.value;
    }
    final machinePreferencesValue = machinePreferences;
    if (machinePreferencesValue != null) {
      map['machinePreferences'] = machinePreferencesValue.toMap();
    }
    return map;
  }

  factory ComputeEnginePreferences.fromMap(Map<String, dynamic> map) {
    return ComputeEnginePreferences(
      licenseType: map['licenseType'] == null
          ? null
          : ComputeEnginePreferencesLicenseType.fromValue(
              map['licenseType'] as String),
      machinePreferences: map['machinePreferences'] == null
          ? null
          : MachinePreferences.fromMap(
              (map['machinePreferences'] as Map).cast<String, dynamic>()),
    );
  }
}
