// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_video_description_codec_settings_h265_settings_color_space_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_filter_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_timecode_burnin_settings.dart';

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

  /// GOP size in units of either frames of seconds per `gop_size_units`.
  final double? gopSize;

  /// Indicates if the `gop_size` is specified in frames or seconds.
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

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings].
  /// [adaptiveQuantization] Enables or disables adaptive quantization.
  /// [afdSignaling] Indicates that AFD values will be written into the output stream.
  /// [alternativeTransferFunction] Whether or not EML should insert an Alternative Transfer Function SEI message.
  /// [bitrate] Average bitrate in bits/second.
  /// [bufSize] Size of buffer in bits.
  /// [colorMetadata] Includes color space metadata in the output.
  /// [colorSpaceSettings] Define the color metadata for the output. H265 Color Space Settings for more details.
  /// [filterSettings] Filters to apply to an encode. See H265 Filter Settings for more details.
  /// [fixedAfd] Four bit AFD value to write on all frames of video in the output stream.
  /// [flickerAq] Optional.
  /// [framerateDenominator] Framerate denominator.
  /// [framerateNumerator] Framerate numerator.
  /// [gopClosedCadence] Frequency of closed GOPs.
  /// [gopSize] GOP size in units of either frames of seconds per `gop_size_units`.
  /// [gopSizeUnits] Indicates if the `gop_size` is specified in frames or seconds.
  /// [level] H265 level.
  /// [lookAheadRateControl] Amount of lookahead.
  /// [maxBitrate] Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
  /// [minIInterval] Min interval.
  /// [minQp] Set the minimum QP.
  /// [mvOverPictureBoundaries] Enables or disables motion vector over picture boundaries.
  /// [mvTemporalPredictor] Enables or disables the motion vector temporal predictor.
  /// [parDenominator] Pixel Aspect Ratio denominator.
  /// [parNumerator] Pixel Aspect Ratio numerator.
  /// [profile] H265 profile.
  /// [qvbrQualityLevel] Controls the target quality for the video encode.
  /// [rateControlMode] Rate control mode.
  /// [scanType] Sets the scan type of the output.
  /// [sceneChangeDetect] Scene change detection.
  /// [slices] Number of slices per picture.
  /// [tier] Set the H265 tier in the output.
  /// [tileHeight] Sets the height of tiles.
  /// [tilePadding] Enables or disables padding of tiles.
  /// [tileWidth] Sets the width of tiles.
  /// [timecodeBurninSettings] Apply a burned in timecode. See H265 Timecode Burnin Settings for more details.
  /// [timecodeInsertion] Determines how timecodes should be inserted into the video elementary stream.
  /// [treeblockSize] Sets the size of the treeblock.
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
    return <String, dynamic>{
      'adaptiveQuantization': ?adaptiveQuantization,
      'afdSignaling': ?afdSignaling,
      'alternativeTransferFunction': ?alternativeTransferFunction,
      'bitrate': bitrate,
      'bufSize': ?bufSize,
      'colorMetadata': ?colorMetadata,
      'colorSpaceSettings': ?colorSpaceSettings == null
          ? null
          : colorSpaceSettings!.toMap(),
      'filterSettings': ?filterSettings == null
          ? null
          : filterSettings!.toMap(),
      'fixedAfd': ?fixedAfd,
      'flickerAq': ?flickerAq,
      'framerateDenominator': framerateDenominator,
      'framerateNumerator': framerateNumerator,
      'gopClosedCadence': ?gopClosedCadence,
      'gopSize': ?gopSize,
      'gopSizeUnits': ?gopSizeUnits,
      'level': ?level,
      'lookAheadRateControl': ?lookAheadRateControl,
      'maxBitrate': ?maxBitrate,
      'minIInterval': ?minIInterval,
      'minQp': ?minQp,
      'mvOverPictureBoundaries': ?mvOverPictureBoundaries,
      'mvTemporalPredictor': ?mvTemporalPredictor,
      'parDenominator': ?parDenominator,
      'parNumerator': ?parNumerator,
      'profile': ?profile,
      'qvbrQualityLevel': ?qvbrQualityLevel,
      'rateControlMode': ?rateControlMode,
      'scanType': ?scanType,
      'sceneChangeDetect': ?sceneChangeDetect,
      'slices': ?slices,
      'tier': ?tier,
      'tileHeight': ?tileHeight,
      'tilePadding': ?tilePadding,
      'tileWidth': ?tileWidth,
      'timecodeBurninSettings': ?timecodeBurninSettings == null
          ? null
          : timecodeBurninSettings!.toMap(),
      'timecodeInsertion': ?timecodeInsertion,
      'treeblockSize': ?treeblockSize,
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings(
      adaptiveQuantization: map['adaptiveQuantization'] == null
          ? null
          : map['adaptiveQuantization'] as String,
      afdSignaling: map['afdSignaling'] == null
          ? null
          : map['afdSignaling'] as String,
      alternativeTransferFunction: map['alternativeTransferFunction'] == null
          ? null
          : map['alternativeTransferFunction'] as String,
      bitrate: map['bitrate'] as int,
      bufSize: map['bufSize'] == null ? null : map['bufSize'] as int,
      colorMetadata: map['colorMetadata'] == null
          ? null
          : map['colorMetadata'] as String,
      colorSpaceSettings: map['colorSpaceSettings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings.fromMap(
              (map['colorSpaceSettings'] as Map).cast<String, dynamic>(),
            ),
      filterSettings: map['filterSettings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings.fromMap(
              (map['filterSettings'] as Map).cast<String, dynamic>(),
            ),
      fixedAfd: map['fixedAfd'] == null ? null : map['fixedAfd'] as String,
      flickerAq: map['flickerAq'] == null ? null : map['flickerAq'] as String,
      framerateDenominator: map['framerateDenominator'] as int,
      framerateNumerator: map['framerateNumerator'] as int,
      gopClosedCadence: map['gopClosedCadence'] == null
          ? null
          : map['gopClosedCadence'] as int,
      gopSize: map['gopSize'] == null ? null : map['gopSize'] as double,
      gopSizeUnits: map['gopSizeUnits'] == null
          ? null
          : map['gopSizeUnits'] as String,
      level: map['level'] == null ? null : map['level'] as String,
      lookAheadRateControl: map['lookAheadRateControl'] == null
          ? null
          : map['lookAheadRateControl'] as String,
      maxBitrate: map['maxBitrate'] == null ? null : map['maxBitrate'] as int,
      minIInterval: map['minIInterval'] == null
          ? null
          : map['minIInterval'] as int,
      minQp: map['minQp'] == null ? null : map['minQp'] as int,
      mvOverPictureBoundaries: map['mvOverPictureBoundaries'] == null
          ? null
          : map['mvOverPictureBoundaries'] as String,
      mvTemporalPredictor: map['mvTemporalPredictor'] == null
          ? null
          : map['mvTemporalPredictor'] as String,
      parDenominator: map['parDenominator'] == null
          ? null
          : map['parDenominator'] as int,
      parNumerator: map['parNumerator'] == null
          ? null
          : map['parNumerator'] as int,
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
      tilePadding: map['tilePadding'] == null
          ? null
          : map['tilePadding'] as String,
      tileWidth: map['tileWidth'] == null ? null : map['tileWidth'] as int,
      timecodeBurninSettings: map['timecodeBurninSettings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings.fromMap(
              (map['timecodeBurninSettings'] as Map).cast<String, dynamic>(),
            ),
      timecodeInsertion: map['timecodeInsertion'] == null
          ? null
          : map['timecodeInsertion'] as String,
      treeblockSize: map['treeblockSize'] == null
          ? null
          : map['treeblockSize'] as String,
    );
  }
}
