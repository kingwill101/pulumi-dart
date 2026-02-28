// ignore_for_file: unused_element, unnecessary_cast

import 'cx_page_advanced_settings_dtmf_settings.dart';

class CxPageAdvancedSettings {
  /// Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  /// * Agent level
  /// * Flow level
  /// * Page level
  /// * Parameter level
  /// Structure is documented below.
  final CxPageAdvancedSettingsDtmfSettings? dtmfSettings;

  /// Creates a new [CxPageAdvancedSettings].
  /// [dtmfSettings] Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
  CxPageAdvancedSettings({
    this.dtmfSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dtmfSettings': ?dtmfSettings == null ? null : dtmfSettings!.toMap(),
    };
  }

  factory CxPageAdvancedSettings.fromMap(Map<String, dynamic> map) {
    return CxPageAdvancedSettings(
      dtmfSettings: map['dtmfSettings'] == null ? null : CxPageAdvancedSettingsDtmfSettings.fromMap((map['dtmfSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

