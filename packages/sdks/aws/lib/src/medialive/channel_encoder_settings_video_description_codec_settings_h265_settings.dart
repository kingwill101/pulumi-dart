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
      adaptiveQuantization: (() { final guardedValue = map['adaptiveQuantization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      afdSignaling: (() { final guardedValue = map['afdSignaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alternativeTransferFunction: (() { final guardedValue = map['alternativeTransferFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bitrate: pulumi.Input.fromValue(map['bitrate'] as int),
      bufSize: (() { final guardedValue = map['bufSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      colorMetadata: (() { final guardedValue = map['colorMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      colorSpaceSettings: (() { final guardedValue = map['colorSpaceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterSettings: (() { final guardedValue = map['filterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fixedAfd: (() { final guardedValue = map['fixedAfd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flickerAq: (() { final guardedValue = map['flickerAq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      framerateDenominator: pulumi.Input.fromValue(map['framerateDenominator'] as int),
      framerateNumerator: pulumi.Input.fromValue(map['framerateNumerator'] as int),
      gopClosedCadence: (() { final guardedValue = map['gopClosedCadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gopSize: (() { final guardedValue = map['gopSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      gopSizeUnits: (() { final guardedValue = map['gopSizeUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookAheadRateControl: (() { final guardedValue = map['lookAheadRateControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBitrate: (() { final guardedValue = map['maxBitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minIInterval: (() { final guardedValue = map['minIInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minQp: (() { final guardedValue = map['minQp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mvOverPictureBoundaries: (() { final guardedValue = map['mvOverPictureBoundaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mvTemporalPredictor: (() { final guardedValue = map['mvTemporalPredictor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parDenominator: (() { final guardedValue = map['parDenominator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parNumerator: (() { final guardedValue = map['parNumerator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qvbrQualityLevel: (() { final guardedValue = map['qvbrQualityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rateControlMode: (() { final guardedValue = map['rateControlMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanType: (() { final guardedValue = map['scanType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sceneChangeDetect: (() { final guardedValue = map['sceneChangeDetect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slices: (() { final guardedValue = map['slices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tileHeight: (() { final guardedValue = map['tileHeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tilePadding: (() { final guardedValue = map['tilePadding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tileWidth: (() { final guardedValue = map['tileWidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timecodeBurninSettings: (() { final guardedValue = map['timecodeBurninSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timecodeInsertion: (() { final guardedValue = map['timecodeInsertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      treeblockSize: (() { final guardedValue = map['treeblockSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

