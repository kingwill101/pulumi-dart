// ignore_for_file: unused_element, unnecessary_cast

class PresetVideo {
  /// The display aspect ratio of the video in the output file. Valid values are: <span pulumi-lang-nodejs="`auto`" pulumi-lang-dotnet="`Auto`" pulumi-lang-go="`auto`" pulumi-lang-python="`auto`" pulumi-lang-yaml="`auto`" pulumi-lang-java="`auto`">`auto`</span>, `1:1`, `4:3`, `3:2`, `16:9`. (Note; to better control resolution and aspect ratio of output videos, we recommend that you use the values <span pulumi-lang-nodejs="`maxWidth`" pulumi-lang-dotnet="`MaxWidth`" pulumi-lang-go="`maxWidth`" pulumi-lang-python="`max_width`" pulumi-lang-yaml="`maxWidth`" pulumi-lang-java="`maxWidth`">`max_width`</span>, <span pulumi-lang-nodejs="`maxHeight`" pulumi-lang-dotnet="`MaxHeight`" pulumi-lang-go="`maxHeight`" pulumi-lang-python="`max_height`" pulumi-lang-yaml="`maxHeight`" pulumi-lang-java="`maxHeight`">`max_height`</span>, <span pulumi-lang-nodejs="`sizingPolicy`" pulumi-lang-dotnet="`SizingPolicy`" pulumi-lang-go="`sizingPolicy`" pulumi-lang-python="`sizing_policy`" pulumi-lang-yaml="`sizingPolicy`" pulumi-lang-java="`sizingPolicy`">`sizing_policy`</span>, <span pulumi-lang-nodejs="`paddingPolicy`" pulumi-lang-dotnet="`PaddingPolicy`" pulumi-lang-go="`paddingPolicy`" pulumi-lang-python="`padding_policy`" pulumi-lang-yaml="`paddingPolicy`" pulumi-lang-java="`paddingPolicy`">`padding_policy`</span>, and <span pulumi-lang-nodejs="`displayAspectRatio`" pulumi-lang-dotnet="`DisplayAspectRatio`" pulumi-lang-go="`displayAspectRatio`" pulumi-lang-python="`display_aspect_ratio`" pulumi-lang-yaml="`displayAspectRatio`" pulumi-lang-java="`displayAspectRatio`">`display_aspect_ratio`</span> instead of <span pulumi-lang-nodejs="`resolution`" pulumi-lang-dotnet="`Resolution`" pulumi-lang-go="`resolution`" pulumi-lang-python="`resolution`" pulumi-lang-yaml="`resolution`" pulumi-lang-java="`resolution`">`resolution`</span> and <span pulumi-lang-nodejs="`aspectRatio`" pulumi-lang-dotnet="`AspectRatio`" pulumi-lang-go="`aspectRatio`" pulumi-lang-python="`aspect_ratio`" pulumi-lang-yaml="`aspectRatio`" pulumi-lang-java="`aspectRatio`">`aspect_ratio`</span>.)
  final String? aspectRatio;

  /// The bit rate of the video stream in the output file, in kilobits/second. You can configure variable bit rate or constant bit rate encoding.
  final String? bitRate;

  /// The video codec for the output file. Valid values are <span pulumi-lang-nodejs="`gif`" pulumi-lang-dotnet="`Gif`" pulumi-lang-go="`gif`" pulumi-lang-python="`gif`" pulumi-lang-yaml="`gif`" pulumi-lang-java="`gif`">`gif`</span>, `H.264`, <span pulumi-lang-nodejs="`mpeg2`" pulumi-lang-dotnet="`Mpeg2`" pulumi-lang-go="`mpeg2`" pulumi-lang-python="`mpeg2`" pulumi-lang-yaml="`mpeg2`" pulumi-lang-java="`mpeg2`">`mpeg2`</span>, <span pulumi-lang-nodejs="`vp8`" pulumi-lang-dotnet="`Vp8`" pulumi-lang-go="`vp8`" pulumi-lang-python="`vp8`" pulumi-lang-yaml="`vp8`" pulumi-lang-java="`vp8`">`vp8`</span>, and <span pulumi-lang-nodejs="`vp9`" pulumi-lang-dotnet="`Vp9`" pulumi-lang-go="`vp9`" pulumi-lang-python="`vp9`" pulumi-lang-yaml="`vp9`" pulumi-lang-java="`vp9`">`vp9`</span>.
  final String? codec;

  /// The value that Elastic Transcoder adds to the metadata in the output file. If you set DisplayAspectRatio to auto, Elastic Transcoder chooses an aspect ratio that ensures square pixels. If you specify another option, Elastic Transcoder sets that value in the output file.
  final String? displayAspectRatio;

  /// Whether to use a fixed value for Video:FixedGOP. Not applicable for containers of type gif. Valid values are true and false. Also known as, Fixed Number of Frames Between Keyframes.
  final String? fixedGop;

  /// The frames per second for the video stream in the output file. The following values are valid: <span pulumi-lang-nodejs="`auto`" pulumi-lang-dotnet="`Auto`" pulumi-lang-go="`auto`" pulumi-lang-python="`auto`" pulumi-lang-yaml="`auto`" pulumi-lang-java="`auto`">`auto`</span>, <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>, <span pulumi-lang-nodejs="`15`" pulumi-lang-dotnet="`15`" pulumi-lang-go="`15`" pulumi-lang-python="`15`" pulumi-lang-yaml="`15`" pulumi-lang-java="`15`">`15`</span>, `23.97`, <span pulumi-lang-nodejs="`24`" pulumi-lang-dotnet="`24`" pulumi-lang-go="`24`" pulumi-lang-python="`24`" pulumi-lang-yaml="`24`" pulumi-lang-java="`24`">`24`</span>, <span pulumi-lang-nodejs="`25`" pulumi-lang-dotnet="`25`" pulumi-lang-go="`25`" pulumi-lang-python="`25`" pulumi-lang-yaml="`25`" pulumi-lang-java="`25`">`25`</span>, `29.97`, <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>, <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span>, <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  final String? frameRate;

  /// The maximum number of frames between key frames. Not applicable for containers of type gif.
  final String? keyframesMaxDist;

  /// If you specify auto for FrameRate, Elastic Transcoder uses the frame rate of the input video for the frame rate of the output video, up to the maximum frame rate. If you do not specify a MaxFrameRate, Elastic Transcoder will use a default of 30.
  final String? maxFrameRate;

  /// The maximum height of the output video in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 96 and 3072, inclusive.
  final String? maxHeight;

  /// The maximum width of the output video in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 128 and 4096, inclusive.
  final String? maxWidth;

  /// When you set PaddingPolicy to Pad, Elastic Transcoder might add black bars to the top and bottom and/or left and right sides of the output video to make the total size of the output video match the values that you specified for <span pulumi-lang-nodejs="`maxWidth`" pulumi-lang-dotnet="`MaxWidth`" pulumi-lang-go="`maxWidth`" pulumi-lang-python="`max_width`" pulumi-lang-yaml="`maxWidth`" pulumi-lang-java="`maxWidth`">`max_width`</span> and <span pulumi-lang-nodejs="`maxHeight`" pulumi-lang-dotnet="`MaxHeight`" pulumi-lang-go="`maxHeight`" pulumi-lang-python="`max_height`" pulumi-lang-yaml="`maxHeight`" pulumi-lang-java="`maxHeight`">`max_height`</span>.
  final String? paddingPolicy;

  /// The width and height of the video in the output file, in pixels. Valid values are <span pulumi-lang-nodejs="`auto`" pulumi-lang-dotnet="`Auto`" pulumi-lang-go="`auto`" pulumi-lang-python="`auto`" pulumi-lang-yaml="`auto`" pulumi-lang-java="`auto`">`auto`</span> and <span pulumi-lang-nodejs="`widthxheight`" pulumi-lang-dotnet="`Widthxheight`" pulumi-lang-go="`widthxheight`" pulumi-lang-python="`widthxheight`" pulumi-lang-yaml="`widthxheight`" pulumi-lang-java="`widthxheight`">`widthxheight`</span>. (see note for <span pulumi-lang-nodejs="`aspectRatio`" pulumi-lang-dotnet="`AspectRatio`" pulumi-lang-go="`aspectRatio`" pulumi-lang-python="`aspect_ratio`" pulumi-lang-yaml="`aspectRatio`" pulumi-lang-java="`aspectRatio`">`aspect_ratio`</span>)
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
