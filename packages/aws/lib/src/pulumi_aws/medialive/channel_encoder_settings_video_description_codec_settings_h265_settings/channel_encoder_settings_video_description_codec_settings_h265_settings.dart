// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_video_description_codec_settings_h265_settings_color_space_settings/channel_encoder_settings_video_description_codec_settings_h265_settings_color_space_settings.dart';
import '../channel_encoder_settings_video_description_codec_settings_h265_settings_filter_settings/channel_encoder_settings_video_description_codec_settings_h265_settings_filter_settings.dart';
import '../channel_encoder_settings_video_description_codec_settings_h265_settings_timecode_burnin_settings/channel_encoder_settings_video_description_codec_settings_h265_settings_timecode_burnin_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings {
  /// Enables or disables adaptive quantization.
  final String? adaptiveQuantization;

  /// Indicates that AFD values will be written into the output stream.
  final String? afdSignaling;

  /// Whether or not EML should insert an Alternative Transfer Function SEI message.
  final String? alternativeTransferFunction;

  /// Average bitrate in bits/second.
  final int bitrate;

  /// Size of buffer in bits.
  final int? bufSize;

  /// Includes color space metadata in the output.
  final String? colorMetadata;

  /// Define the color metadata for the output. H265 Color Space Settings for more details.
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings?
      colorSpaceSettings;

  /// Filters to apply to an encode. See H265 Filter Settings for more details.
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings?
      filterSettings;

  /// Four bit AFD value to write on all frames of video in the output stream.
  final String? fixedAfd;
  final String? flickerAq;

  /// Framerate denominator.
  final int framerateDenominator;

  /// Framerate numerator.
  final int framerateNumerator;

  /// Frequency of closed GOPs.
  final int? gopClosedCadence;

  /// GOP size in units of either frames of seconds per <span pulumi-lang-nodejs="`gopSizeUnits`" pulumi-lang-dotnet="`GopSizeUnits`" pulumi-lang-go="`gopSizeUnits`" pulumi-lang-python="`gop_size_units`" pulumi-lang-yaml="`gopSizeUnits`" pulumi-lang-java="`gopSizeUnits`">`gop_size_units`</span>.
  final double? gopSize;

  /// Indicates if the <span pulumi-lang-nodejs="`gopSize`" pulumi-lang-dotnet="`GopSize`" pulumi-lang-go="`gopSize`" pulumi-lang-python="`gop_size`" pulumi-lang-yaml="`gopSize`" pulumi-lang-java="`gopSize`">`gop_size`</span> is specified in frames or seconds.
  final String? gopSizeUnits;

  /// H265 level.
  final String? level;

  /// Amount of lookahead.
  final String? lookAheadRateControl;

  /// Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
  final int? maxBitrate;

  /// Min interval.
  final int? minIInterval;

  /// Set the minimum QP.
  final int? minQp;

  /// Enables or disables motion vector over picture boundaries.
  final String? mvOverPictureBoundaries;

  /// Enables or disables the motion vector temporal predictor.
  final String? mvTemporalPredictor;

  /// Pixel Aspect Ratio denominator.
  final int? parDenominator;

  /// Pixel Aspect Ratio numerator.
  final int? parNumerator;

  /// H265 profile.
  final String? profile;

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

  /// Set the H265 tier in the output.
  final String? tier;

  /// Sets the height of tiles.
  final int? tileHeight;

  /// Enables or disables padding of tiles.
  final String? tilePadding;

  /// Sets the width of tiles.
  final int? tileWidth;

  /// Apply a burned in timecode. See H265 Timecode Burnin Settings for more details.
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings?
      timecodeBurninSettings;

  /// Determines how timecodes should be inserted into the video elementary stream.
  final String? timecodeInsertion;

  /// Sets the size of the treeblock.
  final String? treeblockSize;

  ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings({
    this.adaptiveQuantization,
    this.afdSignaling,
    this.alternativeTransferFunction,
    required this.bitrate,
    this.bufSize,
    this.colorMetadata,
    this.colorSpaceSettings,
    this.filterSettings,
    this.fixedAfd,
    this.flickerAq,
    required this.framerateDenominator,
    required this.framerateNumerator,
    this.gopClosedCadence,
    this.gopSize,
    this.gopSizeUnits,
    this.level,
    this.lookAheadRateControl,
    this.maxBitrate,
    this.minIInterval,
    this.minQp,
    this.mvOverPictureBoundaries,
    this.mvTemporalPredictor,
    this.parDenominator,
    this.parNumerator,
    this.profile,
    this.qvbrQualityLevel,
    this.rateControlMode,
    this.scanType,
    this.sceneChangeDetect,
    this.slices,
    this.tier,
    this.tileHeight,
    this.tilePadding,
    this.tileWidth,
    this.timecodeBurninSettings,
    this.timecodeInsertion,
    this.treeblockSize,
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
    final alternativeTransferFunctionValue = alternativeTransferFunction;
    if (alternativeTransferFunctionValue != null) {
      map['alternativeTransferFunction'] = alternativeTransferFunctionValue;
    }
    map['bitrate'] = bitrate;
    final bufSizeValue = bufSize;
    if (bufSizeValue != null) {
      map['bufSize'] = bufSizeValue;
    }
    final colorMetadataValue = colorMetadata;
    if (colorMetadataValue != null) {
      map['colorMetadata'] = colorMetadataValue;
    }
    final colorSpaceSettingsValue = colorSpaceSettings;
    if (colorSpaceSettingsValue != null) {
      map['colorSpaceSettings'] = colorSpaceSettingsValue.toMap();
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
    map['framerateDenominator'] = framerateDenominator;
    map['framerateNumerator'] = framerateNumerator;
    final gopClosedCadenceValue = gopClosedCadence;
    if (gopClosedCadenceValue != null) {
      map['gopClosedCadence'] = gopClosedCadenceValue;
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
    final minQpValue = minQp;
    if (minQpValue != null) {
      map['minQp'] = minQpValue;
    }
    final mvOverPictureBoundariesValue = mvOverPictureBoundaries;
    if (mvOverPictureBoundariesValue != null) {
      map['mvOverPictureBoundaries'] = mvOverPictureBoundariesValue;
    }
    final mvTemporalPredictorValue = mvTemporalPredictor;
    if (mvTemporalPredictorValue != null) {
      map['mvTemporalPredictor'] = mvTemporalPredictorValue;
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
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    final tileHeightValue = tileHeight;
    if (tileHeightValue != null) {
      map['tileHeight'] = tileHeightValue;
    }
    final tilePaddingValue = tilePadding;
    if (tilePaddingValue != null) {
      map['tilePadding'] = tilePaddingValue;
    }
    final tileWidthValue = tileWidth;
    if (tileWidthValue != null) {
      map['tileWidth'] = tileWidthValue;
    }
    final timecodeBurninSettingsValue = timecodeBurninSettings;
    if (timecodeBurninSettingsValue != null) {
      map['timecodeBurninSettings'] = timecodeBurninSettingsValue.toMap();
    }
    final timecodeInsertionValue = timecodeInsertion;
    if (timecodeInsertionValue != null) {
      map['timecodeInsertion'] = timecodeInsertionValue;
    }
    final treeblockSizeValue = treeblockSize;
    if (treeblockSizeValue != null) {
      map['treeblockSize'] = treeblockSizeValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings(
      adaptiveQuantization: map['adaptiveQuantization'] == null
          ? null
          : map['adaptiveQuantization'] as String,
      afdSignaling:
          map['afdSignaling'] == null ? null : map['afdSignaling'] as String,
      alternativeTransferFunction: map['alternativeTransferFunction'] == null
          ? null
          : map['alternativeTransferFunction'] as String,
      bitrate: map['bitrate'] as int,
      bufSize: map['bufSize'] == null ? null : map['bufSize'] as int,
      colorMetadata:
          map['colorMetadata'] == null ? null : map['colorMetadata'] as String,
      colorSpaceSettings: map['colorSpaceSettings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings
              .fromMap(
                  (map['colorSpaceSettings'] as Map).cast<String, dynamic>()),
      filterSettings: map['filterSettings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings
              .fromMap((map['filterSettings'] as Map).cast<String, dynamic>()),
      fixedAfd: map['fixedAfd'] == null ? null : map['fixedAfd'] as String,
      flickerAq: map['flickerAq'] == null ? null : map['flickerAq'] as String,
      framerateDenominator: map['framerateDenominator'] as int,
      framerateNumerator: map['framerateNumerator'] as int,
      gopClosedCadence: map['gopClosedCadence'] == null
          ? null
          : map['gopClosedCadence'] as int,
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
      minQp: map['minQp'] == null ? null : map['minQp'] as int,
      mvOverPictureBoundaries: map['mvOverPictureBoundaries'] == null
          ? null
          : map['mvOverPictureBoundaries'] as String,
      mvTemporalPredictor: map['mvTemporalPredictor'] == null
          ? null
          : map['mvTemporalPredictor'] as String,
      parDenominator:
          map['parDenominator'] == null ? null : map['parDenominator'] as int,
      parNumerator:
          map['parNumerator'] == null ? null : map['parNumerator'] as int,
      profile: map['profile'] == null ? null : map['profile'] as String,
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
      tier: map['tier'] == null ? null : map['tier'] as String,
      tileHeight: map['tileHeight'] == null ? null : map['tileHeight'] as int,
      tilePadding:
          map['tilePadding'] == null ? null : map['tilePadding'] as String,
      tileWidth: map['tileWidth'] == null ? null : map['tileWidth'] as int,
      timecodeBurninSettings: map['timecodeBurninSettings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings
              .fromMap((map['timecodeBurninSettings'] as Map)
                  .cast<String, dynamic>()),
      timecodeInsertion: map['timecodeInsertion'] == null
          ? null
          : map['timecodeInsertion'] as String,
      treeblockSize:
          map['treeblockSize'] == null ? null : map['treeblockSize'] as String,
    );
  }
}
