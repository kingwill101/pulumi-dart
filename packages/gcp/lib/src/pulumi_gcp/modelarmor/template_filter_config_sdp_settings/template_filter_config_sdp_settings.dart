// ignore_for_file: unused_element, unnecessary_cast

import '../template_filter_config_sdp_settings_advanced_config/template_filter_config_sdp_settings_advanced_config.dart';
import '../template_filter_config_sdp_settings_basic_config/template_filter_config_sdp_settings_basic_config.dart';

class TemplateFilterConfigSdpSettings {
  /// Sensitive Data Protection Advanced configuration.
  /// Structure is documented below.
  final TemplateFilterConfigSdpSettingsAdvancedConfig? advancedConfig;

  /// Sensitive Data Protection basic configuration.
  /// Structure is documented below.
  final TemplateFilterConfigSdpSettingsBasicConfig? basicConfig;

  TemplateFilterConfigSdpSettings({
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

  factory TemplateFilterConfigSdpSettings.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigSdpSettings(
      advancedConfig: map['advancedConfig'] == null
          ? null
          : TemplateFilterConfigSdpSettingsAdvancedConfig.fromMap(
              (map['advancedConfig'] as Map).cast<String, dynamic>()),
      basicConfig: map['basicConfig'] == null
          ? null
          : TemplateFilterConfigSdpSettingsBasicConfig.fromMap(
              (map['basicConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
