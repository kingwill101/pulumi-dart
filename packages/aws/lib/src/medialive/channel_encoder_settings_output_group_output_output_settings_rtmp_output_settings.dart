// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_output_settings_rtmp_output_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings {
  /// Setting to allow self signed or verified RTMP certificates.
  final String? certificateMode;

  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final int? connectionRetryInterval;

  /// The RTMP endpoint excluding the stream name. See Destination for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettingsDestination
      destination;

  /// Number of retry attempts.
  final int? numRetries;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings].
  /// [certificateMode] Setting to allow self signed or verified RTMP certificates.
  /// [connectionRetryInterval] Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  /// [destination] The RTMP endpoint excluding the stream name. See Destination for more details.
  /// [numRetries] Number of retry attempts.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings({
    this.certificateMode,
    this.connectionRetryInterval,
    required this.destination,
    this.numRetries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateModeValue = certificateMode;
    if (certificateModeValue != null) {
      map['certificateMode'] = certificateModeValue;
    }
    final connectionRetryIntervalValue = connectionRetryInterval;
    if (connectionRetryIntervalValue != null) {
      map['connectionRetryInterval'] = connectionRetryIntervalValue;
    }
    map['destination'] = destination.toMap();
    final numRetriesValue = numRetries;
    if (numRetriesValue != null) {
      map['numRetries'] = numRetriesValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings(
      certificateMode: map['certificateMode'] == null
          ? null
          : map['certificateMode'] as String,
      connectionRetryInterval: map['connectionRetryInterval'] == null
          ? null
          : map['connectionRetryInterval'] as int,
      destination:
          ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettingsDestination
              .fromMap((map['destination'] as Map).cast<String, dynamic>()),
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
    );
  }
}
