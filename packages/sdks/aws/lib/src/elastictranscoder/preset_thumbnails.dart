// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PresetThumbnails {
  /// The aspect ratio of thumbnails. The following values are valid: auto, 1:1, 4:3, 3:2, 16:9
  final pulumi.Input<String>? aspectRatio;
  /// The format of thumbnails, if any. Valid formats are jpg and png.
  final pulumi.Input<String>? format;
  /// The approximate number of seconds between thumbnails. The value must be an integer. The actual interval can vary by several seconds from one thumbnail to the next.
  final pulumi.Input<String>? interval;
  /// The maximum height of thumbnails, in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 3072, inclusive.
  final pulumi.Input<String>? maxHeight;
  /// The maximum width of thumbnails, in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 4096, inclusive.
  final pulumi.Input<String>? maxWidth;
  /// When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of thumbnails to make the total size of the thumbnails match the values that you specified for thumbnail MaxWidth and MaxHeight settings.
  final pulumi.Input<String>? paddingPolicy;
  /// The width and height of thumbnail files in pixels, in the format WidthxHeight, where both values are even integers. The values cannot exceed the width and height that you specified in the Video:Resolution object. (To better control resolution and aspect ratio of thumbnails, we recommend that you use the thumbnail values `max_width`, `max_height`, `sizing_policy`, and `padding_policy` instead of `resolution` and `aspect_ratio`. The two groups of settings are mutually exclusive. Do not use them together)
  final pulumi.Input<String>? resolution;
  /// A value that controls scaling of thumbnails. Valid values are: `Fit`, `Fill`, `Stretch`, `Keep`, `ShrinkToFit`, and `ShrinkToFill`.
  final pulumi.Input<String>? sizingPolicy;

  /// Creates a new [PresetThumbnails].
  /// [aspectRatio] The aspect ratio of thumbnails. The following values are valid: auto, 1:1, 4:3, 3:2, 16:9
  /// [format] The format of thumbnails, if any. Valid formats are jpg and png.
  /// [interval] The approximate number of seconds between thumbnails. The value must be an integer. The actual interval can vary by several seconds from one thumbnail to the next.
  /// [maxHeight] The maximum height of thumbnails, in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 3072, inclusive.
  /// [maxWidth] The maximum width of thumbnails, in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 4096, inclusive.
  /// [paddingPolicy] When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of thumbnails to make the total size of the thumbnails match the values that you specified for thumbnail MaxWidth and MaxHeight settings.
  /// [resolution] The width and height of thumbnail files in pixels, in the format WidthxHeight, where both values are even integers. The values cannot exceed the width and height that you specified in the Video:Resolution object. (To better control resolution and aspect ratio of thumbnails, we recommend that you use the thumbnail values `max_width`, `max_height`, `sizing_policy`, and `padding_policy` instead of `resolution` and `aspect_ratio`. The two groups of settings are mutually exclusive. Do not use them together)
  /// [sizingPolicy] A value that controls scaling of thumbnails. Valid values are: `Fit`, `Fill`, `Stretch`, `Keep`, `ShrinkToFit`, and `ShrinkToFill`.
  const PresetThumbnails({
    this.aspectRatio,
    this.format,
    this.interval,
    this.maxHeight,
    this.maxWidth,
    this.paddingPolicy,
    this.resolution,
    this.sizingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectRatio': ?aspectRatio,
      'format': ?format,
      'interval': ?interval,
      'maxHeight': ?maxHeight,
      'maxWidth': ?maxWidth,
      'paddingPolicy': ?paddingPolicy,
      'resolution': ?resolution,
      'sizingPolicy': ?sizingPolicy,
    };
  }

  factory PresetThumbnails.fromMap(Map<String, dynamic> map) {
    return PresetThumbnails(
      aspectRatio: (() { final guardedValue = map['aspectRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxHeight: (() { final guardedValue = map['maxHeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxWidth: (() { final guardedValue = map['maxWidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paddingPolicy: (() { final guardedValue = map['paddingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolution: (() { final guardedValue = map['resolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizingPolicy: (() { final guardedValue = map['sizingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

