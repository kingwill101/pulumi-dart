// ignore_for_file: unused_element, unnecessary_cast

/// `fmp4` container configuration.
class Fmp4Config {
  /// Optional. Specify the codec tag string that will be used in the media bitstream. When not specified, the codec appropriate value is used. Supported H265 codec tags: - `hvc1` (default) - `hev1`
  final String? codecTag;

  Fmp4Config({
    this.codecTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codecTagValue = codecTag;
    if (codecTagValue != null) {
      map['codecTag'] = codecTagValue;
    }
    return map;
  }

  factory Fmp4Config.fromMap(Map<String, dynamic> map) {
    return Fmp4Config(
      codecTag: map['codecTag'] == null ? null : map['codecTag'] as String,
    );
  }
}
