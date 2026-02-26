// ignore_for_file: unused_element, unnecessary_cast

import '../cx_page_form_parameter_advanced_settings_dtmf_settings/cx_page_form_parameter_advanced_settings_dtmf_settings.dart';

class CxPageFormParameterAdvancedSettings {
  /// Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final CxPageFormParameterAdvancedSettingsDtmfSettings? dtmfSettings;

  CxPageFormParameterAdvancedSettings({
    this.dtmfSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dtmfSettingsValue = dtmfSettings;
    if (dtmfSettingsValue != null) {
      map['dtmfSettings'] = dtmfSettingsValue.toMap();
    }
    return map;
  }

  factory CxPageFormParameterAdvancedSettings.fromMap(
      Map<String, dynamic> map) {
    return CxPageFormParameterAdvancedSettings(
      dtmfSettings: map['dtmfSettings'] == null
          ? null
          : CxPageFormParameterAdvancedSettingsDtmfSettings.fromMap(
              (map['dtmfSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
