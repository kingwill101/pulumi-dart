// ignore_for_file: unused_element, unnecessary_cast

class PresetVideoWatermark {
  /// The horizontal position of the watermark unless you specify a nonzero value for `horzontal_offset`.
  final String? horizontalAlign;

  /// The amount by which you want the horizontal position of the watermark to be offset from the position specified by `horizontal_align`.
  final String? horizontalOffset;

  /// A unique identifier for the settings for one watermark. The value of Id can be up to 40 characters long. You can specify settings for up to four watermarks.
  final String? id;

  /// The maximum height of the watermark.
  final String? maxHeight;

  /// The maximum width of the watermark.
  final String? maxWidth;

  /// A percentage that indicates how much you want a watermark to obscure the video in the location where it appears.
  final String? opacity;

  /// A value that controls scaling of the watermark. Valid values are: `Fit`, `Stretch`, `ShrinkToFit`
  final String? sizingPolicy;

  /// A value that determines how Elastic Transcoder interprets values that you specified for `video_watermarks.horizontal_offset`, `video_watermarks.vertical_offset`, `video_watermarks.max_width`, and `video_watermarks.max_height`. Valid values are `Content` and `Frame`.
  final String? target;

  /// The vertical position of the watermark unless you specify a nonzero value for `vertical_align`. Valid values are `Top`, `Bottom`, `Center`.
  final String? verticalAlign;

  /// The amount by which you want the vertical position of the watermark to be offset from the position specified by `vertical_align`
  final String? verticalOffset;

  /// Creates a new [PresetVideoWatermark].
  /// [horizontalAlign] The horizontal position of the watermark unless you specify a nonzero value for `horzontal_offset`.
  /// [horizontalOffset] The amount by which you want the horizontal position of the watermark to be offset from the position specified by `horizontal_align`.
  /// [id] A unique identifier for the settings for one watermark. The value of Id can be up to 40 characters long. You can specify settings for up to four watermarks.
  /// [maxHeight] The maximum height of the watermark.
  /// [maxWidth] The maximum width of the watermark.
  /// [opacity] A percentage that indicates how much you want a watermark to obscure the video in the location where it appears.
  /// [sizingPolicy] A value that controls scaling of the watermark. Valid values are: `Fit`, `Stretch`, `ShrinkToFit`
  /// [target] A value that determines how Elastic Transcoder interprets values that you specified for `video_watermarks.horizontal_offset`, `video_watermarks.vertical_offset`, `video_watermarks.max_width`, and `video_watermarks.max_height`. Valid values are `Content` and `Frame`.
  /// [verticalAlign] The vertical position of the watermark unless you specify a nonzero value for `vertical_align`. Valid values are `Top`, `Bottom`, `Center`.
  /// [verticalOffset] The amount by which you want the vertical position of the watermark to be offset from the position specified by `vertical_align`
  PresetVideoWatermark({
    this.horizontalAlign,
    this.horizontalOffset,
    this.id,
    this.maxHeight,
    this.maxWidth,
    this.opacity,
    this.sizingPolicy,
    this.target,
    this.verticalAlign,
    this.verticalOffset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final horizontalAlignValue = horizontalAlign;
    if (horizontalAlignValue != null) {
      map['horizontalAlign'] = horizontalAlignValue;
    }
    final horizontalOffsetValue = horizontalOffset;
    if (horizontalOffsetValue != null) {
      map['horizontalOffset'] = horizontalOffsetValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final maxHeightValue = maxHeight;
    if (maxHeightValue != null) {
      map['maxHeight'] = maxHeightValue;
    }
    final maxWidthValue = maxWidth;
    if (maxWidthValue != null) {
      map['maxWidth'] = maxWidthValue;
    }
    final opacityValue = opacity;
    if (opacityValue != null) {
      map['opacity'] = opacityValue;
    }
    final sizingPolicyValue = sizingPolicy;
    if (sizingPolicyValue != null) {
      map['sizingPolicy'] = sizingPolicyValue;
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    final verticalAlignValue = verticalAlign;
    if (verticalAlignValue != null) {
      map['verticalAlign'] = verticalAlignValue;
    }
    final verticalOffsetValue = verticalOffset;
    if (verticalOffsetValue != null) {
      map['verticalOffset'] = verticalOffsetValue;
    }
    return map;
  }

  factory PresetVideoWatermark.fromMap(Map<String, dynamic> map) {
    return PresetVideoWatermark(
      horizontalAlign: map['horizontalAlign'] == null
          ? null
          : map['horizontalAlign'] as String,
      horizontalOffset: map['horizontalOffset'] == null
          ? null
          : map['horizontalOffset'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      maxHeight: map['maxHeight'] == null ? null : map['maxHeight'] as String,
      maxWidth: map['maxWidth'] == null ? null : map['maxWidth'] as String,
      opacity: map['opacity'] == null ? null : map['opacity'] as String,
      sizingPolicy:
          map['sizingPolicy'] == null ? null : map['sizingPolicy'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      verticalAlign:
          map['verticalAlign'] == null ? null : map['verticalAlign'] as String,
      verticalOffset: map['verticalOffset'] == null
          ? null
          : map['verticalOffset'] as String,
    );
  }
}
