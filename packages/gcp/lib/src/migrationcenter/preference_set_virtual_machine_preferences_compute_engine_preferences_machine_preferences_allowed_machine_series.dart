// ignore_for_file: unused_element, unnecessary_cast

class PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries {
  /// Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  final String? code;

  /// Creates a new [PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries].
  /// [code] Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code};
  }

  factory PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeries(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}
