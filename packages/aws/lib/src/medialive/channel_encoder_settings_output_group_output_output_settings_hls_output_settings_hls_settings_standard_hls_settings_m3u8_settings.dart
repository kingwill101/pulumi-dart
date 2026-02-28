// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings {
  final int? audioFramesPerPes;
  final String? audioPids;
  final String? ecmPid;
  final String? nielsenId3Behavior;
  final int? patInterval;
  final String? pcrControl;
  final int? pcrPeriod;
  final String? pcrPid;
  final int? pmtInterval;
  final String? pmtPid;
  final int? programNum;
  final String? scte35Behavior;

  /// PID from which to read SCTE-35 messages.
  final String? scte35Pid;
  final String? timedMetadataBehavior;
  final String? timedMetadataPid;
  final int? transportStreamId;
  final String? videoPid;

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
    final map = <String, dynamic>{};
    final audioFramesPerPesValue = audioFramesPerPes;
    if (audioFramesPerPesValue != null) {
      map['audioFramesPerPes'] = audioFramesPerPesValue;
    }
    final audioPidsValue = audioPids;
    if (audioPidsValue != null) {
      map['audioPids'] = audioPidsValue;
    }
    final ecmPidValue = ecmPid;
    if (ecmPidValue != null) {
      map['ecmPid'] = ecmPidValue;
    }
    final nielsenId3BehaviorValue = nielsenId3Behavior;
    if (nielsenId3BehaviorValue != null) {
      map['nielsenId3Behavior'] = nielsenId3BehaviorValue;
    }
    final patIntervalValue = patInterval;
    if (patIntervalValue != null) {
      map['patInterval'] = patIntervalValue;
    }
    final pcrControlValue = pcrControl;
    if (pcrControlValue != null) {
      map['pcrControl'] = pcrControlValue;
    }
    final pcrPeriodValue = pcrPeriod;
    if (pcrPeriodValue != null) {
      map['pcrPeriod'] = pcrPeriodValue;
    }
    final pcrPidValue = pcrPid;
    if (pcrPidValue != null) {
      map['pcrPid'] = pcrPidValue;
    }
    final pmtIntervalValue = pmtInterval;
    if (pmtIntervalValue != null) {
      map['pmtInterval'] = pmtIntervalValue;
    }
    final pmtPidValue = pmtPid;
    if (pmtPidValue != null) {
      map['pmtPid'] = pmtPidValue;
    }
    final programNumValue = programNum;
    if (programNumValue != null) {
      map['programNum'] = programNumValue;
    }
    final scte35BehaviorValue = scte35Behavior;
    if (scte35BehaviorValue != null) {
      map['scte35Behavior'] = scte35BehaviorValue;
    }
    final scte35PidValue = scte35Pid;
    if (scte35PidValue != null) {
      map['scte35Pid'] = scte35PidValue;
    }
    final timedMetadataBehaviorValue = timedMetadataBehavior;
    if (timedMetadataBehaviorValue != null) {
      map['timedMetadataBehavior'] = timedMetadataBehaviorValue;
    }
    final timedMetadataPidValue = timedMetadataPid;
    if (timedMetadataPidValue != null) {
      map['timedMetadataPid'] = timedMetadataPidValue;
    }
    final transportStreamIdValue = transportStreamId;
    if (transportStreamIdValue != null) {
      map['transportStreamId'] = transportStreamIdValue;
    }
    final videoPidValue = videoPid;
    if (videoPidValue != null) {
      map['videoPid'] = videoPidValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings(
      audioFramesPerPes: map['audioFramesPerPes'] == null
          ? null
          : map['audioFramesPerPes'] as int,
      audioPids: map['audioPids'] == null ? null : map['audioPids'] as String,
      ecmPid: map['ecmPid'] == null ? null : map['ecmPid'] as String,
      nielsenId3Behavior: map['nielsenId3Behavior'] == null
          ? null
          : map['nielsenId3Behavior'] as String,
      patInterval:
          map['patInterval'] == null ? null : map['patInterval'] as int,
      pcrControl:
          map['pcrControl'] == null ? null : map['pcrControl'] as String,
      pcrPeriod: map['pcrPeriod'] == null ? null : map['pcrPeriod'] as int,
      pcrPid: map['pcrPid'] == null ? null : map['pcrPid'] as String,
      pmtInterval:
          map['pmtInterval'] == null ? null : map['pmtInterval'] as int,
      pmtPid: map['pmtPid'] == null ? null : map['pmtPid'] as String,
      programNum: map['programNum'] == null ? null : map['programNum'] as int,
      scte35Behavior: map['scte35Behavior'] == null
          ? null
          : map['scte35Behavior'] as String,
      scte35Pid: map['scte35Pid'] == null ? null : map['scte35Pid'] as String,
      timedMetadataBehavior: map['timedMetadataBehavior'] == null
          ? null
          : map['timedMetadataBehavior'] as String,
      timedMetadataPid: map['timedMetadataPid'] == null
          ? null
          : map['timedMetadataPid'] as String,
      transportStreamId: map['transportStreamId'] == null
          ? null
          : map['transportStreamId'] as int,
      videoPid: map['videoPid'] == null ? null : map['videoPid'] as String,
    );
  }
}
