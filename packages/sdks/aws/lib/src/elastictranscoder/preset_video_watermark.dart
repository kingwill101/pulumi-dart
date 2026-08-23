// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PresetVideoWatermark {
  /// The horizontal position of the watermark unless you specify a nonzero value for `horzontalOffset`.
  final pulumi.Input<String>? horizontalAlign;
  /// The amount by which you want the horizontal position of the watermark to be offset from the position specified by `horizontalAlign`.
  final pulumi.Input<String>? horizontalOffset;
  /// A unique identifier for the settings for one watermark. The value of Id can be up to 40 characters long. You can specify settings for up to four watermarks.
  final pulumi.Input<String>? id;
  /// The maximum height of the watermark.
  final pulumi.Input<String>? maxHeight;
  /// The maximum width of the watermark.
  final pulumi.Input<String>? maxWidth;
  /// A percentage that indicates how much you want a watermark to obscure the video in the location where it appears.
  final pulumi.Input<String>? opacity;
  /// A value that controls scaling of the watermark. Valid values are: `Fit`, `Stretch`, `ShrinkToFit`
  final pulumi.Input<String>? sizingPolicy;
  /// A value that determines how Elastic Transcoder interprets values that you specified for `video_watermarks.horizontal_offset`, `video_watermarks.vertical_offset`, `video_watermarks.max_width`, and `video_watermarks.max_height`. Valid values are `Content` and `Frame`.
  final pulumi.Input<String>? target;
  /// The vertical position of the watermark unless you specify a nonzero value for `verticalAlign`. Valid values are `Top`, `Bottom`, `Center`.
  final pulumi.Input<String>? verticalAlign;
  /// The amount by which you want the vertical position of the watermark to be offset from the position specified by `verticalAlign`
  final pulumi.Input<String>? verticalOffset;

  /// Creates a new [PresetVideoWatermark].
  /// [horizontalAlign] The horizontal position of the watermark unless you specify a nonzero value for `horzontalOffset`.
  /// [horizontalOffset] The amount by which you want the horizontal position of the watermark to be offset from the position specified by `horizontalAlign`.
  /// [id] A unique identifier for the settings for one watermark. The value of Id can be up to 40 characters long. You can specify settings for up to four watermarks.
  /// [maxHeight] The maximum height of the watermark.
  /// [maxWidth] The maximum width of the watermark.
  /// [opacity] A percentage that indicates how much you want a watermark to obscure the video in the location where it appears.
  /// [sizingPolicy] A value that controls scaling of the watermark. Valid values are: `Fit`, `Stretch`, `ShrinkToFit`
  /// [target] A value that determines how Elastic Transcoder interprets values that you specified for `video_watermarks.horizontal_offset`, `video_watermarks.vertical_offset`, `video_watermarks.max_width`, and `video_watermarks.max_height`. Valid values are `Content` and `Frame`.
  /// [verticalAlign] The vertical position of the watermark unless you specify a nonzero value for `verticalAlign`. Valid values are `Top`, `Bottom`, `Center`.
  /// [verticalOffset] The amount by which you want the vertical position of the watermark to be offset from the position specified by `verticalAlign`
  const PresetVideoWatermark({
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
    return <String, dynamic>{
      'horizontalAlign': ?horizontalAlign,
      'horizontalOffset': ?horizontalOffset,
      'id': ?id,
      'maxHeight': ?maxHeight,
      'maxWidth': ?maxWidth,
      'opacity': ?opacity,
      'sizingPolicy': ?sizingPolicy,
      'target': ?target,
      'verticalAlign': ?verticalAlign,
      'verticalOffset': ?verticalOffset,
    };
  }

  factory PresetVideoWatermark.fromMap(Map<String, dynamic> map) {
    return PresetVideoWatermark(
      horizontalAlign: (() { final guardedValue = map['horizontalAlign']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      horizontalOffset: (() { final guardedValue = map['horizontalOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxHeight: (() { final guardedValue = map['maxHeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxWidth: (() { final guardedValue = map['maxWidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      opacity: (() { final guardedValue = map['opacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizingPolicy: (() { final guardedValue = map['sizingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verticalAlign: (() { final guardedValue = map['verticalAlign']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verticalOffset: (() { final guardedValue = map['verticalOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
