// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_global_settings_voice_connector.dart';

/// {@template pulumi_chime_sdkvoice_global_settings_sdkvoice_global_settings_args_doc}
/// The set of arguments for SdkvoiceGlobalSettings.
/// {@endtemplate}
/// {@macro pulumi_chime_sdkvoice_global_settings_sdkvoice_global_settings_args_doc}
class SdkvoiceGlobalSettingsArgs {
  /// The Voice Connector settings. See voice_connector.
  final pulumi.Input<SdkvoiceGlobalSettingsVoiceConnector> voiceConnector;

  /// Creates a new [SdkvoiceGlobalSettingsArgs].
  /// [voiceConnector] The Voice Connector settings. See voice_connector.
  SdkvoiceGlobalSettingsArgs({
    required this.voiceConnector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'voiceConnector': pulumi.Input.mapInputValue<SdkvoiceGlobalSettingsVoiceConnector, Map<String, dynamic>>(voiceConnector, (value) => value.toMap()),
    };
  }

  factory SdkvoiceGlobalSettingsArgs.fromMap(Map<String, dynamic> map) {
    return SdkvoiceGlobalSettingsArgs(
      voiceConnector: (SdkvoiceGlobalSettingsVoiceConnector.fromMap((map['voiceConnector']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

