// ignore_for_file: unused_element, unnecessary_cast


class PresetThumbnails {
  /// The aspect ratio of thumbnails. The following values are valid: auto, 1:1, 4:3, 3:2, 16:9
  final String? aspectRatio;
  /// The format of thumbnails, if any. Valid formats are jpg and png.
  final String? format;
  /// The approximate number of seconds between thumbnails. The value must be an integer. The actual interval can vary by several seconds from one thumbnail to the next.
  final String? interval;
  /// The maximum height of thumbnails, in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 3072, inclusive.
  final String? maxHeight;
  /// The maximum width of thumbnails, in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 4096, inclusive.
  final String? maxWidth;
  /// When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of thumbnails to make the total size of the thumbnails match the values that you specified for thumbnail MaxWidth and MaxHeight settings.
  final String? paddingPolicy;
  /// The width and height of thumbnail files in pixels, in the format WidthxHeight, where both values are even integers. The values cannot exceed the width and height that you specified in the Video:Resolution object. (To better control resolution and aspect ratio of thumbnails, we recommend that you use the thumbnail values `max_width`, `max_height`, `sizing_policy`, and `padding_policy` instead of `resolution` and `aspect_ratio`. The two groups of settings are mutually exclusive. Do not use them together)
  final String? resolution;
  /// A value that controls scaling of thumbnails. Valid values are: `Fit`, `Fill`, `Stretch`, `Keep`, `ShrinkToFit`, and `ShrinkToFill`.
  final String? sizingPolicy;

  /// Creates a new [PresetThumbnails].
  /// [aspectRatio] The aspect ratio of thumbnails. The following values are valid: auto, 1:1, 4:3, 3:2, 16:9
  /// [format] The format of thumbnails, if any. Valid formats are jpg and png.
  /// [interval] The approximate number of seconds between thumbnails. The value must be an integer. The actual interval can vary by several seconds from one thumbnail to the next.
  /// [maxHeight] The maximum height of thumbnails, in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 3072, inclusive.
  /// [maxWidth] The maximum width of thumbnails, in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 4096, inclusive.
  /// [paddingPolicy] When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of thumbnails to make the total size of the thumbnails match the values that you specified for thumbnail MaxWidth and MaxHeight settings.
  /// [resolution] The width and height of thumbnail files in pixels, in the format WidthxHeight, where both values are even integers. The values cannot exceed the width and height that you specified in the Video:Resolution object. (To better control resolution and aspect ratio of thumbnails, we recommend that you use the thumbnail values `max_width`, `max_height`, `sizing_policy`, and `padding_policy` instead of `resolution` and `aspect_ratio`. The two groups of settings are mutually exclusive. Do not use them together)
  /// [sizingPolicy] A value that controls scaling of thumbnails. Valid values are: `Fit`, `Fill`, `Stretch`, `Keep`, `ShrinkToFit`, and `ShrinkToFill`.
  PresetThumbnails({
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
      aspectRatio: map['aspectRatio'] == null ? null : map['aspectRatio'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      interval: map['interval'] == null ? null : map['interval'] as String,
      maxHeight: map['maxHeight'] == null ? null : map['maxHeight'] as String,
      maxWidth: map['maxWidth'] == null ? null : map['maxWidth'] as String,
      paddingPolicy: map['paddingPolicy'] == null ? null : map['paddingPolicy'] as String,
      resolution: map['resolution'] == null ? null : map['resolution'] as String,
      sizingPolicy: map['sizingPolicy'] == null ? null : map['sizingPolicy'] as String,
    );
  }
}

