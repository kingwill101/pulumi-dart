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
      audioFramesPerPes: (() { final guardedValue = map['audioFramesPerPes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      audioPids: (() { final guardedValue = map['audioPids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecmPid: (() { final guardedValue = map['ecmPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nielsenId3Behavior: (() { final guardedValue = map['nielsenId3Behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patInterval: (() { final guardedValue = map['patInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pcrControl: (() { final guardedValue = map['pcrControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pcrPeriod: (() { final guardedValue = map['pcrPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pcrPid: (() { final guardedValue = map['pcrPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pmtInterval: (() { final guardedValue = map['pmtInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pmtPid: (() { final guardedValue = map['pmtPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programNum: (() { final guardedValue = map['programNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scte35Behavior: (() { final guardedValue = map['scte35Behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scte35Pid: (() { final guardedValue = map['scte35Pid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataBehavior: (() { final guardedValue = map['timedMetadataBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataPid: (() { final guardedValue = map['timedMetadataPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transportStreamId: (() { final guardedValue = map['transportStreamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      videoPid: (() { final guardedValue = map['videoPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

