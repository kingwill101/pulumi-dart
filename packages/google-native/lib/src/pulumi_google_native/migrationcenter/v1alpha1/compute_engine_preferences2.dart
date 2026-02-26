// ignore_for_file: unused_element, unnecessary_cast

import 'compute_engine_preferences_license_type2.dart';
import 'compute_engine_preferences_persistent_disk_type.dart';
import 'machine_preferences2.dart';

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferences2 {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  final ComputeEnginePreferencesLicenseType2? licenseType;

  /// Preferences concerning the machine types to consider on Compute Engine.
  final MachinePreferences2? machinePreferences;

  /// Persistent disk type to use. If unspecified (default), all types are considered, based on available usage data.
  final ComputeEnginePreferencesPersistentDiskType? persistentDiskType;

  ComputeEnginePreferences2({
    this.licenseType,
    this.machinePreferences,
    this.persistentDiskType,
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
    final persistentDiskTypeValue = persistentDiskType;
    if (persistentDiskTypeValue != null) {
      map['persistentDiskType'] = persistentDiskTypeValue.value;
    }
    return map;
  }

  factory ComputeEnginePreferences2.fromMap(Map<String, dynamic> map) {
    return ComputeEnginePreferences2(
      licenseType: map['licenseType'] == null
          ? null
          : ComputeEnginePreferencesLicenseType2.fromValue(
              map['licenseType'] as String),
      machinePreferences: map['machinePreferences'] == null
          ? null
          : MachinePreferences2.fromMap(
              (map['machinePreferences'] as Map).cast<String, dynamic>()),
      persistentDiskType: map['persistentDiskType'] == null
          ? null
          : ComputeEnginePreferencesPersistentDiskType.fromValue(
              map['persistentDiskType'] as String),
    );
  }
}
