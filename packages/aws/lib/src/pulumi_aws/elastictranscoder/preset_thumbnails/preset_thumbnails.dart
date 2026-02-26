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

  /// The width and height of thumbnail files in pixels, in the format WidthxHeight, where both values are even integers. The values cannot exceed the width and height that you specified in the Video:Resolution object. (To better control resolution and aspect ratio of thumbnails, we recommend that you use the thumbnail values <span pulumi-lang-nodejs="`maxWidth`" pulumi-lang-dotnet="`MaxWidth`" pulumi-lang-go="`maxWidth`" pulumi-lang-python="`max_width`" pulumi-lang-yaml="`maxWidth`" pulumi-lang-java="`maxWidth`">`max_width`</span>, <span pulumi-lang-nodejs="`maxHeight`" pulumi-lang-dotnet="`MaxHeight`" pulumi-lang-go="`maxHeight`" pulumi-lang-python="`max_height`" pulumi-lang-yaml="`maxHeight`" pulumi-lang-java="`maxHeight`">`max_height`</span>, <span pulumi-lang-nodejs="`sizingPolicy`" pulumi-lang-dotnet="`SizingPolicy`" pulumi-lang-go="`sizingPolicy`" pulumi-lang-python="`sizing_policy`" pulumi-lang-yaml="`sizingPolicy`" pulumi-lang-java="`sizingPolicy`">`sizing_policy`</span>, and <span pulumi-lang-nodejs="`paddingPolicy`" pulumi-lang-dotnet="`PaddingPolicy`" pulumi-lang-go="`paddingPolicy`" pulumi-lang-python="`padding_policy`" pulumi-lang-yaml="`paddingPolicy`" pulumi-lang-java="`paddingPolicy`">`padding_policy`</span> instead of <span pulumi-lang-nodejs="`resolution`" pulumi-lang-dotnet="`Resolution`" pulumi-lang-go="`resolution`" pulumi-lang-python="`resolution`" pulumi-lang-yaml="`resolution`" pulumi-lang-java="`resolution`">`resolution`</span> and <span pulumi-lang-nodejs="`aspectRatio`" pulumi-lang-dotnet="`AspectRatio`" pulumi-lang-go="`aspectRatio`" pulumi-lang-python="`aspect_ratio`" pulumi-lang-yaml="`aspectRatio`" pulumi-lang-java="`aspectRatio`">`aspect_ratio`</span>. The two groups of settings are mutually exclusive. Do not use them together)
  final String? resolution;

  /// A value that controls scaling of thumbnails. Valid values are: `Fit`, `Fill`, `Stretch`, `Keep`, `ShrinkToFit`, and `ShrinkToFill`.
  final String? sizingPolicy;

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
    final map = <String, dynamic>{};
    final aspectRatioValue = aspectRatio;
    if (aspectRatioValue != null) {
      map['aspectRatio'] = aspectRatioValue;
    }
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue;
    }
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    final maxHeightValue = maxHeight;
    if (maxHeightValue != null) {
      map['maxHeight'] = maxHeightValue;
    }
    final maxWidthValue = maxWidth;
    if (maxWidthValue != null) {
      map['maxWidth'] = maxWidthValue;
    }
    final paddingPolicyValue = paddingPolicy;
    if (paddingPolicyValue != null) {
      map['paddingPolicy'] = paddingPolicyValue;
    }
    final resolutionValue = resolution;
    if (resolutionValue != null) {
      map['resolution'] = resolutionValue;
    }
    final sizingPolicyValue = sizingPolicy;
    if (sizingPolicyValue != null) {
      map['sizingPolicy'] = sizingPolicyValue;
    }
    return map;
  }

  factory PresetThumbnails.fromMap(Map<String, dynamic> map) {
    return PresetThumbnails(
      aspectRatio:
          map['aspectRatio'] == null ? null : map['aspectRatio'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      interval: map['interval'] == null ? null : map['interval'] as String,
      maxHeight: map['maxHeight'] == null ? null : map['maxHeight'] as String,
      maxWidth: map['maxWidth'] == null ? null : map['maxWidth'] as String,
      paddingPolicy:
          map['paddingPolicy'] == null ? null : map['paddingPolicy'] as String,
      resolution:
          map['resolution'] == null ? null : map['resolution'] as String,
      sizingPolicy:
          map['sizingPolicy'] == null ? null : map['sizingPolicy'] as String,
    );
  }
}
