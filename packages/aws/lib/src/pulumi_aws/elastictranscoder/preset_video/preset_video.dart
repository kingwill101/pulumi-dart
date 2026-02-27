// ignore_for_file: unused_element, unnecessary_cast

class PresetVideo {
  /// The display aspect ratio of the video in the output file. Valid values are: `auto`, `1:1`, `4:3`, `3:2`, `16:9`. (Note; to better control resolution and aspect ratio of output videos, we recommend that you use the values `max_width`, `max_height`, `sizing_policy`, `padding_policy`, and `display_aspect_ratio` instead of `resolution` and `aspect_ratio`.)
  final String? aspectRatio;

  /// The bit rate of the video stream in the output file, in kilobits/second. You can configure variable bit rate or constant bit rate encoding.
  final String? bitRate;

  /// The video codec for the output file. Valid values are `gif`, `H.264`, `mpeg2`, `vp8`, and `vp9`.
  final String? codec;

  /// The value that Elastic Transcoder adds to the metadata in the output file. If you set DisplayAspectRatio to auto, Elastic Transcoder chooses an aspect ratio that ensures square pixels. If you specify another option, Elastic Transcoder sets that value in the output file.
  final String? displayAspectRatio;

  /// Whether to use a fixed value for Video:FixedGOP. Not applicable for containers of type gif. Valid values are true and false. Also known as, Fixed Number of Frames Between Keyframes.
  final String? fixedGop;

  /// The frames per second for the video stream in the output file. The following values are valid: `auto`, `10`, `15`, `23.97`, `24`, `25`, `29.97`, `30`, `50`, `60`.
  final String? frameRate;

  /// The maximum number of frames between key frames. Not applicable for containers of type gif.
  final String? keyframesMaxDist;

  /// If you specify auto for FrameRate, Elastic Transcoder uses the frame rate of the input video for the frame rate of the output video, up to the maximum frame rate. If you do not specify a MaxFrameRate, Elastic Transcoder will use a default of 30.
  final String? maxFrameRate;

  /// The maximum height of the output video in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 96 and 3072, inclusive.
  final String? maxHeight;

  /// The maximum width of the output video in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 128 and 4096, inclusive.
  final String? maxWidth;

  /// When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of the output video to make the total size of the output video match the values that you specified for `max_width` and `max_height`.
  final String? paddingPolicy;

  /// The width and height of the video in the output file, in pixels. Valid values are `auto` and `widthxheight`. (see note for `aspect_ratio`)
  final String? resolution;

  /// A value that controls scaling of the output video. Valid values are: `Fit`, `Fill`, `Stretch`, `Keep`, `ShrinkToFit`, `ShrinkToFill`.
  final String? sizingPolicy;

  PresetVideo({
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
    final map = <String, dynamic>{};
    final aspectRatioValue = aspectRatio;
    if (aspectRatioValue != null) {
      map['aspectRatio'] = aspectRatioValue;
    }
    final bitRateValue = bitRate;
    if (bitRateValue != null) {
      map['bitRate'] = bitRateValue;
    }
    final codecValue = codec;
    if (codecValue != null) {
      map['codec'] = codecValue;
    }
    final displayAspectRatioValue = displayAspectRatio;
    if (displayAspectRatioValue != null) {
      map['displayAspectRatio'] = displayAspectRatioValue;
    }
    final fixedGopValue = fixedGop;
    if (fixedGopValue != null) {
      map['fixedGop'] = fixedGopValue;
    }
    final frameRateValue = frameRate;
    if (frameRateValue != null) {
      map['frameRate'] = frameRateValue;
    }
    final keyframesMaxDistValue = keyframesMaxDist;
    if (keyframesMaxDistValue != null) {
      map['keyframesMaxDist'] = keyframesMaxDistValue;
    }
    final maxFrameRateValue = maxFrameRate;
    if (maxFrameRateValue != null) {
      map['maxFrameRate'] = maxFrameRateValue;
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

  factory PresetVideo.fromMap(Map<String, dynamic> map) {
    return PresetVideo(
      aspectRatio:
          map['aspectRatio'] == null ? null : map['aspectRatio'] as String,
      bitRate: map['bitRate'] == null ? null : map['bitRate'] as String,
      codec: map['codec'] == null ? null : map['codec'] as String,
      displayAspectRatio: map['displayAspectRatio'] == null
          ? null
          : map['displayAspectRatio'] as String,
      fixedGop: map['fixedGop'] == null ? null : map['fixedGop'] as String,
      frameRate: map['frameRate'] == null ? null : map['frameRate'] as String,
      keyframesMaxDist: map['keyframesMaxDist'] == null
          ? null
          : map['keyframesMaxDist'] as String,
      maxFrameRate:
          map['maxFrameRate'] == null ? null : map['maxFrameRate'] as String,
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
