// ignore_for_file: unused_element, unnecessary_cast

import 'floorsetting_filter_config_sdp_settings_advanced_config.dart';
import 'floorsetting_filter_config_sdp_settings_basic_config.dart';

class FloorsettingFilterConfigSdpSettings {
  /// Sensitive Data Protection Advanced configuration.
  /// Structure is documented below.
  final FloorsettingFilterConfigSdpSettingsAdvancedConfig? advancedConfig;

  /// Sensitive Data Protection basic configuration.
  /// Structure is documented below.
  final FloorsettingFilterConfigSdpSettingsBasicConfig? basicConfig;

  /// Creates a new [FloorsettingFilterConfigSdpSettings].
  /// [advancedConfig] Sensitive Data Protection Advanced configuration.
  /// [basicConfig] Sensitive Data Protection basic configuration.
  FloorsettingFilterConfigSdpSettings({this.advancedConfig, this.basicConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedConfig': ?advancedConfig == null
          ? null
          : advancedConfig!.toMap(),
      'basicConfig': ?basicConfig == null ? null : basicConfig!.toMap(),
    };
  }

  factory FloorsettingFilterConfigSdpSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return FloorsettingFilterConfigSdpSettings(
      advancedConfig: map['advancedConfig'] == null
          ? null
          : FloorsettingFilterConfigSdpSettingsAdvancedConfig.fromMap(
              (map['advancedConfig'] as Map).cast<String, dynamic>(),
            ),
      basicConfig: map['basicConfig'] == null
          ? null
          : FloorsettingFilterConfigSdpSettingsBasicConfig.fromMap(
              (map['basicConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
