// ignore_for_file: unused_element, unnecessary_cast

import '../floorsetting_filter_config_sdp_settings_advanced_config/floorsetting_filter_config_sdp_settings_advanced_config.dart';
import '../floorsetting_filter_config_sdp_settings_basic_config/floorsetting_filter_config_sdp_settings_basic_config.dart';

class FloorsettingFilterConfigSdpSettings {
  /// Sensitive Data Protection Advanced configuration.
  /// Structure is documented below.
  final FloorsettingFilterConfigSdpSettingsAdvancedConfig? advancedConfig;

  /// Sensitive Data Protection basic configuration.
  /// Structure is documented below.
  final FloorsettingFilterConfigSdpSettingsBasicConfig? basicConfig;

  FloorsettingFilterConfigSdpSettings({
    this.advancedConfig,
    this.basicConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedConfigValue = advancedConfig;
    if (advancedConfigValue != null) {
      map['advancedConfig'] = advancedConfigValue.toMap();
    }
    final basicConfigValue = basicConfig;
    if (basicConfigValue != null) {
      map['basicConfig'] = basicConfigValue.toMap();
    }
    return map;
  }

  factory FloorsettingFilterConfigSdpSettings.fromMap(
      Map<String, dynamic> map) {
    return FloorsettingFilterConfigSdpSettings(
      advancedConfig: map['advancedConfig'] == null
          ? null
          : FloorsettingFilterConfigSdpSettingsAdvancedConfig.fromMap(
              (map['advancedConfig'] as Map).cast<String, dynamic>()),
      basicConfig: map['basicConfig'] == null
          ? null
          : FloorsettingFilterConfigSdpSettingsBasicConfig.fromMap(
              (map['basicConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
