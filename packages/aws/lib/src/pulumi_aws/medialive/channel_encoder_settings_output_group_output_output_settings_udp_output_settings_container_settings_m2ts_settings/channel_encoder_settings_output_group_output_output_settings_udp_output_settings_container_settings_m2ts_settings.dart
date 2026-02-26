// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_nit_settings/channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_nit_settings.dart';
import '../channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_sdt_settings/channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_sdt_settings.dart';
import '../channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_tdt_settings/channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_tdt_settings.dart';

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
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings?
      dvbNitSettings;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings?
      dvbSdtSettings;
  final String? dvbSubPids;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings?
      dvbTdtSettings;
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
    final map = <String, dynamic>{};
    final absentInputAudioBehaviorValue = absentInputAudioBehavior;
    if (absentInputAudioBehaviorValue != null) {
      map['absentInputAudioBehavior'] = absentInputAudioBehaviorValue;
    }
    final aribValue = arib;
    if (aribValue != null) {
      map['arib'] = aribValue;
    }
    final aribCaptionsPidValue = aribCaptionsPid;
    if (aribCaptionsPidValue != null) {
      map['aribCaptionsPid'] = aribCaptionsPidValue;
    }
    final aribCaptionsPidControlValue = aribCaptionsPidControl;
    if (aribCaptionsPidControlValue != null) {
      map['aribCaptionsPidControl'] = aribCaptionsPidControlValue;
    }
    final audioBufferModelValue = audioBufferModel;
    if (audioBufferModelValue != null) {
      map['audioBufferModel'] = audioBufferModelValue;
    }
    final audioFramesPerPesValue = audioFramesPerPes;
    if (audioFramesPerPesValue != null) {
      map['audioFramesPerPes'] = audioFramesPerPesValue;
    }
    final audioPidsValue = audioPids;
    if (audioPidsValue != null) {
      map['audioPids'] = audioPidsValue;
    }
    final audioStreamTypeValue = audioStreamType;
    if (audioStreamTypeValue != null) {
      map['audioStreamType'] = audioStreamTypeValue;
    }
    final bitrateValue = bitrate;
    if (bitrateValue != null) {
      map['bitrate'] = bitrateValue;
    }
    final bufferModelValue = bufferModel;
    if (bufferModelValue != null) {
      map['bufferModel'] = bufferModelValue;
    }
    final ccDescriptorValue = ccDescriptor;
    if (ccDescriptorValue != null) {
      map['ccDescriptor'] = ccDescriptorValue;
    }
    final dvbNitSettingsValue = dvbNitSettings;
    if (dvbNitSettingsValue != null) {
      map['dvbNitSettings'] = dvbNitSettingsValue.toMap();
    }
    final dvbSdtSettingsValue = dvbSdtSettings;
    if (dvbSdtSettingsValue != null) {
      map['dvbSdtSettings'] = dvbSdtSettingsValue.toMap();
    }
    final dvbSubPidsValue = dvbSubPids;
    if (dvbSubPidsValue != null) {
      map['dvbSubPids'] = dvbSubPidsValue;
    }
    final dvbTdtSettingsValue = dvbTdtSettings;
    if (dvbTdtSettingsValue != null) {
      map['dvbTdtSettings'] = dvbTdtSettingsValue.toMap();
    }
    final dvbTeletextPidValue = dvbTeletextPid;
    if (dvbTeletextPidValue != null) {
      map['dvbTeletextPid'] = dvbTeletextPidValue;
    }
    final ebifValue = ebif;
    if (ebifValue != null) {
      map['ebif'] = ebifValue;
    }
    final ebpAudioIntervalValue = ebpAudioInterval;
    if (ebpAudioIntervalValue != null) {
      map['ebpAudioInterval'] = ebpAudioIntervalValue;
    }
    final ebpLookaheadMsValue = ebpLookaheadMs;
    if (ebpLookaheadMsValue != null) {
      map['ebpLookaheadMs'] = ebpLookaheadMsValue;
    }
    final ebpPlacementValue = ebpPlacement;
    if (ebpPlacementValue != null) {
      map['ebpPlacement'] = ebpPlacementValue;
    }
    final ecmPidValue = ecmPid;
    if (ecmPidValue != null) {
      map['ecmPid'] = ecmPidValue;
    }
    final esRateInPesValue = esRateInPes;
    if (esRateInPesValue != null) {
      map['esRateInPes'] = esRateInPesValue;
    }
    final etvPlatformPidValue = etvPlatformPid;
    if (etvPlatformPidValue != null) {
      map['etvPlatformPid'] = etvPlatformPidValue;
    }
    final etvSignalPidValue = etvSignalPid;
    if (etvSignalPidValue != null) {
      map['etvSignalPid'] = etvSignalPidValue;
    }
    final fragmentTimeValue = fragmentTime;
    if (fragmentTimeValue != null) {
      map['fragmentTime'] = fragmentTimeValue;
    }
    final klvValue = klv;
    if (klvValue != null) {
      map['klv'] = klvValue;
    }
    final klvDataPidsValue = klvDataPids;
    if (klvDataPidsValue != null) {
      map['klvDataPids'] = klvDataPidsValue;
    }
    final nielsenId3BehaviorValue = nielsenId3Behavior;
    if (nielsenId3BehaviorValue != null) {
      map['nielsenId3Behavior'] = nielsenId3BehaviorValue;
    }
    final nullPacketBitrateValue = nullPacketBitrate;
    if (nullPacketBitrateValue != null) {
      map['nullPacketBitrate'] = nullPacketBitrateValue;
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
    final rateModeValue = rateMode;
    if (rateModeValue != null) {
      map['rateMode'] = rateModeValue;
    }
    final scte27PidsValue = scte27Pids;
    if (scte27PidsValue != null) {
      map['scte27Pids'] = scte27PidsValue;
    }
    final scte35ControlValue = scte35Control;
    if (scte35ControlValue != null) {
      map['scte35Control'] = scte35ControlValue;
    }
    final scte35PidValue = scte35Pid;
    if (scte35PidValue != null) {
      map['scte35Pid'] = scte35PidValue;
    }
    final segmentationMarkersValue = segmentationMarkers;
    if (segmentationMarkersValue != null) {
      map['segmentationMarkers'] = segmentationMarkersValue;
    }
    final segmentationStyleValue = segmentationStyle;
    if (segmentationStyleValue != null) {
      map['segmentationStyle'] = segmentationStyleValue;
    }
    final segmentationTimeValue = segmentationTime;
    if (segmentationTimeValue != null) {
      map['segmentationTime'] = segmentationTimeValue;
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

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings(
      absentInputAudioBehavior: map['absentInputAudioBehavior'] == null
          ? null
          : map['absentInputAudioBehavior'] as String,
      arib: map['arib'] == null ? null : map['arib'] as String,
      aribCaptionsPid: map['aribCaptionsPid'] == null
          ? null
          : map['aribCaptionsPid'] as String,
      aribCaptionsPidControl: map['aribCaptionsPidControl'] == null
          ? null
          : map['aribCaptionsPidControl'] as String,
      audioBufferModel: map['audioBufferModel'] == null
          ? null
          : map['audioBufferModel'] as String,
      audioFramesPerPes: map['audioFramesPerPes'] == null
          ? null
          : map['audioFramesPerPes'] as int,
      audioPids: map['audioPids'] == null ? null : map['audioPids'] as String,
      audioStreamType: map['audioStreamType'] == null
          ? null
          : map['audioStreamType'] as String,
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as int,
      bufferModel:
          map['bufferModel'] == null ? null : map['bufferModel'] as String,
      ccDescriptor:
          map['ccDescriptor'] == null ? null : map['ccDescriptor'] as String,
      dvbNitSettings: map['dvbNitSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings
              .fromMap((map['dvbNitSettings'] as Map).cast<String, dynamic>()),
      dvbSdtSettings: map['dvbSdtSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings
              .fromMap((map['dvbSdtSettings'] as Map).cast<String, dynamic>()),
      dvbSubPids:
          map['dvbSubPids'] == null ? null : map['dvbSubPids'] as String,
      dvbTdtSettings: map['dvbTdtSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings
              .fromMap((map['dvbTdtSettings'] as Map).cast<String, dynamic>()),
      dvbTeletextPid: map['dvbTeletextPid'] == null
          ? null
          : map['dvbTeletextPid'] as String,
      ebif: map['ebif'] == null ? null : map['ebif'] as String,
      ebpAudioInterval: map['ebpAudioInterval'] == null
          ? null
          : map['ebpAudioInterval'] as String,
      ebpLookaheadMs:
          map['ebpLookaheadMs'] == null ? null : map['ebpLookaheadMs'] as int,
      ebpPlacement:
          map['ebpPlacement'] == null ? null : map['ebpPlacement'] as String,
      ecmPid: map['ecmPid'] == null ? null : map['ecmPid'] as String,
      esRateInPes:
          map['esRateInPes'] == null ? null : map['esRateInPes'] as String,
      etvPlatformPid: map['etvPlatformPid'] == null
          ? null
          : map['etvPlatformPid'] as String,
      etvSignalPid:
          map['etvSignalPid'] == null ? null : map['etvSignalPid'] as String,
      fragmentTime:
          map['fragmentTime'] == null ? null : map['fragmentTime'] as double,
      klv: map['klv'] == null ? null : map['klv'] as String,
      klvDataPids:
          map['klvDataPids'] == null ? null : map['klvDataPids'] as String,
      nielsenId3Behavior: map['nielsenId3Behavior'] == null
          ? null
          : map['nielsenId3Behavior'] as String,
      nullPacketBitrate: map['nullPacketBitrate'] == null
          ? null
          : map['nullPacketBitrate'] as double,
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
      rateMode: map['rateMode'] == null ? null : map['rateMode'] as String,
      scte27Pids:
          map['scte27Pids'] == null ? null : map['scte27Pids'] as String,
      scte35Control:
          map['scte35Control'] == null ? null : map['scte35Control'] as String,
      scte35Pid: map['scte35Pid'] == null ? null : map['scte35Pid'] as String,
      segmentationMarkers: map['segmentationMarkers'] == null
          ? null
          : map['segmentationMarkers'] as String,
      segmentationStyle: map['segmentationStyle'] == null
          ? null
          : map['segmentationStyle'] as String,
      segmentationTime: map['segmentationTime'] == null
          ? null
          : map['segmentationTime'] as double,
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
