// ignore_for_file: unused_element, unnecessary_cast

class StreamStreamModeDetails {
  /// Specifies the capacity mode of the stream. Must be either `PROVISIONED` or `ON_DEMAND`.
  final String streamMode;

  /// Creates a new [StreamStreamModeDetails].
  /// [streamMode] Specifies the capacity mode of the stream. Must be either `PROVISIONED` or `ON_DEMAND`.
  StreamStreamModeDetails({required this.streamMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'streamMode': streamMode};
  }

  factory StreamStreamModeDetails.fromMap(Map<String, dynamic> map) {
    return StreamStreamModeDetails(streamMode: map['streamMode'] as String);
  }
}
