// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PresetVideo {
  /// The display aspect ratio of the video in the output file. Valid values are: `auto`, `1:1`, `4:3`, `3:2`, `16:9`. (Note; to better control resolution and aspect ratio of output videos, we recommend that you use the values `maxWidth`, `maxHeight`, `sizingPolicy`, `paddingPolicy`, and `displayAspectRatio` instead of `resolution` and `aspectRatio`.)
  final pulumi.Input<String>? aspectRatio;
  /// The bit rate of the video stream in the output file, in kilobits/second. You can configure variable bit rate or constant bit rate encoding.
  final pulumi.Input<String>? bitRate;
  /// The video codec for the output file. Valid values are `gif`, `H.264`, `mpeg2`, `vp8`, and `vp9`.
  final pulumi.Input<String>? codec;
  /// The value that Elastic Transcoder adds to the metadata in the output file. If you set DisplayAspectRatio to auto, Elastic Transcoder chooses an aspect ratio that ensures square pixels. If you specify another option, Elastic Transcoder sets that value in the output file.
  final pulumi.Input<String>? displayAspectRatio;
  /// Whether to use a fixed value for Video:FixedGOP. Not applicable for containers of type gif. Valid values are true and false. Also known as, Fixed Number of Frames Between Keyframes.
  final pulumi.Input<String>? fixedGop;
  /// The frames per second for the video stream in the output file. The following values are valid: `auto`, `10`, `15`, `23.97`, `24`, `25`, `29.97`, `30`, `50`, `60`.
  final pulumi.Input<String>? frameRate;
  /// The maximum number of frames between key frames. Not applicable for containers of type gif.
  final pulumi.Input<String>? keyframesMaxDist;
  /// If you specify auto for FrameRate, Elastic Transcoder uses the frame rate of the input video for the frame rate of the output video, up to the maximum frame rate. If you do not specify a MaxFrameRate, Elastic Transcoder will use a default of 30.
  final pulumi.Input<String>? maxFrameRate;
  /// The maximum height of the output video in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 96 and 3072, inclusive.
  final pulumi.Input<String>? maxHeight;
  /// The maximum width of the output video in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 128 and 4096, inclusive.
  final pulumi.Input<String>? maxWidth;
  /// When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of the output video to make the total size of the output video match the values that you specified for `maxWidth` and `maxHeight`.
  final pulumi.Input<String>? paddingPolicy;
  /// The width and height of the video in the output file, in pixels. Valid values are `auto` and `widthxheight`. (see note for `aspectRatio`)
  final pulumi.Input<String>? resolution;
  /// A value that controls scaling of the output video. Valid values are: `Fit`, `Fill`, `Stretch`, `Keep`, `ShrinkToFit`, `ShrinkToFill`.
  final pulumi.Input<String>? sizingPolicy;

  /// Creates a new [PresetVideo].
  /// [aspectRatio] The display aspect ratio of the video in the output file. Valid values are: `auto`, `1:1`, `4:3`, `3:2`, `16:9`. (Note; to better control resolution and aspect ratio of output videos, we recommend that you use the values `maxWidth`, `maxHeight`, `sizingPolicy`, `paddingPolicy`, and `displayAspectRatio` instead of `resolution` and `aspectRatio`.)
  /// [bitRate] The bit rate of the video stream in the output file, in kilobits/second. You can configure variable bit rate or constant bit rate encoding.
  /// [codec] The video codec for the output file. Valid values are `gif`, `H.264`, `mpeg2`, `vp8`, and `vp9`.
  /// [displayAspectRatio] The value that Elastic Transcoder adds to the metadata in the output file. If you set DisplayAspectRatio to auto, Elastic Transcoder chooses an aspect ratio that ensures square pixels. If you specify another option, Elastic Transcoder sets that value in the output file.
  /// [fixedGop] Whether to use a fixed value for Video:FixedGOP. Not applicable for containers of type gif. Valid values are true and false. Also known as, Fixed Number of Frames Between Keyframes.
  /// [frameRate] The frames per second for the video stream in the output file. The following values are valid: `auto`, `10`, `15`, `23.97`, `24`, `25`, `29.97`, `30`, `50`, `60`.
  /// [keyframesMaxDist] The maximum number of frames between key frames. Not applicable for containers of type gif.
  /// [maxFrameRate] If you specify auto for FrameRate, Elastic Transcoder uses the frame rate of the input video for the frame rate of the output video, up to the maximum frame rate. If you do not specify a MaxFrameRate, Elastic Transcoder will use a default of 30.
  /// [maxHeight] The maximum height of the output video in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 96 and 3072, inclusive.
  /// [maxWidth] The maximum width of the output video in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 128 and 4096, inclusive.
  /// [paddingPolicy] When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of the output video to make the total size of the output video match the values that you specified for `maxWidth` and `maxHeight`.
  /// [resolution] The width and height of the video in the output file, in pixels. Valid values are `auto` and `widthxheight`. (see note for `aspectRatio`)
  /// [sizingPolicy] A value that controls scaling of the output video. Valid values are: `Fit`, `Fill`, `Stretch`, `Keep`, `ShrinkToFit`, `ShrinkToFill`.
  const PresetVideo({
    this.aspectRatio,
    this.bitRate,
    this.codec,
    this.displayAspectRatio,
    this.fixedGop,
    this.frameRate,
    this.keyframesMaxDist,
    this.maxFrameRate,
    this.maxHeight,
    this.maxWidth,
    this.paddingPolicy,
    this.resolution,
    this.sizingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectRatio': ?aspectRatio,
      'bitRate': ?bitRate,
      'codec': ?codec,
      'displayAspectRatio': ?displayAspectRatio,
      'fixedGop': ?fixedGop,
      'frameRate': ?frameRate,
      'keyframesMaxDist': ?keyframesMaxDist,
      'maxFrameRate': ?maxFrameRate,
      'maxHeight': ?maxHeight,
      'maxWidth': ?maxWidth,
      'paddingPolicy': ?paddingPolicy,
      'resolution': ?resolution,
      'sizingPolicy': ?sizingPolicy,
    };
  }

  factory PresetVideo.fromMap(Map<String, dynamic> map) {
    return PresetVideo(
      aspectRatio: (() { final guardedValue = map['aspectRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bitRate: (() { final guardedValue = map['bitRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codec: (() { final guardedValue = map['codec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayAspectRatio: (() { final guardedValue = map['displayAspectRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedGop: (() { final guardedValue = map['fixedGop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frameRate: (() { final guardedValue = map['frameRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyframesMaxDist: (() { final guardedValue = map['keyframesMaxDist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxFrameRate: (() { final guardedValue = map['maxFrameRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxHeight: (() { final guardedValue = map['maxHeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxWidth: (() { final guardedValue = map['maxWidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paddingPolicy: (() { final guardedValue = map['paddingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolution: (() { final guardedValue = map['resolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizingPolicy: (() { final guardedValue = map['sizingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
