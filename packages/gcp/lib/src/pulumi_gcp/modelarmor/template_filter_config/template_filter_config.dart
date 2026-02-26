// ignore_for_file: unused_element, unnecessary_cast

import '../template_filter_config_malicious_uri_filter_settings/template_filter_config_malicious_uri_filter_settings.dart';
import '../template_filter_config_pi_and_jailbreak_filter_settings/template_filter_config_pi_and_jailbreak_filter_settings.dart';
import '../template_filter_config_rai_settings/template_filter_config_rai_settings.dart';
import '../template_filter_config_sdp_settings/template_filter_config_sdp_settings.dart';

class TemplateFilterConfig {
  /// Malicious URI filter settings.
  /// Structure is documented below.
  final TemplateFilterConfigMaliciousUriFilterSettings?
      maliciousUriFilterSettings;

  /// Prompt injection and Jailbreak Filter settings.
  /// Structure is documented below.
  final TemplateFilterConfigPiAndJailbreakFilterSettings?
      piAndJailbreakFilterSettings;

  /// Responsible AI Filter settings.
  /// Structure is documented below.
  final TemplateFilterConfigRaiSettings? raiSettings;

  /// Sensitive Data Protection settings.
  /// Structure is documented below.
  final TemplateFilterConfigSdpSettings? sdpSettings;

  TemplateFilterConfig({
    this.maliciousUriFilterSettings,
    this.piAndJailbreakFilterSettings,
    this.raiSettings,
    this.sdpSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maliciousUriFilterSettingsValue = maliciousUriFilterSettings;
    if (maliciousUriFilterSettingsValue != null) {
      map['maliciousUriFilterSettings'] =
          maliciousUriFilterSettingsValue.toMap();
    }
    final piAndJailbreakFilterSettingsValue = piAndJailbreakFilterSettings;
    if (piAndJailbreakFilterSettingsValue != null) {
      map['piAndJailbreakFilterSettings'] =
          piAndJailbreakFilterSettingsValue.toMap();
    }
    final raiSettingsValue = raiSettings;
    if (raiSettingsValue != null) {
      map['raiSettings'] = raiSettingsValue.toMap();
    }
    final sdpSettingsValue = sdpSettings;
    if (sdpSettingsValue != null) {
      map['sdpSettings'] = sdpSettingsValue.toMap();
    }
    return map;
  }

  factory TemplateFilterConfig.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfig(
      maliciousUriFilterSettings: map['maliciousUriFilterSettings'] == null
          ? null
          : TemplateFilterConfigMaliciousUriFilterSettings.fromMap(
              (map['maliciousUriFilterSettings'] as Map)
                  .cast<String, dynamic>()),
      piAndJailbreakFilterSettings: map['piAndJailbreakFilterSettings'] == null
          ? null
          : TemplateFilterConfigPiAndJailbreakFilterSettings.fromMap(
              (map['piAndJailbreakFilterSettings'] as Map)
                  .cast<String, dynamic>()),
      raiSettings: map['raiSettings'] == null
          ? null
          : TemplateFilterConfigRaiSettings.fromMap(
              (map['raiSettings'] as Map).cast<String, dynamic>()),
      sdpSettings: map['sdpSettings'] == null
          ? null
          : TemplateFilterConfigSdpSettings.fromMap(
              (map['sdpSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
