// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings {
  final pulumi.Input<int>? audioFramesPerPes;
  final pulumi.Input<String>? audioPids;
  final pulumi.Input<String>? ecmPid;
  final pulumi.Input<String>? nielsenId3Behavior;
  final pulumi.Input<int>? patInterval;
  final pulumi.Input<String>? pcrControl;
  final pulumi.Input<int>? pcrPeriod;
  final pulumi.Input<String>? pcrPid;
  final pulumi.Input<int>? pmtInterval;
  final pulumi.Input<String>? pmtPid;
  final pulumi.Input<int>? programNum;
  final pulumi.Input<String>? scte35Behavior;
  /// PID from which to read SCTE-35 messages.
  final pulumi.Input<String>? scte35Pid;
  final pulumi.Input<String>? timedMetadataBehavior;
  final pulumi.Input<String>? timedMetadataPid;
  final pulumi.Input<int>? transportStreamId;
  final pulumi.Input<String>? videoPid;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings].
  /// [audioFramesPerPes] Optional.
  /// [audioPids] Optional.
  /// [ecmPid] Optional.
  /// [nielsenId3Behavior] Optional.
  /// [patInterval] Optional.
  /// [pcrControl] Optional.
  /// [pcrPeriod] Optional.
  /// [pcrPid] Optional.
  /// [pmtInterval] Optional.
  /// [pmtPid] Optional.
  /// [programNum] Optional.
  /// [scte35Behavior] Optional.
  /// [scte35Pid] PID from which to read SCTE-35 messages.
  /// [timedMetadataBehavior] Optional.
  /// [timedMetadataPid] Optional.
  /// [transportStreamId] Optional.
  /// [videoPid] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings({
    this.audioFramesPerPes,
    this.audioPids,
    this.ecmPid,
    this.nielsenId3Behavior,
    this.patInterval,
    this.pcrControl,
    this.pcrPeriod,
    this.pcrPid,
    this.pmtInterval,
    this.pmtPid,
    this.programNum,
    this.scte35Behavior,
    this.scte35Pid,
    this.timedMetadataBehavior,
    this.timedMetadataPid,
    this.transportStreamId,
    this.videoPid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioFramesPerPes': ?audioFramesPerPes,
      'audioPids': ?audioPids,
      'ecmPid': ?ecmPid,
      'nielsenId3Behavior': ?nielsenId3Behavior,
      'patInterval': ?patInterval,
      'pcrControl': ?pcrControl,
      'pcrPeriod': ?pcrPeriod,
      'pcrPid': ?pcrPid,
      'pmtInterval': ?pmtInterval,
      'pmtPid': ?pmtPid,
      'programNum': ?programNum,
      'scte35Behavior': ?scte35Behavior,
      'scte35Pid': ?scte35Pid,
      'timedMetadataBehavior': ?timedMetadataBehavior,
      'timedMetadataPid': ?timedMetadataPid,
      'transportStreamId': ?transportStreamId,
      'videoPid': ?videoPid,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings(
      audioFramesPerPes: map['audioFramesPerPes'] == null ? null : ((map['audioFramesPerPes'] as int).input()).input(),
      audioPids: map['audioPids'] == null ? null : ((map['audioPids'] as String).input()).input(),
      ecmPid: map['ecmPid'] == null ? null : ((map['ecmPid'] as String).input()).input(),
      nielsenId3Behavior: map['nielsenId3Behavior'] == null ? null : ((map['nielsenId3Behavior'] as String).input()).input(),
      patInterval: map['patInterval'] == null ? null : ((map['patInterval'] as int).input()).input(),
      pcrControl: map['pcrControl'] == null ? null : ((map['pcrControl'] as String).input()).input(),
      pcrPeriod: map['pcrPeriod'] == null ? null : ((map['pcrPeriod'] as int).input()).input(),
      pcrPid: map['pcrPid'] == null ? null : ((map['pcrPid'] as String).input()).input(),
      pmtInterval: map['pmtInterval'] == null ? null : ((map['pmtInterval'] as int).input()).input(),
      pmtPid: map['pmtPid'] == null ? null : ((map['pmtPid'] as String).input()).input(),
      programNum: map['programNum'] == null ? null : ((map['programNum'] as int).input()).input(),
      scte35Behavior: map['scte35Behavior'] == null ? null : ((map['scte35Behavior'] as String).input()).input(),
      scte35Pid: map['scte35Pid'] == null ? null : ((map['scte35Pid'] as String).input()).input(),
      timedMetadataBehavior: map['timedMetadataBehavior'] == null ? null : ((map['timedMetadataBehavior'] as String).input()).input(),
      timedMetadataPid: map['timedMetadataPid'] == null ? null : ((map['timedMetadataPid'] as String).input()).input(),
      transportStreamId: map['transportStreamId'] == null ? null : ((map['transportStreamId'] as int).input()).input(),
      videoPid: map['videoPid'] == null ? null : ((map['videoPid'] as String).input()).input(),
    );
  }
}

