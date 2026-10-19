// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_nit_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_sdt_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings_m2ts_settings_dvb_tdt_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings {
  /// When set to `drop`, output audio streams are removed from the program if the selected input audio stream is removed from the input.
  final pulumi.Input<String?>? absentInputAudioBehavior;
  /// When set to `enabled`, uses ARIB-compliant captioning.
  final pulumi.Input<String?>? arib;
  /// Packet identifier (PID) for ARIB captions in the transport stream.
  final pulumi.Input<String?>? aribCaptionsPid;
  /// How to pass along the ARIB captions.
  final pulumi.Input<String?>? aribCaptionsPidControl;
  /// When set to `dvb`, uses DVB buffer model for Dolby Digital audio.
  final pulumi.Input<String?>? audioBufferModel;
  /// Number of audio frames to insert for each PES packet.
  final pulumi.Input<int?>? audioFramesPerPes;
  /// Packet identifier (PID) of the elementary audio streams in the transport stream.
  final pulumi.Input<String?>? audioPids;
  /// When set to `atsc`, uses stream type `0x81` for AC3 and stream type `0x87` for EAC3.
  final pulumi.Input<String?>? audioStreamType;
  /// Output bitrate, in bits per second, of the transport stream.
  final pulumi.Input<int?>? bitrate;
  /// Controls the timing accuracy for output network traffic.
  final pulumi.Input<String?>? bufferModel;
  /// When set to `enabled`, generates a captions service descriptor in the PMT.
  final pulumi.Input<String?>? ccDescriptor;
  /// DVB Network Information Table (NIT) settings. See `dvbNitSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings?>? dvbNitSettings;
  /// DVB Service Description Table (SDT) settings. See `dvbSdtSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings?>? dvbSdtSettings;
  /// Packet identifier (PID) for input source DVB Subtitle data to this output.
  final pulumi.Input<String?>? dvbSubPids;
  /// DVB Time and Date Table (TDT) settings. See `dvbTdtSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings?>? dvbTdtSettings;
  /// Packet identifier (PID) for input source DVB Teletext data to this output.
  final pulumi.Input<String?>? dvbTeletextPid;
  /// When set to `passthrough`, passes through EBIF messages from the input source to this output.
  final pulumi.Input<String?>? ebif;
  /// When set to `videoAndFixedIntervals`, adds Encoder Boundary Points for each elementary audio stream.
  final pulumi.Input<String?>? ebpAudioInterval;
  /// Amount of time, in milliseconds, that the encoder looks ahead for Encoder Boundary Points.
  final pulumi.Input<int?>? ebpLookaheadMs;
  /// Controls placement of Encoder Boundary Points on the video PID and audio PIDs.
  final pulumi.Input<String?>? ebpPlacement;
  /// Packet identifier (PID) for ECM in the transport stream.
  final pulumi.Input<String?>? ecmPid;
  /// When set to `include`, writes the stream to the PES header.
  final pulumi.Input<String?>? esRateInPes;
  /// Packet identifier (PID) for input source ETV Platform data to this output.
  final pulumi.Input<String?>? etvPlatformPid;
  /// Packet identifier (PID) for input source ETV Signal data to this output.
  final pulumi.Input<String?>? etvSignalPid;
  /// Length, in seconds, of each fragment, used only with EBP markers.
  final pulumi.Input<double?>? fragmentTime;
  /// When set to `passthrough`, passes through KLV data from the SCTE-35 source.
  final pulumi.Input<String?>? klv;
  /// Packet identifier (PID) for input source KLV data to this output.
  final pulumi.Input<String?>? klvDataPids;
  /// When set to `passthrough`, passes through Nielsen ID3.
  final pulumi.Input<String?>? nielsenId3Behavior;
  /// Value, in bits per second, to insert null packets into the transport stream.
  final pulumi.Input<double?>? nullPacketBitrate;
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
  /// When set to `vbr`, does not insert null packets into the transport stream.
  final pulumi.Input<String?>? rateMode;
  /// Packet identifier (PID) for input source SCTE-27 data to this output.
  final pulumi.Input<String?>? scte27Pids;
  /// When set to `passthrough`, passes any SCTE-35 signals from the input source to this output.
  final pulumi.Input<String?>? scte35Control;
  /// Packet identifier (PID) of the SCTE-35 stream in the transport stream.
  final pulumi.Input<String?>? scte35Pid;
  /// Type of segmentation markers to include.
  final pulumi.Input<String?>? segmentationMarkers;
  /// Whether segmentation markers are included at the start of a stream.
  final pulumi.Input<String?>? segmentationStyle;
  /// Length, in seconds, of each segment.
  final pulumi.Input<double?>? segmentationTime;
  /// When set to `passthrough`, passes through timed metadata.
  final pulumi.Input<String?>? timedMetadataBehavior;
  /// Packet identifier (PID) of the timed metadata stream in the transport stream.
  final pulumi.Input<String?>? timedMetadataPid;
  /// Value of the transport stream ID field in the Program Map Table.
  final pulumi.Input<int?>? transportStreamId;
  /// Packet identifier (PID) of the elementary video stream in the transport stream.
  final pulumi.Input<String?>? videoPid;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings].
  /// [absentInputAudioBehavior] When set to `drop`, output audio streams are removed from the program if the selected input audio stream is removed from the input.
  /// [arib] When set to `enabled`, uses ARIB-compliant captioning.
  /// [aribCaptionsPid] Packet identifier (PID) for ARIB captions in the transport stream.
  /// [aribCaptionsPidControl] How to pass along the ARIB captions.
  /// [audioBufferModel] When set to `dvb`, uses DVB buffer model for Dolby Digital audio.
  /// [audioFramesPerPes] Number of audio frames to insert for each PES packet.
  /// [audioPids] Packet identifier (PID) of the elementary audio streams in the transport stream.
  /// [audioStreamType] When set to `atsc`, uses stream type `0x81` for AC3 and stream type `0x87` for EAC3.
  /// [bitrate] Output bitrate, in bits per second, of the transport stream.
  /// [bufferModel] Controls the timing accuracy for output network traffic.
  /// [ccDescriptor] When set to `enabled`, generates a captions service descriptor in the PMT.
  /// [dvbNitSettings] DVB Network Information Table (NIT) settings. See `dvbNitSettings` Block for details.
  /// [dvbSdtSettings] DVB Service Description Table (SDT) settings. See `dvbSdtSettings` Block for details.
  /// [dvbSubPids] Packet identifier (PID) for input source DVB Subtitle data to this output.
  /// [dvbTdtSettings] DVB Time and Date Table (TDT) settings. See `dvbTdtSettings` Block for details.
  /// [dvbTeletextPid] Packet identifier (PID) for input source DVB Teletext data to this output.
  /// [ebif] When set to `passthrough`, passes through EBIF messages from the input source to this output.
  /// [ebpAudioInterval] When set to `videoAndFixedIntervals`, adds Encoder Boundary Points for each elementary audio stream.
  /// [ebpLookaheadMs] Amount of time, in milliseconds, that the encoder looks ahead for Encoder Boundary Points.
  /// [ebpPlacement] Controls placement of Encoder Boundary Points on the video PID and audio PIDs.
  /// [ecmPid] Packet identifier (PID) for ECM in the transport stream.
  /// [esRateInPes] When set to `include`, writes the stream to the PES header.
  /// [etvPlatformPid] Packet identifier (PID) for input source ETV Platform data to this output.
  /// [etvSignalPid] Packet identifier (PID) for input source ETV Signal data to this output.
  /// [fragmentTime] Length, in seconds, of each fragment, used only with EBP markers.
  /// [klv] When set to `passthrough`, passes through KLV data from the SCTE-35 source.
  /// [klvDataPids] Packet identifier (PID) for input source KLV data to this output.
  /// [nielsenId3Behavior] When set to `passthrough`, passes through Nielsen ID3.
  /// [nullPacketBitrate] Value, in bits per second, to insert null packets into the transport stream.
  /// [patInterval] Number of milliseconds between instances of this table in the output transport stream.
  /// [pcrControl] When set to `pcrEveryPesPacket`, a Program Clock Reference value is inserted for every Packetized Elementary Stream.
  /// [pcrPeriod] Maximum time, in milliseconds, between Program Clock References.
  /// [pcrPid] Packet identifier (PID) of the Program Clock Reference in the transport stream.
  /// [pmtInterval] Number of milliseconds between instances of this table in the output transport stream.
  /// [pmtPid] Packet identifier (PID) for the Program Map Table in the transport stream.
  /// [programNum] Value of the program number field in the Program Map Table.
  /// [rateMode] When set to `vbr`, does not insert null packets into the transport stream.
  /// [scte27Pids] Packet identifier (PID) for input source SCTE-27 data to this output.
  /// [scte35Control] When set to `passthrough`, passes any SCTE-35 signals from the input source to this output.
  /// [scte35Pid] Packet identifier (PID) of the SCTE-35 stream in the transport stream.
  /// [segmentationMarkers] Type of segmentation markers to include.
  /// [segmentationStyle] Whether segmentation markers are included at the start of a stream.
  /// [segmentationTime] Length, in seconds, of each segment.
  /// [timedMetadataBehavior] When set to `passthrough`, passes through timed metadata.
  /// [timedMetadataPid] Packet identifier (PID) of the timed metadata stream in the transport stream.
  /// [transportStreamId] Value of the transport stream ID field in the Program Map Table.
  /// [videoPid] Packet identifier (PID) of the elementary video stream in the transport stream.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings({
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
      audioFramesPerPes: (() { final guardedValue = map['audioFramesPerPes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      audioPids: (() { final guardedValue = map['audioPids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioStreamType: (() { final guardedValue = map['audioStreamType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bitrate: (() { final guardedValue = map['bitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bufferModel: (() { final guardedValue = map['bufferModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ccDescriptor: (() { final guardedValue = map['ccDescriptor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dvbNitSettings: (() { final guardedValue = map['dvbNitSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dvbSdtSettings: (() { final guardedValue = map['dvbSdtSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dvbSubPids: (() { final guardedValue = map['dvbSubPids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dvbTdtSettings: (() { final guardedValue = map['dvbTdtSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dvbTeletextPid: (() { final guardedValue = map['dvbTeletextPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebif: (() { final guardedValue = map['ebif']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebpAudioInterval: (() { final guardedValue = map['ebpAudioInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebpLookaheadMs: (() { final guardedValue = map['ebpLookaheadMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ebpPlacement: (() { final guardedValue = map['ebpPlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecmPid: (() { final guardedValue = map['ecmPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      esRateInPes: (() { final guardedValue = map['esRateInPes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etvPlatformPid: (() { final guardedValue = map['etvPlatformPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etvSignalPid: (() { final guardedValue = map['etvSignalPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fragmentTime: (() { final guardedValue = map['fragmentTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      klv: (() { final guardedValue = map['klv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      klvDataPids: (() { final guardedValue = map['klvDataPids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nielsenId3Behavior: (() { final guardedValue = map['nielsenId3Behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nullPacketBitrate: (() { final guardedValue = map['nullPacketBitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      patInterval: (() { final guardedValue = map['patInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pcrControl: (() { final guardedValue = map['pcrControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pcrPeriod: (() { final guardedValue = map['pcrPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pcrPid: (() { final guardedValue = map['pcrPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pmtInterval: (() { final guardedValue = map['pmtInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pmtPid: (() { final guardedValue = map['pmtPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programNum: (() { final guardedValue = map['programNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rateMode: (() { final guardedValue = map['rateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scte27Pids: (() { final guardedValue = map['scte27Pids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scte35Control: (() { final guardedValue = map['scte35Control']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scte35Pid: (() { final guardedValue = map['scte35Pid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentationMarkers: (() { final guardedValue = map['segmentationMarkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentationStyle: (() { final guardedValue = map['segmentationStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentationTime: (() { final guardedValue = map['segmentationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      timedMetadataBehavior: (() { final guardedValue = map['timedMetadataBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataPid: (() { final guardedValue = map['timedMetadataPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transportStreamId: (() { final guardedValue = map['transportStreamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      videoPid: (() { final guardedValue = map['videoPid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
