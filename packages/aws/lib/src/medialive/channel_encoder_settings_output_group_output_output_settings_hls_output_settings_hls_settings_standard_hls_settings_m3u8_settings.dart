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

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings(
      audioFramesPerPes: map['audioFramesPerPes'] == null
          ? null
          : map['audioFramesPerPes'] as int,
      audioPids: map['audioPids'] == null ? null : map['audioPids'] as String,
      ecmPid: map['ecmPid'] == null ? null : map['ecmPid'] as String,
      nielsenId3Behavior: map['nielsenId3Behavior'] == null
          ? null
          : map['nielsenId3Behavior'] as String,
      patInterval: map['patInterval'] == null
          ? null
          : map['patInterval'] as int,
      pcrControl: map['pcrControl'] == null
          ? null
          : map['pcrControl'] as String,
      pcrPeriod: map['pcrPeriod'] == null ? null : map['pcrPeriod'] as int,
      pcrPid: map['pcrPid'] == null ? null : map['pcrPid'] as String,
      pmtInterval: map['pmtInterval'] == null
          ? null
          : map['pmtInterval'] as int,
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
