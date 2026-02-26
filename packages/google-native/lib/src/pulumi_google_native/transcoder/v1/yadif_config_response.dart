// ignore_for_file: unused_element, unnecessary_cast

/// Yet Another Deinterlacing Filter Configuration.
class YadifConfigResponse {
  /// Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.
  final bool deinterlaceAllFrames;

  /// Disable spacial interlacing. The default is `false`.
  final bool disableSpatialInterlacing;

  /// Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field
  final String mode;

  /// The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity
  final String parity;

  YadifConfigResponse({
    required this.deinterlaceAllFrames,
    required this.disableSpatialInterlacing,
    required this.mode,
    required this.parity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deinterlaceAllFrames'] = deinterlaceAllFrames;
    map['disableSpatialInterlacing'] = disableSpatialInterlacing;
    map['mode'] = mode;
    map['parity'] = parity;
    return map;
  }

  factory YadifConfigResponse.fromMap(Map<String, dynamic> map) {
    return YadifConfigResponse(
      deinterlaceAllFrames: map['deinterlaceAllFrames'] as bool,
      disableSpatialInterlacing: map['disableSpatialInterlacing'] as bool,
      mode: map['mode'] as String,
      parity: map['parity'] as String,
    );
  }
}
