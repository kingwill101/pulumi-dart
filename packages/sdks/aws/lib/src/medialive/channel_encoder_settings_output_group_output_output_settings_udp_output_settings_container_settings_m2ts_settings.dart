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
      absentInputAudioBehavior: map['absentInputAudioBehavior'] == null ? null : (map['absentInputAudioBehavior'] as String).input(),
      arib: map['arib'] == null ? null : (map['arib'] as String).input(),
      aribCaptionsPid: map['aribCaptionsPid'] == null ? null : (map['aribCaptionsPid'] as String).input(),
      aribCaptionsPidControl: map['aribCaptionsPidControl'] == null ? null : (map['aribCaptionsPidControl'] as String).input(),
      audioBufferModel: map['audioBufferModel'] == null ? null : (map['audioBufferModel'] as String).input(),
      audioFramesPerPes: map['audioFramesPerPes'] == null ? null : (map['audioFramesPerPes'] as int).input(),
      audioPids: map['audioPids'] == null ? null : (map['audioPids'] as String).input(),
      audioStreamType: map['audioStreamType'] == null ? null : (map['audioStreamType'] as String).input(),
      bitrate: map['bitrate'] == null ? null : (map['bitrate'] as int).input(),
      bufferModel: map['bufferModel'] == null ? null : (map['bufferModel'] as String).input(),
      ccDescriptor: map['ccDescriptor'] == null ? null : (map['ccDescriptor'] as String).input(),
      dvbNitSettings: map['dvbNitSettings'] == null ? null : (ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings.fromMap((map['dvbNitSettings'] as Map).cast<String, dynamic>())).input(),
      dvbSdtSettings: map['dvbSdtSettings'] == null ? null : (ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings.fromMap((map['dvbSdtSettings'] as Map).cast<String, dynamic>())).input(),
      dvbSubPids: map['dvbSubPids'] == null ? null : (map['dvbSubPids'] as String).input(),
      dvbTdtSettings: map['dvbTdtSettings'] == null ? null : (ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings.fromMap((map['dvbTdtSettings'] as Map).cast<String, dynamic>())).input(),
      dvbTeletextPid: map['dvbTeletextPid'] == null ? null : (map['dvbTeletextPid'] as String).input(),
      ebif: map['ebif'] == null ? null : (map['ebif'] as String).input(),
      ebpAudioInterval: map['ebpAudioInterval'] == null ? null : (map['ebpAudioInterval'] as String).input(),
      ebpLookaheadMs: map['ebpLookaheadMs'] == null ? null : (map['ebpLookaheadMs'] as int).input(),
      ebpPlacement: map['ebpPlacement'] == null ? null : (map['ebpPlacement'] as String).input(),
      ecmPid: map['ecmPid'] == null ? null : (map['ecmPid'] as String).input(),
      esRateInPes: map['esRateInPes'] == null ? null : (map['esRateInPes'] as String).input(),
      etvPlatformPid: map['etvPlatformPid'] == null ? null : (map['etvPlatformPid'] as String).input(),
      etvSignalPid: map['etvSignalPid'] == null ? null : (map['etvSignalPid'] as String).input(),
      fragmentTime: map['fragmentTime'] == null ? null : (map['fragmentTime'] as double).input(),
      klv: map['klv'] == null ? null : (map['klv'] as String).input(),
      klvDataPids: map['klvDataPids'] == null ? null : (map['klvDataPids'] as String).input(),
      nielsenId3Behavior: map['nielsenId3Behavior'] == null ? null : (map['nielsenId3Behavior'] as String).input(),
      nullPacketBitrate: map['nullPacketBitrate'] == null ? null : (map['nullPacketBitrate'] as double).input(),
      patInterval: map['patInterval'] == null ? null : (map['patInterval'] as int).input(),
      pcrControl: map['pcrControl'] == null ? null : (map['pcrControl'] as String).input(),
      pcrPeriod: map['pcrPeriod'] == null ? null : (map['pcrPeriod'] as int).input(),
      pcrPid: map['pcrPid'] == null ? null : (map['pcrPid'] as String).input(),
      pmtInterval: map['pmtInterval'] == null ? null : (map['pmtInterval'] as int).input(),
      pmtPid: map['pmtPid'] == null ? null : (map['pmtPid'] as String).input(),
      programNum: map['programNum'] == null ? null : (map['programNum'] as int).input(),
      rateMode: map['rateMode'] == null ? null : (map['rateMode'] as String).input(),
      scte27Pids: map['scte27Pids'] == null ? null : (map['scte27Pids'] as String).input(),
      scte35Control: map['scte35Control'] == null ? null : (map['scte35Control'] as String).input(),
      scte35Pid: map['scte35Pid'] == null ? null : (map['scte35Pid'] as String).input(),
      segmentationMarkers: map['segmentationMarkers'] == null ? null : (map['segmentationMarkers'] as String).input(),
      segmentationStyle: map['segmentationStyle'] == null ? null : (map['segmentationStyle'] as String).input(),
      segmentationTime: map['segmentationTime'] == null ? null : (map['segmentationTime'] as double).input(),
      timedMetadataBehavior: map['timedMetadataBehavior'] == null ? null : (map['timedMetadataBehavior'] as String).input(),
      timedMetadataPid: map['timedMetadataPid'] == null ? null : (map['timedMetadataPid'] as String).input(),
      transportStreamId: map['transportStreamId'] == null ? null : (map['transportStreamId'] as int).input(),
      videoPid: map['videoPid'] == null ? null : (map['videoPid'] as String).input(),
    );
  }
}

