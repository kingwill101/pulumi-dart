// ignore_for_file: unused_element, unnecessary_cast

/// Bob Weaver Deinterlacing Filter Configuration.
class BwdifConfig {
  /// Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.
  final bool? deinterlaceAllFrames;

  /// Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field
  final String? mode;

  /// The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity
  final String? parity;

  BwdifConfig({
    this.deinterlaceAllFrames,
    this.mode,
    this.parity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deinterlaceAllFramesValue = deinterlaceAllFrames;
    if (deinterlaceAllFramesValue != null) {
      map['deinterlaceAllFrames'] = deinterlaceAllFramesValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final parityValue = parity;
    if (parityValue != null) {
      map['parity'] = parityValue;
    }
    return map;
  }

  factory BwdifConfig.fromMap(Map<String, dynamic> map) {
    return BwdifConfig(
      deinterlaceAllFrames: map['deinterlaceAllFrames'] == null
          ? null
          : map['deinterlaceAllFrames'] as bool,
      mode: map['mode'] == null ? null : map['mode'] as String,
      parity: map['parity'] == null ? null : map['parity'] as String,
    );
  }
}
