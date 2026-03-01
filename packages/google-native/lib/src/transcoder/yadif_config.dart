// ignore_for_file: unused_element, unnecessary_cast

/// Yet Another Deinterlacing Filter Configuration.
class YadifConfig {
  /// Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.
  final bool? deinterlaceAllFrames;

  /// Disable spacial interlacing. The default is `false`.
  final bool? disableSpatialInterlacing;

  /// Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field
  final String? mode;

  /// The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity
  final String? parity;

  /// Creates a new [YadifConfig].
  /// [deinterlaceAllFrames] Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.
  /// [disableSpatialInterlacing] Disable spacial interlacing. The default is `false`.
  /// [mode] Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field
  /// [parity] The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity
  YadifConfig({
    this.deinterlaceAllFrames,
    this.disableSpatialInterlacing,
    this.mode,
    this.parity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deinterlaceAllFrames': ?deinterlaceAllFrames,
      'disableSpatialInterlacing': ?disableSpatialInterlacing,
      'mode': ?mode,
      'parity': ?parity,
    };
  }

  factory YadifConfig.fromMap(Map<String, dynamic> map) {
    return YadifConfig(
      deinterlaceAllFrames: map['deinterlaceAllFrames'] == null
          ? null
          : map['deinterlaceAllFrames'] as bool,
      disableSpatialInterlacing: map['disableSpatialInterlacing'] == null
          ? null
          : map['disableSpatialInterlacing'] as bool,
      mode: map['mode'] == null ? null : map['mode'] as String,
      parity: map['parity'] == null ? null : map['parity'] as String,
    );
  }
}
