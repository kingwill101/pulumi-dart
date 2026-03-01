// ignore_for_file: unused_element, unnecessary_cast


class GetStreamStreamModeDetail {
  /// Capacity mode of the stream. Either `ON_DEMAND` or `PROVISIONED`.
  final String streamMode;

  /// Creates a new [GetStreamStreamModeDetail].
  /// [streamMode] Capacity mode of the stream. Either `ON_DEMAND` or `PROVISIONED`.
  GetStreamStreamModeDetail({
    required this.streamMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamMode': streamMode,
    };
  }

  factory GetStreamStreamModeDetail.fromMap(Map<String, dynamic> map) {
    return GetStreamStreamModeDetail(
      streamMode: map['streamMode'] as String,
    );
  }
}

