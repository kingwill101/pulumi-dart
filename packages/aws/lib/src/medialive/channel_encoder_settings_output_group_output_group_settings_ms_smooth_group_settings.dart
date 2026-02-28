// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_group_settings_ms_smooth_group_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings {
  final String? acquisitionPointId;
  final String? audioOnlyTimecodeControl;

  /// Setting to allow self signed or verified RTMP certificates.
  final String? certificateMode;

  /// Number of seconds to wait before retrying connection to the flash media server if the connection is lost.
  final int? connectionRetryInterval;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination
      destination;
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
    final map = <String, dynamic>{};
    final acquisitionPointIdValue = acquisitionPointId;
    if (acquisitionPointIdValue != null) {
      map['acquisitionPointId'] = acquisitionPointIdValue;
    }
    final audioOnlyTimecodeControlValue = audioOnlyTimecodeControl;
    if (audioOnlyTimecodeControlValue != null) {
      map['audioOnlyTimecodeControl'] = audioOnlyTimecodeControlValue;
    }
    final certificateModeValue = certificateMode;
    if (certificateModeValue != null) {
      map['certificateMode'] = certificateModeValue;
    }
    final connectionRetryIntervalValue = connectionRetryInterval;
    if (connectionRetryIntervalValue != null) {
      map['connectionRetryInterval'] = connectionRetryIntervalValue;
    }
    map['destination'] = destination.toMap();
    final eventIdValue = eventId;
    if (eventIdValue != null) {
      map['eventId'] = eventIdValue;
    }
    final eventIdModeValue = eventIdMode;
    if (eventIdModeValue != null) {
      map['eventIdMode'] = eventIdModeValue;
    }
    final eventStopBehaviorValue = eventStopBehavior;
    if (eventStopBehaviorValue != null) {
      map['eventStopBehavior'] = eventStopBehaviorValue;
    }
    final filecacheDurationValue = filecacheDuration;
    if (filecacheDurationValue != null) {
      map['filecacheDuration'] = filecacheDurationValue;
    }
    final fragmentLengthValue = fragmentLength;
    if (fragmentLengthValue != null) {
      map['fragmentLength'] = fragmentLengthValue;
    }
    final inputLossActionValue = inputLossAction;
    if (inputLossActionValue != null) {
      map['inputLossAction'] = inputLossActionValue;
    }
    final numRetriesValue = numRetries;
    if (numRetriesValue != null) {
      map['numRetries'] = numRetriesValue;
    }
    final restartDelayValue = restartDelay;
    if (restartDelayValue != null) {
      map['restartDelay'] = restartDelayValue;
    }
    final segmentationModeValue = segmentationMode;
    if (segmentationModeValue != null) {
      map['segmentationMode'] = segmentationModeValue;
    }
    final sendDelayMsValue = sendDelayMs;
    if (sendDelayMsValue != null) {
      map['sendDelayMs'] = sendDelayMsValue;
    }
    final sparseTrackTypeValue = sparseTrackType;
    if (sparseTrackTypeValue != null) {
      map['sparseTrackType'] = sparseTrackTypeValue;
    }
    final streamManifestBehaviorValue = streamManifestBehavior;
    if (streamManifestBehaviorValue != null) {
      map['streamManifestBehavior'] = streamManifestBehaviorValue;
    }
    final timestampOffsetValue = timestampOffset;
    if (timestampOffsetValue != null) {
      map['timestampOffset'] = timestampOffsetValue;
    }
    final timestampOffsetModeValue = timestampOffsetMode;
    if (timestampOffsetModeValue != null) {
      map['timestampOffsetMode'] = timestampOffsetModeValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings(
      acquisitionPointId: map['acquisitionPointId'] == null
          ? null
          : map['acquisitionPointId'] as String,
      audioOnlyTimecodeControl: map['audioOnlyTimecodeControl'] == null
          ? null
          : map['audioOnlyTimecodeControl'] as String,
      certificateMode: map['certificateMode'] == null
          ? null
          : map['certificateMode'] as String,
      connectionRetryInterval: map['connectionRetryInterval'] == null
          ? null
          : map['connectionRetryInterval'] as int,
      destination:
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination
              .fromMap((map['destination'] as Map).cast<String, dynamic>()),
      eventId: map['eventId'] == null ? null : map['eventId'] as String,
      eventIdMode:
          map['eventIdMode'] == null ? null : map['eventIdMode'] as String,
      eventStopBehavior: map['eventStopBehavior'] == null
          ? null
          : map['eventStopBehavior'] as String,
      filecacheDuration: map['filecacheDuration'] == null
          ? null
          : map['filecacheDuration'] as int,
      fragmentLength:
          map['fragmentLength'] == null ? null : map['fragmentLength'] as int,
      inputLossAction: map['inputLossAction'] == null
          ? null
          : map['inputLossAction'] as String,
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      restartDelay:
          map['restartDelay'] == null ? null : map['restartDelay'] as int,
      segmentationMode: map['segmentationMode'] == null
          ? null
          : map['segmentationMode'] as String,
      sendDelayMs:
          map['sendDelayMs'] == null ? null : map['sendDelayMs'] as int,
      sparseTrackType: map['sparseTrackType'] == null
          ? null
          : map['sparseTrackType'] as String,
      streamManifestBehavior: map['streamManifestBehavior'] == null
          ? null
          : map['streamManifestBehavior'] as String,
      timestampOffset: map['timestampOffset'] == null
          ? null
          : map['timestampOffset'] as String,
      timestampOffsetMode: map['timestampOffsetMode'] == null
          ? null
          : map['timestampOffsetMode'] as String,
    );
  }
}
