// ignore_for_file: unused_element, unnecessary_cast

import 'template_filter_config_sdp_settings_advanced_config.dart';
import 'template_filter_config_sdp_settings_basic_config.dart';

class TemplateFilterConfigSdpSettings {
  /// Sensitive Data Protection Advanced configuration.
  /// Structure is documented below.
  final TemplateFilterConfigSdpSettingsAdvancedConfig? advancedConfig;

  /// Sensitive Data Protection basic configuration.
  /// Structure is documented below.
  final TemplateFilterConfigSdpSettingsBasicConfig? basicConfig;

  /// Creates a new [TemplateFilterConfigSdpSettings].
  /// [advancedConfig] Sensitive Data Protection Advanced configuration.
  /// [basicConfig] Sensitive Data Protection basic configuration.
  TemplateFilterConfigSdpSettings({this.advancedConfig, this.basicConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedConfig': ?advancedConfig == null
          ? null
          : advancedConfig!.toMap(),
      'basicConfig': ?basicConfig == null ? null : basicConfig!.toMap(),
    };
  }

  factory TemplateFilterConfigSdpSettings.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigSdpSettings(
      advancedConfig: map['advancedConfig'] == null
          ? null
          : TemplateFilterConfigSdpSettingsAdvancedConfig.fromMap(
              (map['advancedConfig'] as Map).cast<String, dynamic>(),
            ),
      basicConfig: map['basicConfig'] == null
          ? null
          : TemplateFilterConfigSdpSettingsBasicConfig.fromMap(
              (map['basicConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
