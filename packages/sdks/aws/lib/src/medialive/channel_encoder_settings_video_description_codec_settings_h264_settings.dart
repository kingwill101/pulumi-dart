// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_video_description_codec_settings_h264_settings_filter_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings {
  /// Enables or disables adaptive quantization.
  final String? adaptiveQuantization;
  /// Indicates that AFD values will be written into the output stream.
  final String? afdSignaling;
  /// Average bitrate in bits/second.
  final int? bitrate;
  final int? bufFillPct;
  /// Size of buffer in bits.
  final int? bufSize;
  /// Includes color space metadata in the output.
  final String? colorMetadata;
  /// Entropy encoding mode.
  final String? entropyEncoding;
  /// Filters to apply to an encode. See H264 Filter Settings for more details.
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings? filterSettings;
  /// Four bit AFD value to write on all frames of video in the output stream.
  final String? fixedAfd;
  final String? flickerAq;
  /// Controls whether coding is performed on a field basis or on a frame basis.
  final String? forceFieldPictures;
  /// Indicates how the output video frame rate is specified.
  final String? framerateControl;
  /// Framerate denominator.
  final int? framerateDenominator;
  /// Framerate numerator.
  final int? framerateNumerator;
  /// GOP-B reference.
  final String? gopBReference;
  /// Frequency of closed GOPs.
  final int? gopClosedCadence;
  /// Number of B-frames between reference frames.
  final int? gopNumBFrames;
  /// GOP size in units of either frames of seconds per `gop_size_units`.
  final double? gopSize;
  /// Indicates if the `gop_size` is specified in frames or seconds.
  final String? gopSizeUnits;
  /// H264 level.
  final String? level;
  /// Amount of lookahead.
  final String? lookAheadRateControl;
  /// Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
  final int? maxBitrate;
  /// Min interval.
  final int? minIInterval;
  /// Number of reference frames to use.
  final int? numRefFrames;
  /// Indicates how the output pixel aspect ratio is specified.
  final String? parControl;
  /// Pixel Aspect Ratio denominator.
  final int? parDenominator;
  /// Pixel Aspect Ratio numerator.
  final int? parNumerator;
  /// H264 profile.
  final String? profile;
  /// Quality level.
  final String? qualityLevel;
  /// Controls the target quality for the video encode.
  final int? qvbrQualityLevel;
  /// Rate control mode.
  final String? rateControlMode;
  /// Sets the scan type of the output.
  final String? scanType;
  /// Scene change detection.
  final String? sceneChangeDetect;
  /// Number of slices per picture.
  final int? slices;
  /// Softness.
  final int? softness;
  /// Makes adjustments within each frame based on spatial variation of content complexity.
  final String? spatialAq;
  /// Subgop length.
  final String? subgopLength;
  /// Produces a bitstream compliant with SMPTE RP-2027.
  final String? syntax;
  /// Makes adjustments within each frame based on temporal variation of content complexity.
  final String? temporalAq;
  /// Determines how timecodes should be inserted into the video elementary stream.
  final String? timecodeInsertion;

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
      'filterSettings': ?filterSettings == null ? null : filterSettings!.toMap(),
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
      adaptiveQuantization: map['adaptiveQuantization'] == null ? null : map['adaptiveQuantization'] as String,
      afdSignaling: map['afdSignaling'] == null ? null : map['afdSignaling'] as String,
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as int,
      bufFillPct: map['bufFillPct'] == null ? null : map['bufFillPct'] as int,
      bufSize: map['bufSize'] == null ? null : map['bufSize'] as int,
      colorMetadata: map['colorMetadata'] == null ? null : map['colorMetadata'] as String,
      entropyEncoding: map['entropyEncoding'] == null ? null : map['entropyEncoding'] as String,
      filterSettings: map['filterSettings'] == null ? null : ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings.fromMap((map['filterSettings'] as Map).cast<String, dynamic>()),
      fixedAfd: map['fixedAfd'] == null ? null : map['fixedAfd'] as String,
      flickerAq: map['flickerAq'] == null ? null : map['flickerAq'] as String,
      forceFieldPictures: map['forceFieldPictures'] == null ? null : map['forceFieldPictures'] as String,
      framerateControl: map['framerateControl'] == null ? null : map['framerateControl'] as String,
      framerateDenominator: map['framerateDenominator'] == null ? null : map['framerateDenominator'] as int,
      framerateNumerator: map['framerateNumerator'] == null ? null : map['framerateNumerator'] as int,
      gopBReference: map['gopBReference'] == null ? null : map['gopBReference'] as String,
      gopClosedCadence: map['gopClosedCadence'] == null ? null : map['gopClosedCadence'] as int,
      gopNumBFrames: map['gopNumBFrames'] == null ? null : map['gopNumBFrames'] as int,
      gopSize: map['gopSize'] == null ? null : map['gopSize'] as double,
      gopSizeUnits: map['gopSizeUnits'] == null ? null : map['gopSizeUnits'] as String,
      level: map['level'] == null ? null : map['level'] as String,
      lookAheadRateControl: map['lookAheadRateControl'] == null ? null : map['lookAheadRateControl'] as String,
      maxBitrate: map['maxBitrate'] == null ? null : map['maxBitrate'] as int,
      minIInterval: map['minIInterval'] == null ? null : map['minIInterval'] as int,
      numRefFrames: map['numRefFrames'] == null ? null : map['numRefFrames'] as int,
      parControl: map['parControl'] == null ? null : map['parControl'] as String,
      parDenominator: map['parDenominator'] == null ? null : map['parDenominator'] as int,
      parNumerator: map['parNumerator'] == null ? null : map['parNumerator'] as int,
      profile: map['profile'] == null ? null : map['profile'] as String,
      qualityLevel: map['qualityLevel'] == null ? null : map['qualityLevel'] as String,
      qvbrQualityLevel: map['qvbrQualityLevel'] == null ? null : map['qvbrQualityLevel'] as int,
      rateControlMode: map['rateControlMode'] == null ? null : map['rateControlMode'] as String,
      scanType: map['scanType'] == null ? null : map['scanType'] as String,
      sceneChangeDetect: map['sceneChangeDetect'] == null ? null : map['sceneChangeDetect'] as String,
      slices: map['slices'] == null ? null : map['slices'] as int,
      softness: map['softness'] == null ? null : map['softness'] as int,
      spatialAq: map['spatialAq'] == null ? null : map['spatialAq'] as String,
      subgopLength: map['subgopLength'] == null ? null : map['subgopLength'] as String,
      syntax: map['syntax'] == null ? null : map['syntax'] as String,
      temporalAq: map['temporalAq'] == null ? null : map['temporalAq'] as String,
      timecodeInsertion: map['timecodeInsertion'] == null ? null : map['timecodeInsertion'] as String,
    );
  }
}

