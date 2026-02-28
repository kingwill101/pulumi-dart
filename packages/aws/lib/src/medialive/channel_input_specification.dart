// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputSpecification {
  final String codec;
  final String inputResolution;
  final String maximumBitrate;

  /// Creates a new [ChannelInputSpecification].
  /// [codec] Required.
  /// [inputResolution] Required.
  /// [maximumBitrate] Required.
  ChannelInputSpecification({
    required this.codec,
    required this.inputResolution,
    required this.maximumBitrate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codec'] = codec;
    map['inputResolution'] = inputResolution;
    map['maximumBitrate'] = maximumBitrate;
    return map;
  }

  factory ChannelInputSpecification.fromMap(Map<String, dynamic> map) {
    return ChannelInputSpecification(
      codec: map['codec'] as String,
      inputResolution: map['inputResolution'] as String,
      maximumBitrate: map['maximumBitrate'] as String,
    );
  }
}
