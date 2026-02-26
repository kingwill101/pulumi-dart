// ignore_for_file: unused_element, unnecessary_cast

import 'audio.dart';
import 'color.dart';
import 'crop.dart';
import 'deblock.dart';
import 'deinterlace.dart';
import 'denoise.dart';
import 'pad.dart';

/// Preprocessing configurations.
class PreprocessingConfig {
  /// Audio preprocessing configuration.
  final Audio? audio;

  /// Color preprocessing configuration.
  final Color? color;

  /// Specify the video cropping configuration.
  final Crop? crop;

  /// Deblock preprocessing configuration.
  final Deblock? deblock;

  /// Specify the video deinterlace configuration.
  final Deinterlace? deinterlace;

  /// Denoise preprocessing configuration.
  final Denoise? denoise;

  /// Specify the video pad filter configuration.
  final Pad? pad;

  PreprocessingConfig({
    this.audio,
    this.color,
    this.crop,
    this.deblock,
    this.deinterlace,
    this.denoise,
    this.pad,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioValue = audio;
    if (audioValue != null) {
      map['audio'] = audioValue.toMap();
    }
    final colorValue = color;
    if (colorValue != null) {
      map['color'] = colorValue.toMap();
    }
    final cropValue = crop;
    if (cropValue != null) {
      map['crop'] = cropValue.toMap();
    }
    final deblockValue = deblock;
    if (deblockValue != null) {
      map['deblock'] = deblockValue.toMap();
    }
    final deinterlaceValue = deinterlace;
    if (deinterlaceValue != null) {
      map['deinterlace'] = deinterlaceValue.toMap();
    }
    final denoiseValue = denoise;
    if (denoiseValue != null) {
      map['denoise'] = denoiseValue.toMap();
    }
    final padValue = pad;
    if (padValue != null) {
      map['pad'] = padValue.toMap();
    }
    return map;
  }

  factory PreprocessingConfig.fromMap(Map<String, dynamic> map) {
    return PreprocessingConfig(
      audio: map['audio'] == null
          ? null
          : Audio.fromMap((map['audio'] as Map).cast<String, dynamic>()),
      color: map['color'] == null
          ? null
          : Color.fromMap((map['color'] as Map).cast<String, dynamic>()),
      crop: map['crop'] == null
          ? null
          : Crop.fromMap((map['crop'] as Map).cast<String, dynamic>()),
      deblock: map['deblock'] == null
          ? null
          : Deblock.fromMap((map['deblock'] as Map).cast<String, dynamic>()),
      deinterlace: map['deinterlace'] == null
          ? null
          : Deinterlace.fromMap(
              (map['deinterlace'] as Map).cast<String, dynamic>()),
      denoise: map['denoise'] == null
          ? null
          : Denoise.fromMap((map['denoise'] as Map).cast<String, dynamic>()),
      pad: map['pad'] == null
          ? null
          : Pad.fromMap((map['pad'] as Map).cast<String, dynamic>()),
    );
  }
}
