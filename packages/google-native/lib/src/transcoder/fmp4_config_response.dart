// ignore_for_file: unused_element, unnecessary_cast

/// `fmp4` container configuration.
class Fmp4ConfigResponse {
  /// Optional. Specify the codec tag string that will be used in the media bitstream. When not specified, the codec appropriate value is used. Supported H265 codec tags: - `hvc1` (default) - `hev1`
  final String codecTag;

  /// Creates a new [Fmp4ConfigResponse].
  /// [codecTag] Optional. Specify the codec tag string that will be used in the media bitstream. When not specified, the codec appropriate value is used. Supported H265 codec tags: - `hvc1` (default) - `hev1`
  Fmp4ConfigResponse({
    required this.codecTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codecTag'] = codecTag;
    return map;
  }

  factory Fmp4ConfigResponse.fromMap(Map<String, dynamic> map) {
    return Fmp4ConfigResponse(
      codecTag: map['codecTag'] as String,
    );
  }
}
