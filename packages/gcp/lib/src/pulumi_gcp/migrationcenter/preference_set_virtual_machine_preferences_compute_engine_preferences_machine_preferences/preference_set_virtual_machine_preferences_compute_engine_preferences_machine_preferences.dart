// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../preference_set_virtual_machine_preferences_compute_engine_preferences_machine_preferences_allowed_machine_series/preference_set_virtual_machine_preferences_compute_engine_preferences_machine_preferences_allowed_machine_series.dart';

class PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences {
  /// Compute Engine machine series to consider for insights and recommendations. If empty, no restriction is applied on the machine series.
  /// Structure is documented below.
  final List<
          PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries>?
      allowedMachineSeries;

  PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences({
    this.allowedMachineSeries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedMachineSeriesValue = allowedMachineSeries;
    if (allowedMachineSeriesValue != null) {
      map['allowedMachineSeries'] = pulumi.Input.encodeList<
          PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries,
          Map<String,
              dynamic>>(allowedMachineSeriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences.fromMap(
      Map<String, dynamic> map) {
    return PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferences(
      allowedMachineSeries: map['allowedMachineSeries'] == null
          ? null
          : pulumi.Input.decodeList<
                  PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries>(
              map['allowedMachineSeries'],
              (value) =>
                  PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
