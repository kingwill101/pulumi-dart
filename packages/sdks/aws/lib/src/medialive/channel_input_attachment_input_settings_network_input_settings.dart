// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_network_input_settings_hls_input_settings.dart';

class ChannelInputAttachmentInputSettingsNetworkInputSettings {
  /// Specifies HLS input settings when the uri is for a HLS manifest. See HLS Input Settings for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings?>? hlsInputSettings;
  /// Check HTTPS server certificates.
  final pulumi.Input<String?>? serverValidation;

  /// Creates a new [ChannelInputAttachmentInputSettingsNetworkInputSettings].
  /// [hlsInputSettings] Specifies HLS input settings when the uri is for a HLS manifest. See HLS Input Settings for more details.
  /// [serverValidation] Check HTTPS server certificates.
  const ChannelInputAttachmentInputSettingsNetworkInputSettings({
    this.hlsInputSettings,
    this.serverValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hlsInputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings, Map<String, dynamic>>(hlsInputSettings, (value) => value.toMap()),
      'serverValidation': ?serverValidation,
    };
  }

  factory ChannelInputAttachmentInputSettingsNetworkInputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsNetworkInputSettings(
      hlsInputSettings: (() { final guardedValue = map['hlsInputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverValidation: (() { final guardedValue = map['serverValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
