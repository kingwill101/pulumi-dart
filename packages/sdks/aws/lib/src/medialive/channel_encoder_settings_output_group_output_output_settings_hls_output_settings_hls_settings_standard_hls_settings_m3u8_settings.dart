// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings {
  /// Number of audio frames to insert for each PES packet.
  final pulumi.Input<int?>? audioFramesPerPes;
  /// Packet identifier (PID) of the elementary audio streams in the transport stream.
  final pulumi.Input<String?>? audioPids;
  /// Packet identifier (PID) for ECM in the transport stream.
  final pulumi.Input<String?>? ecmPid;
  /// When set to `passthrough`, passes through Nielsen ID3.
  final pulumi.Input<String?>? nielsenId3Behavior;
  /// Number of milliseconds between instances of this table in the output transport stream.
  final pulumi.Input<int?>? patInterval;
  /// When set to `pcrEveryPesPacket`, a Program Clock Reference value is inserted for every Packetized Elementary Stream.
  final pulumi.Input<String?>? pcrControl;
  /// Maximum time, in milliseconds, between Program Clock References.
  final pulumi.Input<int?>? pcrPeriod;
  /// Packet identifier (PID) of the Program Clock Reference in the transport stream.
  final pulumi.Input<String?>? pcrPid;
  /// Number of milliseconds between instances of this table in the output transport stream.
  final pulumi.Input<int?>? pmtInterval;
  /// Packet identifier (PID) for the Program Map Table in the transport stream.
  final pulumi.Input<String?>? pmtPid;
  /// Value of the program number field in the Program Map Table.
  final pulumi.Input<int?>? programNum;
  /// When set to `passthrough`, passes through SCTE-35.
  final pulumi.Input<String?>? scte35Behavior;
  /// Packet identifier (PID) of the SCTE-35 stream in the transport stream.
  final pulumi.Input<String?>? scte35Pid;
  /// When set to `passthrough`, passes through timed metadata.
  final pulumi.Input<String?>? timedMetadataBehavior;
  /// Packet identifier (PID) of the timed metadata stream in the transport stream.
  final pulumi.Input<String?>? timedMetadataPid;
  /// Value of the transport stream ID field in the Program Map Table.
  final pulumi.Input<int?>? transportStreamId;
  /// Packet identifier (PID) of the elementary video stream in the transport stream.
  final pulumi.Input<String?>? videoPid;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings].
  /// [audioFramesPerPes] Number of audio frames to insert for each PES packet.
  /// [audioPids] Packet identifier (PID) of the elementary audio streams in the transport stream.
  /// [ecmPid] Packet identifier (PID) for ECM in the transport stream.
  /// [nielsenId3Behavior] When set to `passthrough`, passes through Nielsen ID3.
  /// [patInterval] Number of milliseconds between instances of this table in the output transport stream.
  /// [pcrControl] When set to `pcrEveryPesPacket`, a Program Clock Reference value is inserted for every Packetized Elementary Stream.
  /// [pcrPeriod] Maximum time, in milliseconds, between Program Clock References.
  /// [pcrPid] Packet identifier (PID) of the Program Clock Reference in the transport stream.
  /// [pmtInterval] Number of milliseconds between instances of this table in the output transport stream.
  /// [pmtPid] Packet identifier (PID) for the Program Map Table in the transport stream.
  /// [programNum] Value of the program number field in the Program Map Table.
  /// [scte35Behavior] When set to `passthrough`, passes through SCTE-35.
  /// [scte35Pid] Packet identifier (PID) of the SCTE-35 stream in the transport stream.
  /// [timedMetadataBehavior] When set to `passthrough`, passes through timed metadata.
  /// [timedMetadataPid] Packet identifier (PID) of the timed metadata stream in the transport stream.
  /// [transportStreamId] Value of the transport stream ID field in the Program Map Table.
  /// [videoPid] Packet identifier (PID) of the elementary video stream in the transport stream.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings({
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
      audioFramesPerPes: (() { final guardedValue = map['audioFramesPerPes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      audioPids: (() { final guardedValue = map['audioPids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecmPid: (() { final guardedValue = map['ecmPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nielsenId3Behavior: (() { final guardedValue = map['nielsenId3Behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patInterval: (() { final guardedValue = map['patInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pcrControl: (() { final guardedValue = map['pcrControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pcrPeriod: (() { final guardedValue = map['pcrPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pcrPid: (() { final guardedValue = map['pcrPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pmtInterval: (() { final guardedValue = map['pmtInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pmtPid: (() { final guardedValue = map['pmtPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programNum: (() { final guardedValue = map['programNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      scte35Behavior: (() { final guardedValue = map['scte35Behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scte35Pid: (() { final guardedValue = map['scte35Pid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataBehavior: (() { final guardedValue = map['timedMetadataBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataPid: (() { final guardedValue = map['timedMetadataPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transportStreamId: (() { final guardedValue = map['transportStreamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      videoPid: (() { final guardedValue = map['videoPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
