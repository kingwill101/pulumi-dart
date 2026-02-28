// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_nit_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_sdt_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_tdt_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings {
  final String? absentInputAudioBehavior;
  final String? arib;
  final String? aribCaptionsPid;
  final String? aribCaptionsPidControl;
  final String? audioBufferModel;
  final int? audioFramesPerPes;
  final String? audioPids;
  final String? audioStreamType;
  final int? bitrate;
  final String? bufferModel;
  final String? ccDescriptor;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings? dvbNitSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings? dvbSdtSettings;
  final String? dvbSubPids;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings? dvbTdtSettings;
  final String? dvbTeletextPid;
  final String? ebif;
  final String? ebpAudioInterval;
  final int? ebpLookaheadMs;
  final String? ebpPlacement;
  final String? ecmPid;
  final String? esRateInPes;
  final String? etvPlatformPid;
  final String? etvSignalPid;
  final double? fragmentTime;
  final String? klv;
  final String? klvDataPids;
  final String? nielsenId3Behavior;
  final double? nullPacketBitrate;
  final int? patInterval;
  final String? pcrControl;
  final int? pcrPeriod;
  final String? pcrPid;
  final int? pmtInterval;
  final String? pmtPid;
  final int? programNum;
  final String? rateMode;
  final String? scte27Pids;
  final String? scte35Control;
  /// PID from which to read SCTE-35 messages.
  final String? scte35Pid;
  final String? segmentationMarkers;
  final String? segmentationStyle;
  final double? segmentationTime;
  final String? timedMetadataBehavior;
  final String? timedMetadataPid;
  final int? transportStreamId;
  final String? videoPid;

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
      'dvbNitSettings': ?dvbNitSettings == null ? null : dvbNitSettings!.toMap(),
      'dvbSdtSettings': ?dvbSdtSettings == null ? null : dvbSdtSettings!.toMap(),
      'dvbSubPids': ?dvbSubPids,
      'dvbTdtSettings': ?dvbTdtSettings == null ? null : dvbTdtSettings!.toMap(),
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
      absentInputAudioBehavior: map['absentInputAudioBehavior'] == null ? null : map['absentInputAudioBehavior'] as String,
      arib: map['arib'] == null ? null : map['arib'] as String,
      aribCaptionsPid: map['aribCaptionsPid'] == null ? null : map['aribCaptionsPid'] as String,
      aribCaptionsPidControl: map['aribCaptionsPidControl'] == null ? null : map['aribCaptionsPidControl'] as String,
      audioBufferModel: map['audioBufferModel'] == null ? null : map['audioBufferModel'] as String,
      audioFramesPerPes: map['audioFramesPerPes'] == null ? null : map['audioFramesPerPes'] as int,
      audioPids: map['audioPids'] == null ? null : map['audioPids'] as String,
      audioStreamType: map['audioStreamType'] == null ? null : map['audioStreamType'] as String,
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as int,
      bufferModel: map['bufferModel'] == null ? null : map['bufferModel'] as String,
      ccDescriptor: map['ccDescriptor'] == null ? null : map['ccDescriptor'] as String,
      dvbNitSettings: map['dvbNitSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings.fromMap((map['dvbNitSettings'] as Map).cast<String, dynamic>()),
      dvbSdtSettings: map['dvbSdtSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings.fromMap((map['dvbSdtSettings'] as Map).cast<String, dynamic>()),
      dvbSubPids: map['dvbSubPids'] == null ? null : map['dvbSubPids'] as String,
      dvbTdtSettings: map['dvbTdtSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings.fromMap((map['dvbTdtSettings'] as Map).cast<String, dynamic>()),
      dvbTeletextPid: map['dvbTeletextPid'] == null ? null : map['dvbTeletextPid'] as String,
      ebif: map['ebif'] == null ? null : map['ebif'] as String,
      ebpAudioInterval: map['ebpAudioInterval'] == null ? null : map['ebpAudioInterval'] as String,
      ebpLookaheadMs: map['ebpLookaheadMs'] == null ? null : map['ebpLookaheadMs'] as int,
      ebpPlacement: map['ebpPlacement'] == null ? null : map['ebpPlacement'] as String,
      ecmPid: map['ecmPid'] == null ? null : map['ecmPid'] as String,
      esRateInPes: map['esRateInPes'] == null ? null : map['esRateInPes'] as String,
      etvPlatformPid: map['etvPlatformPid'] == null ? null : map['etvPlatformPid'] as String,
      etvSignalPid: map['etvSignalPid'] == null ? null : map['etvSignalPid'] as String,
      fragmentTime: map['fragmentTime'] == null ? null : map['fragmentTime'] as double,
      klv: map['klv'] == null ? null : map['klv'] as String,
      klvDataPids: map['klvDataPids'] == null ? null : map['klvDataPids'] as String,
      nielsenId3Behavior: map['nielsenId3Behavior'] == null ? null : map['nielsenId3Behavior'] as String,
      nullPacketBitrate: map['nullPacketBitrate'] == null ? null : map['nullPacketBitrate'] as double,
      patInterval: map['patInterval'] == null ? null : map['patInterval'] as int,
      pcrControl: map['pcrControl'] == null ? null : map['pcrControl'] as String,
      pcrPeriod: map['pcrPeriod'] == null ? null : map['pcrPeriod'] as int,
      pcrPid: map['pcrPid'] == null ? null : map['pcrPid'] as String,
      pmtInterval: map['pmtInterval'] == null ? null : map['pmtInterval'] as int,
      pmtPid: map['pmtPid'] == null ? null : map['pmtPid'] as String,
      programNum: map['programNum'] == null ? null : map['programNum'] as int,
      rateMode: map['rateMode'] == null ? null : map['rateMode'] as String,
      scte27Pids: map['scte27Pids'] == null ? null : map['scte27Pids'] as String,
      scte35Control: map['scte35Control'] == null ? null : map['scte35Control'] as String,
      scte35Pid: map['scte35Pid'] == null ? null : map['scte35Pid'] as String,
      segmentationMarkers: map['segmentationMarkers'] == null ? null : map['segmentationMarkers'] as String,
      segmentationStyle: map['segmentationStyle'] == null ? null : map['segmentationStyle'] as String,
      segmentationTime: map['segmentationTime'] == null ? null : map['segmentationTime'] as double,
      timedMetadataBehavior: map['timedMetadataBehavior'] == null ? null : map['timedMetadataBehavior'] as String,
      timedMetadataPid: map['timedMetadataPid'] == null ? null : map['timedMetadataPid'] as String,
      transportStreamId: map['transportStreamId'] == null ? null : map['transportStreamId'] as int,
      videoPid: map['videoPid'] == null ? null : map['videoPid'] as String,
    );
  }
}

