// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_color_space_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_filter_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_timecode_burnin_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings {
  /// Enables or disables adaptive quantization.
  final pulumi.Input<String>? adaptiveQuantization;
  /// Indicates that AFD values will be written into the output stream.
  final pulumi.Input<String>? afdSignaling;
  /// Whether or not EML should insert an Alternative Transfer Function SEI message.
  final pulumi.Input<String>? alternativeTransferFunction;
  /// Average bitrate in bits/second.
  final pulumi.Input<int> bitrate;
  /// Size of buffer in bits.
  final pulumi.Input<int>? bufSize;
  /// Includes color space metadata in the output.
  final pulumi.Input<String>? colorMetadata;
  /// Define the color metadata for the output. H265 Color Space Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings>? colorSpaceSettings;
  /// Filters to apply to an encode. See H265 Filter Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings>? filterSettings;
  /// Four bit AFD value to write on all frames of video in the output stream.
  final pulumi.Input<String>? fixedAfd;
  final pulumi.Input<String>? flickerAq;
  /// Framerate denominator.
  final pulumi.Input<int> framerateDenominator;
  /// Framerate numerator.
  final pulumi.Input<int> framerateNumerator;
  /// Frequency of closed GOPs.
  final pulumi.Input<int>? gopClosedCadence;
  /// GOP size in units of either frames of seconds per `gop_size_units`.
  final pulumi.Input<double>? gopSize;
  /// Indicates if the `gop_size` is specified in frames or seconds.
  final pulumi.Input<String>? gopSizeUnits;
  /// H265 level.
  final pulumi.Input<String>? level;
  /// Amount of lookahead.
  final pulumi.Input<String>? lookAheadRateControl;
  /// Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
  final pulumi.Input<int>? maxBitrate;
  /// Min interval.
  final pulumi.Input<int>? minIInterval;
  /// Set the minimum QP.
  final pulumi.Input<int>? minQp;
  /// Enables or disables motion vector over picture boundaries.
  final pulumi.Input<String>? mvOverPictureBoundaries;
  /// Enables or disables the motion vector temporal predictor.
  final pulumi.Input<String>? mvTemporalPredictor;
  /// Pixel Aspect Ratio denominator.
  final pulumi.Input<int>? parDenominator;
  /// Pixel Aspect Ratio numerator.
  final pulumi.Input<int>? parNumerator;
  /// H265 profile.
  final pulumi.Input<String>? profile;
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
  /// Set the H265 tier in the output.
  final pulumi.Input<String>? tier;
  /// Sets the height of tiles.
  final pulumi.Input<int>? tileHeight;
  /// Enables or disables padding of tiles.
  final pulumi.Input<String>? tilePadding;
  /// Sets the width of tiles.
  final pulumi.Input<int>? tileWidth;
  /// Apply a burned in timecode. See H265 Timecode Burnin Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings>? timecodeBurninSettings;
  /// Determines how timecodes should be inserted into the video elementary stream.
  final pulumi.Input<String>? timecodeInsertion;
  /// Sets the size of the treeblock.
  final pulumi.Input<String>? treeblockSize;

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
      'colorSpaceSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings, Map<String, dynamic>>(colorSpaceSettings, (value) => value.toMap()),
      'filterSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings, Map<String, dynamic>>(filterSettings, (value) => value.toMap()),
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
      'timecodeBurninSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings, Map<String, dynamic>>(timecodeBurninSettings, (value) => value.toMap()),
      'timecodeInsertion': ?timecodeInsertion,
      'treeblockSize': ?treeblockSize,
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings(
      adaptiveQuantization: map['adaptiveQuantization'] == null ? null : (map['adaptiveQuantization'] as String).input(),
      afdSignaling: map['afdSignaling'] == null ? null : (map['afdSignaling'] as String).input(),
      alternativeTransferFunction: map['alternativeTransferFunction'] == null ? null : (map['alternativeTransferFunction'] as String).input(),
      bitrate: (map['bitrate'] as int).input(),
      bufSize: map['bufSize'] == null ? null : (map['bufSize'] as int).input(),
      colorMetadata: map['colorMetadata'] == null ? null : (map['colorMetadata'] as String).input(),
      colorSpaceSettings: map['colorSpaceSettings'] == null ? null : (ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings.fromMap((map['colorSpaceSettings'] as Map).cast<String, dynamic>())).input(),
      filterSettings: map['filterSettings'] == null ? null : (ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings.fromMap((map['filterSettings'] as Map).cast<String, dynamic>())).input(),
      fixedAfd: map['fixedAfd'] == null ? null : (map['fixedAfd'] as String).input(),
      flickerAq: map['flickerAq'] == null ? null : (map['flickerAq'] as String).input(),
      framerateDenominator: (map['framerateDenominator'] as int).input(),
      framerateNumerator: (map['framerateNumerator'] as int).input(),
      gopClosedCadence: map['gopClosedCadence'] == null ? null : (map['gopClosedCadence'] as int).input(),
      gopSize: map['gopSize'] == null ? null : (map['gopSize'] as double).input(),
      gopSizeUnits: map['gopSizeUnits'] == null ? null : (map['gopSizeUnits'] as String).input(),
      level: map['level'] == null ? null : (map['level'] as String).input(),
      lookAheadRateControl: map['lookAheadRateControl'] == null ? null : (map['lookAheadRateControl'] as String).input(),
      maxBitrate: map['maxBitrate'] == null ? null : (map['maxBitrate'] as int).input(),
      minIInterval: map['minIInterval'] == null ? null : (map['minIInterval'] as int).input(),
      minQp: map['minQp'] == null ? null : (map['minQp'] as int).input(),
      mvOverPictureBoundaries: map['mvOverPictureBoundaries'] == null ? null : (map['mvOverPictureBoundaries'] as String).input(),
      mvTemporalPredictor: map['mvTemporalPredictor'] == null ? null : (map['mvTemporalPredictor'] as String).input(),
      parDenominator: map['parDenominator'] == null ? null : (map['parDenominator'] as int).input(),
      parNumerator: map['parNumerator'] == null ? null : (map['parNumerator'] as int).input(),
      profile: map['profile'] == null ? null : (map['profile'] as String).input(),
      qvbrQualityLevel: map['qvbrQualityLevel'] == null ? null : (map['qvbrQualityLevel'] as int).input(),
      rateControlMode: map['rateControlMode'] == null ? null : (map['rateControlMode'] as String).input(),
      scanType: map['scanType'] == null ? null : (map['scanType'] as String).input(),
      sceneChangeDetect: map['sceneChangeDetect'] == null ? null : (map['sceneChangeDetect'] as String).input(),
      slices: map['slices'] == null ? null : (map['slices'] as int).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
      tileHeight: map['tileHeight'] == null ? null : (map['tileHeight'] as int).input(),
      tilePadding: map['tilePadding'] == null ? null : (map['tilePadding'] as String).input(),
      tileWidth: map['tileWidth'] == null ? null : (map['tileWidth'] as int).input(),
      timecodeBurninSettings: map['timecodeBurninSettings'] == null ? null : (ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings.fromMap((map['timecodeBurninSettings'] as Map).cast<String, dynamic>())).input(),
      timecodeInsertion: map['timecodeInsertion'] == null ? null : (map['timecodeInsertion'] as String).input(),
      treeblockSize: map['treeblockSize'] == null ? null : (map['treeblockSize'] as String).input(),
    );
  }
}

