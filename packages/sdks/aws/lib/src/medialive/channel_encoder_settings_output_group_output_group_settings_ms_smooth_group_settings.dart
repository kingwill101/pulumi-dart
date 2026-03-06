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
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings({
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
      acquisitionPointId: (() { final guardedValue = map['acquisitionPointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioOnlyTimecodeControl: (() { final guardedValue = map['audioOnlyTimecodeControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateMode: (() { final guardedValue = map['certificateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionRetryInterval: (() { final guardedValue = map['connectionRetryInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      destination: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      eventId: (() { final guardedValue = map['eventId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventIdMode: (() { final guardedValue = map['eventIdMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventStopBehavior: (() { final guardedValue = map['eventStopBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filecacheDuration: (() { final guardedValue = map['filecacheDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fragmentLength: (() { final guardedValue = map['fragmentLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      inputLossAction: (() { final guardedValue = map['inputLossAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      restartDelay: (() { final guardedValue = map['restartDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      segmentationMode: (() { final guardedValue = map['segmentationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendDelayMs: (() { final guardedValue = map['sendDelayMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sparseTrackType: (() { final guardedValue = map['sparseTrackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamManifestBehavior: (() { final guardedValue = map['streamManifestBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestampOffset: (() { final guardedValue = map['timestampOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestampOffsetMode: (() { final guardedValue = map['timestampOffsetMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

