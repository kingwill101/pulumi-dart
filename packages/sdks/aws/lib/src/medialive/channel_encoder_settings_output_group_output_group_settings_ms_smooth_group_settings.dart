// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_ms_smooth_group_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings {
  /// Identifier used to associate the segments between the output and the ingest server.
  final pulumi.Input<String?>? acquisitionPointId;
  /// Whether to put a timecode in the single video track of an audio-only output.
  final pulumi.Input<String?>? audioOnlyTimecodeControl;
  /// When set to `selfSigned`, accepts self-signed certificates from the destination server.
  final pulumi.Input<String?>? certificateMode;
  /// Number of seconds to wait before retrying a connection to the server if the connection is lost.
  final pulumi.Input<int?>? connectionRetryInterval;
  /// Smooth Streaming publish point on an IIS server. See `destination` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination> destination;
  /// Microsoft Smooth channel ID that is sent to the IIS server.
  final pulumi.Input<String?>? eventId;
  /// How the event ID is generated.
  final pulumi.Input<String?>? eventIdMode;
  /// When set to `sendEos`, sends an end-of-stream to the IIS server when a stream stops.
  final pulumi.Input<String?>? eventStopBehavior;
  /// Size, in seconds, of the file cache for streaming outputs.
  final pulumi.Input<int?>? filecacheDuration;
  /// Length, in seconds, of mp4 fragments to generate.
  final pulumi.Input<int?>? fragmentLength;
  /// Parameter that controls output group behavior on an input loss.
  final pulumi.Input<String?>? inputLossAction;
  /// Number of retry attempts.
  final pulumi.Input<int?>? numRetries;
  /// Number of seconds to wait until a restart is initiated.
  final pulumi.Input<int?>? restartDelay;
  /// When set to `useInputSegmentation`, segmentation markers from the input are used.
  final pulumi.Input<String?>? segmentationMode;
  /// Number of milliseconds to delay the output from the second pipeline.
  final pulumi.Input<int?>? sendDelayMs;
  /// Type of the sparse track that carries timed metadata.
  final pulumi.Input<String?>? sparseTrackType;
  /// When set to `send`, sends a stream manifest so the publishing point does not start until the first segment is sent.
  final pulumi.Input<String?>? streamManifestBehavior;
  /// Timestamp offset for the event.
  final pulumi.Input<String?>? timestampOffset;
  /// Type of timestamp date offset to use.
  final pulumi.Input<String?>? timestampOffsetMode;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettings].
  /// [acquisitionPointId] Identifier used to associate the segments between the output and the ingest server.
  /// [audioOnlyTimecodeControl] Whether to put a timecode in the single video track of an audio-only output.
  /// [certificateMode] When set to `selfSigned`, accepts self-signed certificates from the destination server.
  /// [connectionRetryInterval] Number of seconds to wait before retrying a connection to the server if the connection is lost.
  /// [destination] Smooth Streaming publish point on an IIS server. See `destination` Block for details.
  /// [eventId] Microsoft Smooth channel ID that is sent to the IIS server.
  /// [eventIdMode] How the event ID is generated.
  /// [eventStopBehavior] When set to `sendEos`, sends an end-of-stream to the IIS server when a stream stops.
  /// [filecacheDuration] Size, in seconds, of the file cache for streaming outputs.
  /// [fragmentLength] Length, in seconds, of mp4 fragments to generate.
  /// [inputLossAction] Parameter that controls output group behavior on an input loss.
  /// [numRetries] Number of retry attempts.
  /// [restartDelay] Number of seconds to wait until a restart is initiated.
  /// [segmentationMode] When set to `useInputSegmentation`, segmentation markers from the input are used.
  /// [sendDelayMs] Number of milliseconds to delay the output from the second pipeline.
  /// [sparseTrackType] Type of the sparse track that carries timed metadata.
  /// [streamManifestBehavior] When set to `send`, sends a stream manifest so the publishing point does not start until the first segment is sent.
  /// [timestampOffset] Timestamp offset for the event.
  /// [timestampOffsetMode] Type of timestamp date offset to use.
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
      connectionRetryInterval: (() { final guardedValue = map['connectionRetryInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      destination: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      eventId: (() { final guardedValue = map['eventId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventIdMode: (() { final guardedValue = map['eventIdMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventStopBehavior: (() { final guardedValue = map['eventStopBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filecacheDuration: (() { final guardedValue = map['filecacheDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      fragmentLength: (() { final guardedValue = map['fragmentLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      inputLossAction: (() { final guardedValue = map['inputLossAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      restartDelay: (() { final guardedValue = map['restartDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      segmentationMode: (() { final guardedValue = map['segmentationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendDelayMs: (() { final guardedValue = map['sendDelayMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sparseTrackType: (() { final guardedValue = map['sparseTrackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamManifestBehavior: (() { final guardedValue = map['streamManifestBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestampOffset: (() { final guardedValue = map['timestampOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestampOffsetMode: (() { final guardedValue = map['timestampOffsetMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
