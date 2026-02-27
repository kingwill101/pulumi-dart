// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../sdkvoice_global_settings_voice_connector/sdkvoice_global_settings_voice_connector.dart';

/// The set of arguments for SdkvoiceGlobalSettings.
class SdkvoiceGlobalSettingsArgs {
  /// The Voice Connector settings. See voice_connector.
  final pulumi.Input<SdkvoiceGlobalSettingsVoiceConnector> voiceConnector;

  SdkvoiceGlobalSettingsArgs({
    required this.voiceConnector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['voiceConnector'] = pulumi.Input.mapInputValue<
        SdkvoiceGlobalSettingsVoiceConnector,
        Map<String, dynamic>>(voiceConnector, (value) => value.toMap());
    return map;
  }

  factory SdkvoiceGlobalSettingsArgs.fromMap(Map<String, dynamic> map) {
    return SdkvoiceGlobalSettingsArgs(
      voiceConnector:
          pulumi.Input.asInput<SdkvoiceGlobalSettingsVoiceConnector>(
              map['voiceConnector']),
    );
  }
}
