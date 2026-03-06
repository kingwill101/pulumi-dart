// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_video_description_codec_settings_h264_settings_filter_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings {
  /// Enables or disables adaptive quantization.
  final pulumi.Input<String>? adaptiveQuantization;
  /// Indicates that AFD values will be written into the output stream.
  final pulumi.Input<String>? afdSignaling;
  /// Average bitrate in bits/second.
  final pulumi.Input<int>? bitrate;
  final pulumi.Input<int>? bufFillPct;
  /// Size of buffer in bits.
  final pulumi.Input<int>? bufSize;
  /// Includes color space metadata in the output.
  final pulumi.Input<String>? colorMetadata;
  /// Entropy encoding mode.
  final pulumi.Input<String>? entropyEncoding;
  /// Filters to apply to an encode. See H264 Filter Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings>? filterSettings;
  /// Four bit AFD value to write on all frames of video in the output stream.
  final pulumi.Input<String>? fixedAfd;
  final pulumi.Input<String>? flickerAq;
  /// Controls whether coding is performed on a field basis or on a frame basis.
  final pulumi.Input<String>? forceFieldPictures;
  /// Indicates how the output video frame rate is specified.
  final pulumi.Input<String>? framerateControl;
  /// Framerate denominator.
  final pulumi.Input<int>? framerateDenominator;
  /// Framerate numerator.
  final pulumi.Input<int>? framerateNumerator;
  /// GOP-B reference.
  final pulumi.Input<String>? gopBReference;
  /// Frequency of closed GOPs.
  final pulumi.Input<int>? gopClosedCadence;
  /// Number of B-frames between reference frames.
  final pulumi.Input<int>? gopNumBFrames;
  /// GOP size in units of either frames of seconds per `gop_size_units`.
  final pulumi.Input<double>? gopSize;
  /// Indicates if the `gop_size` is specified in frames or seconds.
  final pulumi.Input<String>? gopSizeUnits;
  /// H264 level.
  final pulumi.Input<String>? level;
  /// Amount of lookahead.
  final pulumi.Input<String>? lookAheadRateControl;
  /// Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
  final pulumi.Input<int>? maxBitrate;
  /// Min interval.
  final pulumi.Input<int>? minIInterval;
  /// Number of reference frames to use.
  final pulumi.Input<int>? numRefFrames;
  /// Indicates how the output pixel aspect ratio is specified.
  final pulumi.Input<String>? parControl;
  /// Pixel Aspect Ratio denominator.
  final pulumi.Input<int>? parDenominator;
  /// Pixel Aspect Ratio numerator.
  final pulumi.Input<int>? parNumerator;
  /// H264 profile.
  final pulumi.Input<String>? profile;
  /// Quality level.
  final pulumi.Input<String>? qualityLevel;
  /// Controls the target quality for the video encode.
  final pulumi.Input<int>? qvbrQualityLevel;
  /// Rate control mode.
  final pulumi.Input<String>? rateControlMode;
  /// Sets the scan type of the output.
  final pulumi.Input<String>? scanType;
  /// Scene change detection.
  final pulumi.Input<String>? sceneChangeDetect;
  /// Number of slices per picture.
  final pulumi.Input<int>? slices;
  /// Softness.
  final pulumi.Input<int>? softness;
  /// Makes adjustments within each frame based on spatial variation of content complexity.
  final pulumi.Input<String>? spatialAq;
  /// Subgop length.
  final pulumi.Input<String>? subgopLength;
  /// Produces a bitstream compliant with SMPTE RP-2027.
  final pulumi.Input<String>? syntax;
  /// Makes adjustments within each frame based on temporal variation of content complexity.
  final pulumi.Input<String>? temporalAq;
  /// Determines how timecodes should be inserted into the video elementary stream.
  final pulumi.Input<String>? timecodeInsertion;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings].
  /// [adaptiveQuantization] Enables or disables adaptive quantization.
  /// [afdSignaling] Indicates that AFD values will be written into the output stream.
  /// [bitrate] Average bitrate in bits/second.
  /// [bufFillPct] Optional.
  /// [bufSize] Size of buffer in bits.
  /// [colorMetadata] Includes color space metadata in the output.
  /// [entropyEncoding] Entropy encoding mode.
  /// [filterSettings] Filters to apply to an encode. See H264 Filter Settings for more details.
  /// [fixedAfd] Four bit AFD value to write on all frames of video in the output stream.
  /// [flickerAq] Optional.
  /// [forceFieldPictures] Controls whether coding is performed on a field basis or on a frame basis.
  /// [framerateControl] Indicates how the output video frame rate is specified.
  /// [framerateDenominator] Framerate denominator.
  /// [framerateNumerator] Framerate numerator.
  /// [gopBReference] GOP-B reference.
  /// [gopClosedCadence] Frequency of closed GOPs.
  /// [gopNumBFrames] Number of B-frames between reference frames.
  /// [gopSize] GOP size in units of either frames of seconds per `gop_size_units`.
  /// [gopSizeUnits] Indicates if the `gop_size` is specified in frames or seconds.
  /// [level] H264 level.
  /// [lookAheadRateControl] Amount of lookahead.
  /// [maxBitrate] Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
  /// [minIInterval] Min interval.
  /// [numRefFrames] Number of reference frames to use.
  /// [parControl] Indicates how the output pixel aspect ratio is specified.
  /// [parDenominator] Pixel Aspect Ratio denominator.
  /// [parNumerator] Pixel Aspect Ratio numerator.
  /// [profile] H264 profile.
  /// [qualityLevel] Quality level.
  /// [qvbrQualityLevel] Controls the target quality for the video encode.
  /// [rateControlMode] Rate control mode.
  /// [scanType] Sets the scan type of the output.
  /// [sceneChangeDetect] Scene change detection.
  /// [slices] Number of slices per picture.
  /// [softness] Softness.
  /// [spatialAq] Makes adjustments within each frame based on spatial variation of content complexity.
  /// [subgopLength] Subgop length.
  /// [syntax] Produces a bitstream compliant with SMPTE RP-2027.
  /// [temporalAq] Makes adjustments within each frame based on temporal variation of content complexity.
  /// [timecodeInsertion] Determines how timecodes should be inserted into the video elementary stream.
  const ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings({
    this.adaptiveQuantization,
    this.afdSignaling,
    this.bitrate,
    this.bufFillPct,
    this.bufSize,
    this.colorMetadata,
    this.entropyEncoding,
    this.filterSettings,
    this.fixedAfd,
    this.flickerAq,
    this.forceFieldPictures,
    this.framerateControl,
    this.framerateDenominator,
    this.framerateNumerator,
    this.gopBReference,
    this.gopClosedCadence,
    this.gopNumBFrames,
    this.gopSize,
    this.gopSizeUnits,
    this.level,
    this.lookAheadRateControl,
    this.maxBitrate,
    this.minIInterval,
    this.numRefFrames,
    this.parControl,
    this.parDenominator,
    this.parNumerator,
    this.profile,
    this.qualityLevel,
    this.qvbrQualityLevel,
    this.rateControlMode,
    this.scanType,
    this.sceneChangeDetect,
    this.slices,
    this.softness,
    this.spatialAq,
    this.subgopLength,
    this.syntax,
    this.temporalAq,
    this.timecodeInsertion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveQuantization': ?adaptiveQuantization,
      'afdSignaling': ?afdSignaling,
      'bitrate': ?bitrate,
      'bufFillPct': ?bufFillPct,
      'bufSize': ?bufSize,
      'colorMetadata': ?colorMetadata,
      'entropyEncoding': ?entropyEncoding,
      'filterSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings, Map<String, dynamic>>(filterSettings, (value) => value.toMap()),
      'fixedAfd': ?fixedAfd,
      'flickerAq': ?flickerAq,
      'forceFieldPictures': ?forceFieldPictures,
      'framerateControl': ?framerateControl,
      'framerateDenominator': ?framerateDenominator,
      'framerateNumerator': ?framerateNumerator,
      'gopBReference': ?gopBReference,
      'gopClosedCadence': ?gopClosedCadence,
      'gopNumBFrames': ?gopNumBFrames,
      'gopSize': ?gopSize,
      'gopSizeUnits': ?gopSizeUnits,
      'level': ?level,
      'lookAheadRateControl': ?lookAheadRateControl,
      'maxBitrate': ?maxBitrate,
      'minIInterval': ?minIInterval,
      'numRefFrames': ?numRefFrames,
      'parControl': ?parControl,
      'parDenominator': ?parDenominator,
      'parNumerator': ?parNumerator,
      'profile': ?profile,
      'qualityLevel': ?qualityLevel,
      'qvbrQualityLevel': ?qvbrQualityLevel,
      'rateControlMode': ?rateControlMode,
      'scanType': ?scanType,
      'sceneChangeDetect': ?sceneChangeDetect,
      'slices': ?slices,
      'softness': ?softness,
      'spatialAq': ?spatialAq,
      'subgopLength': ?subgopLength,
      'syntax': ?syntax,
      'temporalAq': ?temporalAq,
      'timecodeInsertion': ?timecodeInsertion,
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings(
      adaptiveQuantization: (() { final guardedValue = map['adaptiveQuantization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      afdSignaling: (() { final guardedValue = map['afdSignaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bitrate: (() { final guardedValue = map['bitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bufFillPct: (() { final guardedValue = map['bufFillPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bufSize: (() { final guardedValue = map['bufSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      colorMetadata: (() { final guardedValue = map['colorMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entropyEncoding: (() { final guardedValue = map['entropyEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterSettings: (() { final guardedValue = map['filterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fixedAfd: (() { final guardedValue = map['fixedAfd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flickerAq: (() { final guardedValue = map['flickerAq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceFieldPictures: (() { final guardedValue = map['forceFieldPictures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      framerateControl: (() { final guardedValue = map['framerateControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      framerateDenominator: (() { final guardedValue = map['framerateDenominator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      framerateNumerator: (() { final guardedValue = map['framerateNumerator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gopBReference: (() { final guardedValue = map['gopBReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gopClosedCadence: (() { final guardedValue = map['gopClosedCadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gopNumBFrames: (() { final guardedValue = map['gopNumBFrames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gopSize: (() { final guardedValue = map['gopSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      gopSizeUnits: (() { final guardedValue = map['gopSizeUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookAheadRateControl: (() { final guardedValue = map['lookAheadRateControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBitrate: (() { final guardedValue = map['maxBitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minIInterval: (() { final guardedValue = map['minIInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numRefFrames: (() { final guardedValue = map['numRefFrames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parControl: (() { final guardedValue = map['parControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parDenominator: (() { final guardedValue = map['parDenominator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parNumerator: (() { final guardedValue = map['parNumerator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qualityLevel: (() { final guardedValue = map['qualityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qvbrQualityLevel: (() { final guardedValue = map['qvbrQualityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rateControlMode: (() { final guardedValue = map['rateControlMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanType: (() { final guardedValue = map['scanType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sceneChangeDetect: (() { final guardedValue = map['sceneChangeDetect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slices: (() { final guardedValue = map['slices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      softness: (() { final guardedValue = map['softness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      spatialAq: (() { final guardedValue = map['spatialAq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subgopLength: (() { final guardedValue = map['subgopLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syntax: (() { final guardedValue = map['syntax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      temporalAq: (() { final guardedValue = map['temporalAq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timecodeInsertion: (() { final guardedValue = map['timecodeInsertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

