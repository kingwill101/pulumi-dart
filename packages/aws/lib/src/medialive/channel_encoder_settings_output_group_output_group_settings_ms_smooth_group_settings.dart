// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_group_settings_ms_smooth_group_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings {
  final String? acquisitionPointId;
  final String? audioOnlyTimecodeControl;
  /// Setting to allow self signed or verified RTMP certificates.
  final String? certificateMode;
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final int? connectionRetryInterval;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination destination;
  final String? eventId;
  final String? eventIdMode;
  final String? eventStopBehavior;
  final int? filecacheDuration;
  final int? fragmentLength;
  final String? inputLossAction;
  /// Number of retry attempts.
  final int? numRetries;
  /// Number of seconds to wait until a restart is initiated.
  final int? restartDelay;
  final String? segmentationMode;
  final int? sendDelayMs;
  final String? sparseTrackType;
  final String? streamManifestBehavior;
  final String? timestampOffset;
  final String? timestampOffsetMode;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings].
  /// [acquisitionPointId] Optional.
  /// [audioOnlyTimecodeControl] Optional.
  /// [certificateMode] Setting to allow self signed or verified RTMP certificates.
  /// [connectionRetryInterval] Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  /// [destination] Required.
  /// [eventId] Optional.
  /// [eventIdMode] Optional.
  /// [eventStopBehavior] Optional.
  /// [filecacheDuration] Optional.
  /// [fragmentLength] Optional.
  /// [inputLossAction] Optional.
  /// [numRetries] Number of retry attempts.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  /// [segmentationMode] Optional.
  /// [sendDelayMs] Optional.
  /// [sparseTrackType] Optional.
  /// [streamManifestBehavior] Optional.
  /// [timestampOffset] Optional.
  /// [timestampOffsetMode] Optional.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings({
    this.acquisitionPointId,
    this.audioOnlyTimecodeControl,
    this.certificateMode,
    this.connectionRetryInterval,
    required this.destination,
    this.eventId,
    this.eventIdMode,
    this.eventStopBehavior,
    this.filecacheDuration,
    this.fragmentLength,
    this.inputLossAction,
    this.numRetries,
    this.restartDelay,
    this.segmentationMode,
    this.sendDelayMs,
    this.sparseTrackType,
    this.streamManifestBehavior,
    this.timestampOffset,
    this.timestampOffsetMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acquisitionPointId': ?acquisitionPointId,
      'audioOnlyTimecodeControl': ?audioOnlyTimecodeControl,
      'certificateMode': ?certificateMode,
      'connectionRetryInterval': ?connectionRetryInterval,
      'destination': destination.toMap(),
      'eventId': ?eventId,
      'eventIdMode': ?eventIdMode,
      'eventStopBehavior': ?eventStopBehavior,
      'filecacheDuration': ?filecacheDuration,
      'fragmentLength': ?fragmentLength,
      'inputLossAction': ?inputLossAction,
      'numRetries': ?numRetries,
      'restartDelay': ?restartDelay,
      'segmentationMode': ?segmentationMode,
      'sendDelayMs': ?sendDelayMs,
      'sparseTrackType': ?sparseTrackType,
      'streamManifestBehavior': ?streamManifestBehavior,
      'timestampOffset': ?timestampOffset,
      'timestampOffsetMode': ?timestampOffsetMode,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings(
      acquisitionPointId: map['acquisitionPointId'] == null ? null : map['acquisitionPointId'] as String,
      audioOnlyTimecodeControl: map['audioOnlyTimecodeControl'] == null ? null : map['audioOnlyTimecodeControl'] as String,
      certificateMode: map['certificateMode'] == null ? null : map['certificateMode'] as String,
      connectionRetryInterval: map['connectionRetryInterval'] == null ? null : map['connectionRetryInterval'] as int,
      destination: ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      eventId: map['eventId'] == null ? null : map['eventId'] as String,
      eventIdMode: map['eventIdMode'] == null ? null : map['eventIdMode'] as String,
      eventStopBehavior: map['eventStopBehavior'] == null ? null : map['eventStopBehavior'] as String,
      filecacheDuration: map['filecacheDuration'] == null ? null : map['filecacheDuration'] as int,
      fragmentLength: map['fragmentLength'] == null ? null : map['fragmentLength'] as int,
      inputLossAction: map['inputLossAction'] == null ? null : map['inputLossAction'] as String,
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      restartDelay: map['restartDelay'] == null ? null : map['restartDelay'] as int,
      segmentationMode: map['segmentationMode'] == null ? null : map['segmentationMode'] as String,
      sendDelayMs: map['sendDelayMs'] == null ? null : map['sendDelayMs'] as int,
      sparseTrackType: map['sparseTrackType'] == null ? null : map['sparseTrackType'] as String,
      streamManifestBehavior: map['streamManifestBehavior'] == null ? null : map['streamManifestBehavior'] as String,
      timestampOffset: map['timestampOffset'] == null ? null : map['timestampOffset'] as String,
      timestampOffsetMode: map['timestampOffsetMode'] == null ? null : map['timestampOffsetMode'] as String,
    );
  }
}

