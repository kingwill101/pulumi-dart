// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_color_space_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_filter_settings.dart';
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_timecode_burnin_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings {
  /// Enables or disables adaptive quantization.
  final pulumi.Input<String?>? adaptiveQuantization;
  /// Whether AFD values are written into the output stream.
  final pulumi.Input<String?>? afdSignaling;
  /// Whether EML inserts an Alternative Transfer Function SEI message.
  final pulumi.Input<String?>? alternativeTransferFunction;
  /// Average bitrate in bits/second.
  final pulumi.Input<int> bitrate;
  /// Size of the buffer in bits.
  final pulumi.Input<int?>? bufSize;
  /// Whether color space metadata is included in the output.
  final pulumi.Input<String?>? colorMetadata;
  /// Color metadata for the output. See `colorSpaceSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings?>? colorSpaceSettings;
  /// Filters to apply to an encode. See `filterSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings?>? filterSettings;
  /// Four-bit AFD value to write on all frames of video in the output stream.
  final pulumi.Input<String?>? fixedAfd;
  /// Makes adjustments within each frame to reduce flicker on the I-frames.
  final pulumi.Input<String?>? flickerAq;
  /// Framerate denominator.
  final pulumi.Input<int> framerateDenominator;
  /// Framerate numerator.
  final pulumi.Input<int> framerateNumerator;
  /// Frequency of closed GOPs.
  final pulumi.Input<int?>? gopClosedCadence;
  /// GOP size in units of either frames or seconds per `gopSizeUnits`.
  final pulumi.Input<double?>? gopSize;
  /// Whether `gopSize` is specified in frames or seconds.
  final pulumi.Input<String?>? gopSizeUnits;
  /// H265 level.
  final pulumi.Input<String?>? level;
  /// Amount of lookahead.
  final pulumi.Input<String?>? lookAheadRateControl;
  /// Maximum bitrate, used to accommodate expected spikes in the complexity of the video.
  final pulumi.Input<int?>? maxBitrate;
  /// Minimum interval, in frames, between two I-frames.
  final pulumi.Input<int?>? minIInterval;
  /// Sets the minimum QP.
  final pulumi.Input<int?>? minQp;
  /// Enables or disables motion vectors over picture boundaries.
  final pulumi.Input<String?>? mvOverPictureBoundaries;
  /// Enables or disables the motion vector temporal predictor.
  final pulumi.Input<String?>? mvTemporalPredictor;
  /// Pixel aspect ratio denominator.
  final pulumi.Input<int?>? parDenominator;
  /// Pixel aspect ratio numerator.
  final pulumi.Input<int?>? parNumerator;
  /// H265 profile.
  final pulumi.Input<String?>? profile;
  /// Target quality for the video encode.
  final pulumi.Input<int?>? qvbrQualityLevel;
  /// Rate control mode.
  final pulumi.Input<String?>? rateControlMode;
  /// Scan type of the output.
  final pulumi.Input<String?>? scanType;
  /// Scene change detection.
  final pulumi.Input<String?>? sceneChangeDetect;
  /// Number of slices per picture.
  final pulumi.Input<int?>? slices;
  /// H265 tier in the output.
  final pulumi.Input<String?>? tier;
  /// Height of tiles.
  final pulumi.Input<int?>? tileHeight;
  /// Enables or disables padding of tiles.
  final pulumi.Input<String?>? tilePadding;
  /// Width of tiles.
  final pulumi.Input<int?>? tileWidth;
  /// Apply a burned-in timecode. See `timecodeBurninSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings?>? timecodeBurninSettings;
  /// How timecodes are inserted into the video elementary stream.
  final pulumi.Input<String?>? timecodeInsertion;
  /// Size of the treeblock.
  final pulumi.Input<String?>? treeblockSize;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings].
  /// [adaptiveQuantization] Enables or disables adaptive quantization.
  /// [afdSignaling] Whether AFD values are written into the output stream.
  /// [alternativeTransferFunction] Whether EML inserts an Alternative Transfer Function SEI message.
  /// [bitrate] Average bitrate in bits/second.
  /// [bufSize] Size of the buffer in bits.
  /// [colorMetadata] Whether color space metadata is included in the output.
  /// [colorSpaceSettings] Color metadata for the output. See `colorSpaceSettings` Block for details.
  /// [filterSettings] Filters to apply to an encode. See `filterSettings` Block for details.
  /// [fixedAfd] Four-bit AFD value to write on all frames of video in the output stream.
  /// [flickerAq] Makes adjustments within each frame to reduce flicker on the I-frames.
  /// [framerateDenominator] Framerate denominator.
  /// [framerateNumerator] Framerate numerator.
  /// [gopClosedCadence] Frequency of closed GOPs.
  /// [gopSize] GOP size in units of either frames or seconds per `gopSizeUnits`.
  /// [gopSizeUnits] Whether `gopSize` is specified in frames or seconds.
  /// [level] H265 level.
  /// [lookAheadRateControl] Amount of lookahead.
  /// [maxBitrate] Maximum bitrate, used to accommodate expected spikes in the complexity of the video.
  /// [minIInterval] Minimum interval, in frames, between two I-frames.
  /// [minQp] Sets the minimum QP.
  /// [mvOverPictureBoundaries] Enables or disables motion vectors over picture boundaries.
  /// [mvTemporalPredictor] Enables or disables the motion vector temporal predictor.
  /// [parDenominator] Pixel aspect ratio denominator.
  /// [parNumerator] Pixel aspect ratio numerator.
  /// [profile] H265 profile.
  /// [qvbrQualityLevel] Target quality for the video encode.
  /// [rateControlMode] Rate control mode.
  /// [scanType] Scan type of the output.
  /// [sceneChangeDetect] Scene change detection.
  /// [slices] Number of slices per picture.
  /// [tier] H265 tier in the output.
  /// [tileHeight] Height of tiles.
  /// [tilePadding] Enables or disables padding of tiles.
  /// [tileWidth] Width of tiles.
  /// [timecodeBurninSettings] Apply a burned-in timecode. See `timecodeBurninSettings` Block for details.
  /// [timecodeInsertion] How timecodes are inserted into the video elementary stream.
  /// [treeblockSize] Size of the treeblock.
  const ChannelEncoderSettingsVideoDescriptionCodecSettingsH265Settings({
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
      bitrate: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['bitrate'])),
      bufSize: (() { final guardedValue = map['bufSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      colorMetadata: (() { final guardedValue = map['colorMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      colorSpaceSettings: (() { final guardedValue = map['colorSpaceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterSettings: (() { final guardedValue = map['filterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fixedAfd: (() { final guardedValue = map['fixedAfd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flickerAq: (() { final guardedValue = map['flickerAq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      framerateDenominator: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['framerateDenominator'])),
      framerateNumerator: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['framerateNumerator'])),
      gopClosedCadence: (() { final guardedValue = map['gopClosedCadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      gopSize: (() { final guardedValue = map['gopSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      gopSizeUnits: (() { final guardedValue = map['gopSizeUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookAheadRateControl: (() { final guardedValue = map['lookAheadRateControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBitrate: (() { final guardedValue = map['maxBitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minIInterval: (() { final guardedValue = map['minIInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minQp: (() { final guardedValue = map['minQp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mvOverPictureBoundaries: (() { final guardedValue = map['mvOverPictureBoundaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mvTemporalPredictor: (() { final guardedValue = map['mvTemporalPredictor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parDenominator: (() { final guardedValue = map['parDenominator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      parNumerator: (() { final guardedValue = map['parNumerator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qvbrQualityLevel: (() { final guardedValue = map['qvbrQualityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rateControlMode: (() { final guardedValue = map['rateControlMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanType: (() { final guardedValue = map['scanType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sceneChangeDetect: (() { final guardedValue = map['sceneChangeDetect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slices: (() { final guardedValue = map['slices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tileHeight: (() { final guardedValue = map['tileHeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tilePadding: (() { final guardedValue = map['tilePadding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tileWidth: (() { final guardedValue = map['tileWidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timecodeBurninSettings: (() { final guardedValue = map['timecodeBurninSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timecodeInsertion: (() { final guardedValue = map['timecodeInsertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      treeblockSize: (() { final guardedValue = map['treeblockSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
