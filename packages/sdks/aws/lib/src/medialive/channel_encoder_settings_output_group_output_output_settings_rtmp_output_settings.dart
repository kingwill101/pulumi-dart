// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_rtmp_output_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings {
  /// Whether to allow self-signed or verified RTMP certificates.
  final pulumi.Input<String?>? certificateMode;
  /// Number of seconds to wait before retrying a connection to the Flash Media Server if the connection is lost.
  final pulumi.Input<int?>? connectionRetryInterval;
  /// RTMP endpoint excluding the stream name. See `destination` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettingsDestination> destination;
  /// Number of retry attempts.
  final pulumi.Input<int?>? numRetries;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettings].
  /// [certificateMode] Whether to allow self-signed or verified RTMP certificates.
  /// [connectionRetryInterval] Number of seconds to wait before retrying a connection to the Flash Media Server if the connection is lost.
  /// [destination] RTMP endpoint excluding the stream name. See `destination` Block for details.
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
      connectionRetryInterval: (() { final guardedValue = map['connectionRetryInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      destination: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsRtmpOutputSettingsDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
