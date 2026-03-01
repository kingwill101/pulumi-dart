// ignore_for_file: unused_element, unnecessary_cast

import 'compute_engine_preferences_license_type.dart';
import 'machine_preferences.dart';

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferences {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  final ComputeEnginePreferencesLicenseType? licenseType;

  /// Preferences concerning the machine types to consider on Compute Engine.
  final MachinePreferences? machinePreferences;

  /// Creates a new [ComputeEnginePreferences].
  /// [licenseType] License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
  /// [machinePreferences] Preferences concerning the machine types to consider on Compute Engine.
  ComputeEnginePreferences({this.licenseType, this.machinePreferences});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseType': ?licenseType == null ? null : licenseType!.value,
      'machinePreferences': ?machinePreferences == null
          ? null
          : machinePreferences!.toMap(),
    };
  }

  factory ComputeEnginePreferences.fromMap(Map<String, dynamic> map) {
    return ComputeEnginePreferences(
      licenseType: map['licenseType'] == null
          ? null
          : ComputeEnginePreferencesLicenseType.fromValue(
              map['licenseType'] as String,
            ),
      machinePreferences: map['machinePreferences'] == null
          ? null
          : MachinePreferences.fromMap(
              (map['machinePreferences'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
