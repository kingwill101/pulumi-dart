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
  ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings({
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
      adaptiveQuantization: map['adaptiveQuantization'] == null ? null : ((map['adaptiveQuantization'] as String).input()).input(),
      afdSignaling: map['afdSignaling'] == null ? null : ((map['afdSignaling'] as String).input()).input(),
      bitrate: map['bitrate'] == null ? null : ((map['bitrate'] as int).input()).input(),
      bufFillPct: map['bufFillPct'] == null ? null : ((map['bufFillPct'] as int).input()).input(),
      bufSize: map['bufSize'] == null ? null : ((map['bufSize'] as int).input()).input(),
      colorMetadata: map['colorMetadata'] == null ? null : ((map['colorMetadata'] as String).input()).input(),
      entropyEncoding: map['entropyEncoding'] == null ? null : ((map['entropyEncoding'] as String).input()).input(),
      filterSettings: map['filterSettings'] == null ? null : ((ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings.fromMap((map['filterSettings']! as Map).cast<String, dynamic>())).input()).input(),
      fixedAfd: map['fixedAfd'] == null ? null : ((map['fixedAfd'] as String).input()).input(),
      flickerAq: map['flickerAq'] == null ? null : ((map['flickerAq'] as String).input()).input(),
      forceFieldPictures: map['forceFieldPictures'] == null ? null : ((map['forceFieldPictures'] as String).input()).input(),
      framerateControl: map['framerateControl'] == null ? null : ((map['framerateControl'] as String).input()).input(),
      framerateDenominator: map['framerateDenominator'] == null ? null : ((map['framerateDenominator'] as int).input()).input(),
      framerateNumerator: map['framerateNumerator'] == null ? null : ((map['framerateNumerator'] as int).input()).input(),
      gopBReference: map['gopBReference'] == null ? null : ((map['gopBReference'] as String).input()).input(),
      gopClosedCadence: map['gopClosedCadence'] == null ? null : ((map['gopClosedCadence'] as int).input()).input(),
      gopNumBFrames: map['gopNumBFrames'] == null ? null : ((map['gopNumBFrames'] as int).input()).input(),
      gopSize: map['gopSize'] == null ? null : ((map['gopSize'] as double).input()).input(),
      gopSizeUnits: map['gopSizeUnits'] == null ? null : ((map['gopSizeUnits'] as String).input()).input(),
      level: map['level'] == null ? null : ((map['level'] as String).input()).input(),
      lookAheadRateControl: map['lookAheadRateControl'] == null ? null : ((map['lookAheadRateControl'] as String).input()).input(),
      maxBitrate: map['maxBitrate'] == null ? null : ((map['maxBitrate'] as int).input()).input(),
      minIInterval: map['minIInterval'] == null ? null : ((map['minIInterval'] as int).input()).input(),
      numRefFrames: map['numRefFrames'] == null ? null : ((map['numRefFrames'] as int).input()).input(),
      parControl: map['parControl'] == null ? null : ((map['parControl'] as String).input()).input(),
      parDenominator: map['parDenominator'] == null ? null : ((map['parDenominator'] as int).input()).input(),
      parNumerator: map['parNumerator'] == null ? null : ((map['parNumerator'] as int).input()).input(),
      profile: map['profile'] == null ? null : ((map['profile'] as String).input()).input(),
      qualityLevel: map['qualityLevel'] == null ? null : ((map['qualityLevel'] as String).input()).input(),
      qvbrQualityLevel: map['qvbrQualityLevel'] == null ? null : ((map['qvbrQualityLevel'] as int).input()).input(),
      rateControlMode: map['rateControlMode'] == null ? null : ((map['rateControlMode'] as String).input()).input(),
      scanType: map['scanType'] == null ? null : ((map['scanType'] as String).input()).input(),
      sceneChangeDetect: map['sceneChangeDetect'] == null ? null : ((map['sceneChangeDetect'] as String).input()).input(),
      slices: map['slices'] == null ? null : ((map['slices'] as int).input()).input(),
      softness: map['softness'] == null ? null : ((map['softness'] as int).input()).input(),
      spatialAq: map['spatialAq'] == null ? null : ((map['spatialAq'] as String).input()).input(),
      subgopLength: map['subgopLength'] == null ? null : ((map['subgopLength'] as String).input()).input(),
      syntax: map['syntax'] == null ? null : ((map['syntax'] as String).input()).input(),
      temporalAq: map['temporalAq'] == null ? null : ((map['temporalAq'] as String).input()).input(),
      timecodeInsertion: map['timecodeInsertion'] == null ? null : ((map['timecodeInsertion'] as String).input()).input(),
    );
  }
}

