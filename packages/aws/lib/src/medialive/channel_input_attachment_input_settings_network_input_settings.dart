// ignore_for_file: unused_element, unnecessary_cast

import 'channel_input_attachment_input_settings_network_input_settings_hls_input_settings.dart';

class ChannelInputAttachmentInputSettingsNetworkInputSettings {
  /// Specifies HLS input settings when the uri is for a HLS manifest. See HLS Input Settings for more details.
  final ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings? hlsInputSettings;
  /// Check HTTPS server certificates.
  final String? serverValidation;

  /// Creates a new [ChannelInputAttachmentInputSettingsNetworkInputSettings].
  /// [hlsInputSettings] Specifies HLS input settings when the uri is for a HLS manifest. See HLS Input Settings for more details.
  /// [serverValidation] Check HTTPS server certificates.
  ChannelInputAttachmentInputSettingsNetworkInputSettings({
    this.hlsInputSettings,
    this.serverValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hlsInputSettings': ?hlsInputSettings == null ? null : hlsInputSettings!.toMap(),
      'serverValidation': ?serverValidation,
    };
  }

  factory ChannelInputAttachmentInputSettingsNetworkInputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsNetworkInputSettings(
      hlsInputSettings: map['hlsInputSettings'] == null ? null : ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings.fromMap((map['hlsInputSettings'] as Map).cast<String, dynamic>()),
      serverValidation: map['serverValidation'] == null ? null : map['serverValidation'] as String,
    );
  }
}

