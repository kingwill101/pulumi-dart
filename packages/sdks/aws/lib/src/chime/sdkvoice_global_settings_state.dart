// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_global_settings_voice_connector.dart';

/// Input properties used for looking up and filtering SdkvoiceGlobalSettings resources.
class SdkvoiceGlobalSettingsState {
  /// The Voice Connector settings. See voice_connector.
  final pulumi.Input<SdkvoiceGlobalSettingsVoiceConnector>? voiceConnector;

  /// Creates a new [SdkvoiceGlobalSettingsState].
  /// [voiceConnector] The Voice Connector settings. See voice_connector.
  SdkvoiceGlobalSettingsState({
    this.voiceConnector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'voiceConnector': ?pulumi.Input.mapOptionalInputValue<SdkvoiceGlobalSettingsVoiceConnector, Map<String, dynamic>>(voiceConnector, (value) => value.toMap()),
    };
  }

  factory SdkvoiceGlobalSettingsState.fromMap(Map<String, dynamic> map) {
    return SdkvoiceGlobalSettingsState(
      voiceConnector: (() { final guardedValue = map['voiceConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SdkvoiceGlobalSettingsVoiceConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

