// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_rtmp_output_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings {
  /// Setting to allow self signed or verified RTMP certificates.
  final pulumi.Input<String>? certificateMode;
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final pulumi.Input<int>? connectionRetryInterval;
  /// The RTMP endpoint excluding the stream name. See Destination for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettingsDestination> destination;
  /// Number of retry attempts.
  final pulumi.Input<int>? numRetries;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings].
  /// [certificateMode] Setting to allow self signed or verified RTMP certificates.
  /// [connectionRetryInterval] Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  /// [destination] The RTMP endpoint excluding the stream name. See Destination for more details.
  /// [numRetries] Number of retry attempts.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings({
    this.certificateMode,
    this.connectionRetryInterval,
    required this.destination,
    this.numRetries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMode': ?certificateMode,
      'connectionRetryInterval': ?connectionRetryInterval,
      'destination': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettingsDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'numRetries': ?numRetries,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings(
      certificateMode: (() { final guardedValue = map['certificateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionRetryInterval: (() { final guardedValue = map['connectionRetryInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      destination: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettingsDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

