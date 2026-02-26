// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_video_description_codec_settings_h264_settings_filter_settings/channel_encoder_settings_video_description_codec_settings_h264_settings_filter_settings.dart';

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
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings?
      filterSettings;

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

  /// GOP size in units of either frames of seconds per <span pulumi-lang-nodejs="`gopSizeUnits`" pulumi-lang-dotnet="`GopSizeUnits`" pulumi-lang-go="`gopSizeUnits`" pulumi-lang-python="`gop_size_units`" pulumi-lang-yaml="`gopSizeUnits`" pulumi-lang-java="`gopSizeUnits`">`gop_size_units`</span>.
  final double? gopSize;

  /// Indicates if the <span pulumi-lang-nodejs="`gopSize`" pulumi-lang-dotnet="`GopSize`" pulumi-lang-go="`gopSize`" pulumi-lang-python="`gop_size`" pulumi-lang-yaml="`gopSize`" pulumi-lang-java="`gopSize`">`gop_size`</span> is specified in frames or seconds.
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
    final map = <String, dynamic>{};
    final adaptiveQuantizationValue = adaptiveQuantization;
    if (adaptiveQuantizationValue != null) {
      map['adaptiveQuantization'] = adaptiveQuantizationValue;
    }
    final afdSignalingValue = afdSignaling;
    if (afdSignalingValue != null) {
      map['afdSignaling'] = afdSignalingValue;
    }
    final bitrateValue = bitrate;
    if (bitrateValue != null) {
      map['bitrate'] = bitrateValue;
    }
    final bufFillPctValue = bufFillPct;
    if (bufFillPctValue != null) {
      map['bufFillPct'] = bufFillPctValue;
    }
    final bufSizeValue = bufSize;
    if (bufSizeValue != null) {
      map['bufSize'] = bufSizeValue;
    }
    final colorMetadataValue = colorMetadata;
    if (colorMetadataValue != null) {
      map['colorMetadata'] = colorMetadataValue;
    }
    final entropyEncodingValue = entropyEncoding;
    if (entropyEncodingValue != null) {
      map['entropyEncoding'] = entropyEncodingValue;
    }
    final filterSettingsValue = filterSettings;
    if (filterSettingsValue != null) {
      map['filterSettings'] = filterSettingsValue.toMap();
    }
    final fixedAfdValue = fixedAfd;
    if (fixedAfdValue != null) {
      map['fixedAfd'] = fixedAfdValue;
    }
    final flickerAqValue = flickerAq;
    if (flickerAqValue != null) {
      map['flickerAq'] = flickerAqValue;
    }
    final forceFieldPicturesValue = forceFieldPictures;
    if (forceFieldPicturesValue != null) {
      map['forceFieldPictures'] = forceFieldPicturesValue;
    }
    final framerateControlValue = framerateControl;
    if (framerateControlValue != null) {
      map['framerateControl'] = framerateControlValue;
    }
    final framerateDenominatorValue = framerateDenominator;
    if (framerateDenominatorValue != null) {
      map['framerateDenominator'] = framerateDenominatorValue;
    }
    final framerateNumeratorValue = framerateNumerator;
    if (framerateNumeratorValue != null) {
      map['framerateNumerator'] = framerateNumeratorValue;
    }
    final gopBReferenceValue = gopBReference;
    if (gopBReferenceValue != null) {
      map['gopBReference'] = gopBReferenceValue;
    }
    final gopClosedCadenceValue = gopClosedCadence;
    if (gopClosedCadenceValue != null) {
      map['gopClosedCadence'] = gopClosedCadenceValue;
    }
    final gopNumBFramesValue = gopNumBFrames;
    if (gopNumBFramesValue != null) {
      map['gopNumBFrames'] = gopNumBFramesValue;
    }
    final gopSizeValue = gopSize;
    if (gopSizeValue != null) {
      map['gopSize'] = gopSizeValue;
    }
    final gopSizeUnitsValue = gopSizeUnits;
    if (gopSizeUnitsValue != null) {
      map['gopSizeUnits'] = gopSizeUnitsValue;
    }
    final levelValue = level;
    if (levelValue != null) {
      map['level'] = levelValue;
    }
    final lookAheadRateControlValue = lookAheadRateControl;
    if (lookAheadRateControlValue != null) {
      map['lookAheadRateControl'] = lookAheadRateControlValue;
    }
    final maxBitrateValue = maxBitrate;
    if (maxBitrateValue != null) {
      map['maxBitrate'] = maxBitrateValue;
    }
    final minIIntervalValue = minIInterval;
    if (minIIntervalValue != null) {
      map['minIInterval'] = minIIntervalValue;
    }
    final numRefFramesValue = numRefFrames;
    if (numRefFramesValue != null) {
      map['numRefFrames'] = numRefFramesValue;
    }
    final parControlValue = parControl;
    if (parControlValue != null) {
      map['parControl'] = parControlValue;
    }
    final parDenominatorValue = parDenominator;
    if (parDenominatorValue != null) {
      map['parDenominator'] = parDenominatorValue;
    }
    final parNumeratorValue = parNumerator;
    if (parNumeratorValue != null) {
      map['parNumerator'] = parNumeratorValue;
    }
    final profileValue = profile;
    if (profileValue != null) {
      map['profile'] = profileValue;
    }
    final qualityLevelValue = qualityLevel;
    if (qualityLevelValue != null) {
      map['qualityLevel'] = qualityLevelValue;
    }
    final qvbrQualityLevelValue = qvbrQualityLevel;
    if (qvbrQualityLevelValue != null) {
      map['qvbrQualityLevel'] = qvbrQualityLevelValue;
    }
    final rateControlModeValue = rateControlMode;
    if (rateControlModeValue != null) {
      map['rateControlMode'] = rateControlModeValue;
    }
    final scanTypeValue = scanType;
    if (scanTypeValue != null) {
      map['scanType'] = scanTypeValue;
    }
    final sceneChangeDetectValue = sceneChangeDetect;
    if (sceneChangeDetectValue != null) {
      map['sceneChangeDetect'] = sceneChangeDetectValue;
    }
    final slicesValue = slices;
    if (slicesValue != null) {
      map['slices'] = slicesValue;
    }
    final softnessValue = softness;
    if (softnessValue != null) {
      map['softness'] = softnessValue;
    }
    final spatialAqValue = spatialAq;
    if (spatialAqValue != null) {
      map['spatialAq'] = spatialAqValue;
    }
    final subgopLengthValue = subgopLength;
    if (subgopLengthValue != null) {
      map['subgopLength'] = subgopLengthValue;
    }
    final syntaxValue = syntax;
    if (syntaxValue != null) {
      map['syntax'] = syntaxValue;
    }
    final temporalAqValue = temporalAq;
    if (temporalAqValue != null) {
      map['temporalAq'] = temporalAqValue;
    }
    final timecodeInsertionValue = timecodeInsertion;
    if (timecodeInsertionValue != null) {
      map['timecodeInsertion'] = timecodeInsertionValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH264Settings(
      adaptiveQuantization: map['adaptiveQuantization'] == null
          ? null
          : map['adaptiveQuantization'] as String,
      afdSignaling:
          map['afdSignaling'] == null ? null : map['afdSignaling'] as String,
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as int,
      bufFillPct: map['bufFillPct'] == null ? null : map['bufFillPct'] as int,
      bufSize: map['bufSize'] == null ? null : map['bufSize'] as int,
      colorMetadata:
          map['colorMetadata'] == null ? null : map['colorMetadata'] as String,
      entropyEncoding: map['entropyEncoding'] == null
          ? null
          : map['entropyEncoding'] as String,
      filterSettings: map['filterSettings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettings
              .fromMap((map['filterSettings'] as Map).cast<String, dynamic>()),
      fixedAfd: map['fixedAfd'] == null ? null : map['fixedAfd'] as String,
      flickerAq: map['flickerAq'] == null ? null : map['flickerAq'] as String,
      forceFieldPictures: map['forceFieldPictures'] == null
          ? null
          : map['forceFieldPictures'] as String,
      framerateControl: map['framerateControl'] == null
          ? null
          : map['framerateControl'] as String,
      framerateDenominator: map['framerateDenominator'] == null
          ? null
          : map['framerateDenominator'] as int,
      framerateNumerator: map['framerateNumerator'] == null
          ? null
          : map['framerateNumerator'] as int,
      gopBReference:
          map['gopBReference'] == null ? null : map['gopBReference'] as String,
      gopClosedCadence: map['gopClosedCadence'] == null
          ? null
          : map['gopClosedCadence'] as int,
      gopNumBFrames:
          map['gopNumBFrames'] == null ? null : map['gopNumBFrames'] as int,
      gopSize: map['gopSize'] == null ? null : map['gopSize'] as double,
      gopSizeUnits:
          map['gopSizeUnits'] == null ? null : map['gopSizeUnits'] as String,
      level: map['level'] == null ? null : map['level'] as String,
      lookAheadRateControl: map['lookAheadRateControl'] == null
          ? null
          : map['lookAheadRateControl'] as String,
      maxBitrate: map['maxBitrate'] == null ? null : map['maxBitrate'] as int,
      minIInterval:
          map['minIInterval'] == null ? null : map['minIInterval'] as int,
      numRefFrames:
          map['numRefFrames'] == null ? null : map['numRefFrames'] as int,
      parControl:
          map['parControl'] == null ? null : map['parControl'] as String,
      parDenominator:
          map['parDenominator'] == null ? null : map['parDenominator'] as int,
      parNumerator:
          map['parNumerator'] == null ? null : map['parNumerator'] as int,
      profile: map['profile'] == null ? null : map['profile'] as String,
      qualityLevel:
          map['qualityLevel'] == null ? null : map['qualityLevel'] as String,
      qvbrQualityLevel: map['qvbrQualityLevel'] == null
          ? null
          : map['qvbrQualityLevel'] as int,
      rateControlMode: map['rateControlMode'] == null
          ? null
          : map['rateControlMode'] as String,
      scanType: map['scanType'] == null ? null : map['scanType'] as String,
      sceneChangeDetect: map['sceneChangeDetect'] == null
          ? null
          : map['sceneChangeDetect'] as String,
      slices: map['slices'] == null ? null : map['slices'] as int,
      softness: map['softness'] == null ? null : map['softness'] as int,
      spatialAq: map['spatialAq'] == null ? null : map['spatialAq'] as String,
      subgopLength:
          map['subgopLength'] == null ? null : map['subgopLength'] as String,
      syntax: map['syntax'] == null ? null : map['syntax'] as String,
      temporalAq:
          map['temporalAq'] == null ? null : map['temporalAq'] as String,
      timecodeInsertion: map['timecodeInsertion'] == null
          ? null
          : map['timecodeInsertion'] as String,
    );
  }
}
