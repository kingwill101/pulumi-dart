// ignore_for_file: unused_element, unnecessary_cast

import 'preference_set_virtual_machine_preferences_compute_engine_preferences_machine_preferences.dart';

class PreferenceSetVirtualMachinePreferencesComputeEnginePreferences {
  /// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan. Possible values: `LICENSE_TYPE_UNSPECIFIED`, `LICENSE_TYPE_DEFAULT`, `LICENSE_TYPE_BRING_YOUR_OWN_LICENSE`
  final String? licenseType;

  /// The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
  /// Structure is documented below.
  final PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences?
  machinePreferences;

  /// Creates a new [PreferenceSetVirtualMachinePreferencesComputeEnginePreferences].
  /// [licenseType] License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan. Possible values: `LICENSE_TYPE_UNSPECIFIED`, `LICENSE_TYPE_DEFAULT`, `LICENSE_TYPE_BRING_YOUR_OWN_LICENSE`
  /// [machinePreferences] The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.
  PreferenceSetVirtualMachinePreferencesComputeEnginePreferences({
    this.licenseType,
    this.machinePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseType': ?licenseType,
      'machinePreferences': ?machinePreferences == null
          ? null
          : machinePreferences!.toMap(),
    };
  }

  factory PreferenceSetVirtualMachinePreferencesComputeEnginePreferences.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreferenceSetVirtualMachinePreferencesComputeEnginePreferences(
      licenseType: map['licenseType'] == null
          ? null
          : map['licenseType'] as String,
      machinePreferences: map['machinePreferences'] == null
          ? null
          : PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences.fromMap(
              (map['machinePreferences'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
