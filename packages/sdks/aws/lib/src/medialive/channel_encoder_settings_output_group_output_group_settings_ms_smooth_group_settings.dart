// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_ms_smooth_group_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings {
  final pulumi.Input<String>? acquisitionPointId;
  final pulumi.Input<String>? audioOnlyTimecodeControl;
  /// Setting to allow self signed or verified RTMP certificates.
  final pulumi.Input<String>? certificateMode;
  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final pulumi.Input<int>? connectionRetryInterval;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination> destination;
  final pulumi.Input<String>? eventId;
  final pulumi.Input<String>? eventIdMode;
  final pulumi.Input<String>? eventStopBehavior;
  final pulumi.Input<int>? filecacheDuration;
  final pulumi.Input<int>? fragmentLength;
  final pulumi.Input<String>? inputLossAction;
  /// Number of retry attempts.
  final pulumi.Input<int>? numRetries;
  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int>? restartDelay;
  final pulumi.Input<String>? segmentationMode;
  final pulumi.Input<int>? sendDelayMs;
  final pulumi.Input<String>? sparseTrackType;
  final pulumi.Input<String>? streamManifestBehavior;
  final pulumi.Input<String>? timestampOffset;
  final pulumi.Input<String>? timestampOffsetMode;

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
      'destination': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
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
      acquisitionPointId: map['acquisitionPointId'] == null ? null : ((map['acquisitionPointId'] as String).input()).input(),
      audioOnlyTimecodeControl: map['audioOnlyTimecodeControl'] == null ? null : ((map['audioOnlyTimecodeControl'] as String).input()).input(),
      certificateMode: map['certificateMode'] == null ? null : ((map['certificateMode'] as String).input()).input(),
      connectionRetryInterval: map['connectionRetryInterval'] == null ? null : ((map['connectionRetryInterval'] as int).input()).input(),
      destination: (ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      eventId: map['eventId'] == null ? null : ((map['eventId'] as String).input()).input(),
      eventIdMode: map['eventIdMode'] == null ? null : ((map['eventIdMode'] as String).input()).input(),
      eventStopBehavior: map['eventStopBehavior'] == null ? null : ((map['eventStopBehavior'] as String).input()).input(),
      filecacheDuration: map['filecacheDuration'] == null ? null : ((map['filecacheDuration'] as int).input()).input(),
      fragmentLength: map['fragmentLength'] == null ? null : ((map['fragmentLength'] as int).input()).input(),
      inputLossAction: map['inputLossAction'] == null ? null : ((map['inputLossAction'] as String).input()).input(),
      numRetries: map['numRetries'] == null ? null : ((map['numRetries'] as int).input()).input(),
      restartDelay: map['restartDelay'] == null ? null : ((map['restartDelay'] as int).input()).input(),
      segmentationMode: map['segmentationMode'] == null ? null : ((map['segmentationMode'] as String).input()).input(),
      sendDelayMs: map['sendDelayMs'] == null ? null : ((map['sendDelayMs'] as int).input()).input(),
      sparseTrackType: map['sparseTrackType'] == null ? null : ((map['sparseTrackType'] as String).input()).input(),
      streamManifestBehavior: map['streamManifestBehavior'] == null ? null : ((map['streamManifestBehavior'] as String).input()).input(),
      timestampOffset: map['timestampOffset'] == null ? null : ((map['timestampOffset'] as String).input()).input(),
      timestampOffsetMode: map['timestampOffsetMode'] == null ? null : ((map['timestampOffsetMode'] as String).input()).input(),
    );
  }
}

