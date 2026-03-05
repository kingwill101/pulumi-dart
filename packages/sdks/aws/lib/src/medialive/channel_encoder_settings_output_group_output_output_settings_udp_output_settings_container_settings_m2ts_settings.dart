// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_nit_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_sdt_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_tdt_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings {
  final pulumi.Input<String>? absentInputAudioBehavior;
  final pulumi.Input<String>? arib;
  final pulumi.Input<String>? aribCaptionsPid;
  final pulumi.Input<String>? aribCaptionsPidControl;
  final pulumi.Input<String>? audioBufferModel;
  final pulumi.Input<int>? audioFramesPerPes;
  final pulumi.Input<String>? audioPids;
  final pulumi.Input<String>? audioStreamType;
  final pulumi.Input<int>? bitrate;
  final pulumi.Input<String>? bufferModel;
  final pulumi.Input<String>? ccDescriptor;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings>? dvbNitSettings;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings>? dvbSdtSettings;
  final pulumi.Input<String>? dvbSubPids;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings>? dvbTdtSettings;
  final pulumi.Input<String>? dvbTeletextPid;
  final pulumi.Input<String>? ebif;
  final pulumi.Input<String>? ebpAudioInterval;
  final pulumi.Input<int>? ebpLookaheadMs;
  final pulumi.Input<String>? ebpPlacement;
  final pulumi.Input<String>? ecmPid;
  final pulumi.Input<String>? esRateInPes;
  final pulumi.Input<String>? etvPlatformPid;
  final pulumi.Input<String>? etvSignalPid;
  final pulumi.Input<double>? fragmentTime;
  final pulumi.Input<String>? klv;
  final pulumi.Input<String>? klvDataPids;
  final pulumi.Input<String>? nielsenId3Behavior;
  final pulumi.Input<double>? nullPacketBitrate;
  final pulumi.Input<int>? patInterval;
  final pulumi.Input<String>? pcrControl;
  final pulumi.Input<int>? pcrPeriod;
  final pulumi.Input<String>? pcrPid;
  final pulumi.Input<int>? pmtInterval;
  final pulumi.Input<String>? pmtPid;
  final pulumi.Input<int>? programNum;
  final pulumi.Input<String>? rateMode;
  final pulumi.Input<String>? scte27Pids;
  final pulumi.Input<String>? scte35Control;
  /// PID from which to read SCTE-35 messages.
  final pulumi.Input<String>? scte35Pid;
  final pulumi.Input<String>? segmentationMarkers;
  final pulumi.Input<String>? segmentationStyle;
  final pulumi.Input<double>? segmentationTime;
  final pulumi.Input<String>? timedMetadataBehavior;
  final pulumi.Input<String>? timedMetadataPid;
  final pulumi.Input<int>? transportStreamId;
  final pulumi.Input<String>? videoPid;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings].
  /// [absentInputAudioBehavior] Optional.
  /// [arib] Optional.
  /// [aribCaptionsPid] Optional.
  /// [aribCaptionsPidControl] Optional.
  /// [audioBufferModel] Optional.
  /// [audioFramesPerPes] Optional.
  /// [audioPids] Optional.
  /// [audioStreamType] Optional.
  /// [bitrate] Optional.
  /// [bufferModel] Optional.
  /// [ccDescriptor] Optional.
  /// [dvbNitSettings] Optional.
  /// [dvbSdtSettings] Optional.
  /// [dvbSubPids] Optional.
  /// [dvbTdtSettings] Optional.
  /// [dvbTeletextPid] Optional.
  /// [ebif] Optional.
  /// [ebpAudioInterval] Optional.
  /// [ebpLookaheadMs] Optional.
  /// [ebpPlacement] Optional.
  /// [ecmPid] Optional.
  /// [esRateInPes] Optional.
  /// [etvPlatformPid] Optional.
  /// [etvSignalPid] Optional.
  /// [fragmentTime] Optional.
  /// [klv] Optional.
  /// [klvDataPids] Optional.
  /// [nielsenId3Behavior] Optional.
  /// [nullPacketBitrate] Optional.
  /// [patInterval] Optional.
  /// [pcrControl] Optional.
  /// [pcrPeriod] Optional.
  /// [pcrPid] Optional.
  /// [pmtInterval] Optional.
  /// [pmtPid] Optional.
  /// [programNum] Optional.
  /// [rateMode] Optional.
  /// [scte27Pids] Optional.
  /// [scte35Control] Optional.
  /// [scte35Pid] PID from which to read SCTE-35 messages.
  /// [segmentationMarkers] Optional.
  /// [segmentationStyle] Optional.
  /// [segmentationTime] Optional.
  /// [timedMetadataBehavior] Optional.
  /// [timedMetadataPid] Optional.
  /// [transportStreamId] Optional.
  /// [videoPid] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings({
    this.absentInputAudioBehavior,
    this.arib,
    this.aribCaptionsPid,
    this.aribCaptionsPidControl,
    this.audioBufferModel,
    this.audioFramesPerPes,
    this.audioPids,
    this.audioStreamType,
    this.bitrate,
    this.bufferModel,
    this.ccDescriptor,
    this.dvbNitSettings,
    this.dvbSdtSettings,
    this.dvbSubPids,
    this.dvbTdtSettings,
    this.dvbTeletextPid,
    this.ebif,
    this.ebpAudioInterval,
    this.ebpLookaheadMs,
    this.ebpPlacement,
    this.ecmPid,
    this.esRateInPes,
    this.etvPlatformPid,
    this.etvSignalPid,
    this.fragmentTime,
    this.klv,
    this.klvDataPids,
    this.nielsenId3Behavior,
    this.nullPacketBitrate,
    this.patInterval,
    this.pcrControl,
    this.pcrPeriod,
    this.pcrPid,
    this.pmtInterval,
    this.pmtPid,
    this.programNum,
    this.rateMode,
    this.scte27Pids,
    this.scte35Control,
    this.scte35Pid,
    this.segmentationMarkers,
    this.segmentationStyle,
    this.segmentationTime,
    this.timedMetadataBehavior,
    this.timedMetadataPid,
    this.transportStreamId,
    this.videoPid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absentInputAudioBehavior': ?absentInputAudioBehavior,
      'arib': ?arib,
      'aribCaptionsPid': ?aribCaptionsPid,
      'aribCaptionsPidControl': ?aribCaptionsPidControl,
      'audioBufferModel': ?audioBufferModel,
      'audioFramesPerPes': ?audioFramesPerPes,
      'audioPids': ?audioPids,
      'audioStreamType': ?audioStreamType,
      'bitrate': ?bitrate,
      'bufferModel': ?bufferModel,
      'ccDescriptor': ?ccDescriptor,
      'dvbNitSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings, Map<String, dynamic>>(dvbNitSettings, (value) => value.toMap()),
      'dvbSdtSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings, Map<String, dynamic>>(dvbSdtSettings, (value) => value.toMap()),
      'dvbSubPids': ?dvbSubPids,
      'dvbTdtSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings, Map<String, dynamic>>(dvbTdtSettings, (value) => value.toMap()),
      'dvbTeletextPid': ?dvbTeletextPid,
      'ebif': ?ebif,
      'ebpAudioInterval': ?ebpAudioInterval,
      'ebpLookaheadMs': ?ebpLookaheadMs,
      'ebpPlacement': ?ebpPlacement,
      'ecmPid': ?ecmPid,
      'esRateInPes': ?esRateInPes,
      'etvPlatformPid': ?etvPlatformPid,
      'etvSignalPid': ?etvSignalPid,
      'fragmentTime': ?fragmentTime,
      'klv': ?klv,
      'klvDataPids': ?klvDataPids,
      'nielsenId3Behavior': ?nielsenId3Behavior,
      'nullPacketBitrate': ?nullPacketBitrate,
      'patInterval': ?patInterval,
      'pcrControl': ?pcrControl,
      'pcrPeriod': ?pcrPeriod,
      'pcrPid': ?pcrPid,
      'pmtInterval': ?pmtInterval,
      'pmtPid': ?pmtPid,
      'programNum': ?programNum,
      'rateMode': ?rateMode,
      'scte27Pids': ?scte27Pids,
      'scte35Control': ?scte35Control,
      'scte35Pid': ?scte35Pid,
      'segmentationMarkers': ?segmentationMarkers,
      'segmentationStyle': ?segmentationStyle,
      'segmentationTime': ?segmentationTime,
      'timedMetadataBehavior': ?timedMetadataBehavior,
      'timedMetadataPid': ?timedMetadataPid,
      'transportStreamId': ?transportStreamId,
      'videoPid': ?videoPid,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings(
      absentInputAudioBehavior: (() { final guardedValue = map['absentInputAudioBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arib: (() { final guardedValue = map['arib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aribCaptionsPid: (() { final guardedValue = map['aribCaptionsPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aribCaptionsPidControl: (() { final guardedValue = map['aribCaptionsPidControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioBufferModel: (() { final guardedValue = map['audioBufferModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioFramesPerPes: (() { final guardedValue = map['audioFramesPerPes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      audioPids: (() { final guardedValue = map['audioPids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioStreamType: (() { final guardedValue = map['audioStreamType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bitrate: (() { final guardedValue = map['bitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bufferModel: (() { final guardedValue = map['bufferModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ccDescriptor: (() { final guardedValue = map['ccDescriptor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dvbNitSettings: (() { final guardedValue = map['dvbNitSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dvbSdtSettings: (() { final guardedValue = map['dvbSdtSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dvbSubPids: (() { final guardedValue = map['dvbSubPids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dvbTdtSettings: (() { final guardedValue = map['dvbTdtSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dvbTeletextPid: (() { final guardedValue = map['dvbTeletextPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebif: (() { final guardedValue = map['ebif']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebpAudioInterval: (() { final guardedValue = map['ebpAudioInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebpLookaheadMs: (() { final guardedValue = map['ebpLookaheadMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ebpPlacement: (() { final guardedValue = map['ebpPlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecmPid: (() { final guardedValue = map['ecmPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      esRateInPes: (() { final guardedValue = map['esRateInPes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etvPlatformPid: (() { final guardedValue = map['etvPlatformPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etvSignalPid: (() { final guardedValue = map['etvSignalPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fragmentTime: (() { final guardedValue = map['fragmentTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      klv: (() { final guardedValue = map['klv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      klvDataPids: (() { final guardedValue = map['klvDataPids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nielsenId3Behavior: (() { final guardedValue = map['nielsenId3Behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nullPacketBitrate: (() { final guardedValue = map['nullPacketBitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      patInterval: (() { final guardedValue = map['patInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pcrControl: (() { final guardedValue = map['pcrControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pcrPeriod: (() { final guardedValue = map['pcrPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pcrPid: (() { final guardedValue = map['pcrPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pmtInterval: (() { final guardedValue = map['pmtInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pmtPid: (() { final guardedValue = map['pmtPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programNum: (() { final guardedValue = map['programNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rateMode: (() { final guardedValue = map['rateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scte27Pids: (() { final guardedValue = map['scte27Pids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scte35Control: (() { final guardedValue = map['scte35Control']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scte35Pid: (() { final guardedValue = map['scte35Pid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentationMarkers: (() { final guardedValue = map['segmentationMarkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentationStyle: (() { final guardedValue = map['segmentationStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentationTime: (() { final guardedValue = map['segmentationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      timedMetadataBehavior: (() { final guardedValue = map['timedMetadataBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataPid: (() { final guardedValue = map['timedMetadataPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transportStreamId: (() { final guardedValue = map['transportStreamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      videoPid: (() { final guardedValue = map['videoPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

