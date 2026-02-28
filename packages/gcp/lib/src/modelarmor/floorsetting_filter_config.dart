// ignore_for_file: unused_element, unnecessary_cast

import 'floorsetting_filter_config_malicious_uri_filter_settings.dart';
import 'floorsetting_filter_config_pi_and_jailbreak_filter_settings.dart';
import 'floorsetting_filter_config_rai_settings.dart';
import 'floorsetting_filter_config_sdp_settings.dart';

class FloorsettingFilterConfig {
  /// Malicious URI filter settings.
  /// Structure is documented below.
  final FloorsettingFilterConfigMaliciousUriFilterSettings? maliciousUriFilterSettings;
  /// Prompt injection and Jailbreak Filter settings.
  /// Structure is documented below.
  final FloorsettingFilterConfigPiAndJailbreakFilterSettings? piAndJailbreakFilterSettings;
  /// Responsible AI Filter settings.
  /// Structure is documented below.
  final FloorsettingFilterConfigRaiSettings? raiSettings;
  /// Sensitive Data Protection settings.
  /// Structure is documented below.
  final FloorsettingFilterConfigSdpSettings? sdpSettings;

  /// Creates a new [FloorsettingFilterConfig].
  /// [maliciousUriFilterSettings] Malicious URI filter settings.
  /// [piAndJailbreakFilterSettings] Prompt injection and Jailbreak Filter settings.
  /// [raiSettings] Responsible AI Filter settings.
  /// [sdpSettings] Sensitive Data Protection settings.
  FloorsettingFilterConfig({
    this.maliciousUriFilterSettings,
    this.piAndJailbreakFilterSettings,
    this.raiSettings,
    this.sdpSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maliciousUriFilterSettings': ?maliciousUriFilterSettings == null ? null : maliciousUriFilterSettings!.toMap(),
      'piAndJailbreakFilterSettings': ?piAndJailbreakFilterSettings == null ? null : piAndJailbreakFilterSettings!.toMap(),
      'raiSettings': ?raiSettings == null ? null : raiSettings!.toMap(),
      'sdpSettings': ?sdpSettings == null ? null : sdpSettings!.toMap(),
    };
  }

  factory FloorsettingFilterConfig.fromMap(Map<String, dynamic> map) {
    return FloorsettingFilterConfig(
      maliciousUriFilterSettings: map['maliciousUriFilterSettings'] == null ? null : FloorsettingFilterConfigMaliciousUriFilterSettings.fromMap((map['maliciousUriFilterSettings'] as Map).cast<String, dynamic>()),
      piAndJailbreakFilterSettings: map['piAndJailbreakFilterSettings'] == null ? null : FloorsettingFilterConfigPiAndJailbreakFilterSettings.fromMap((map['piAndJailbreakFilterSettings'] as Map).cast<String, dynamic>()),
      raiSettings: map['raiSettings'] == null ? null : FloorsettingFilterConfigRaiSettings.fromMap((map['raiSettings'] as Map).cast<String, dynamic>()),
      sdpSettings: map['sdpSettings'] == null ? null : FloorsettingFilterConfigSdpSettings.fromMap((map['sdpSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

