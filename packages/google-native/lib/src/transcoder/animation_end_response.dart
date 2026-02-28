// ignore_for_file: unused_element, unnecessary_cast

/// End previous overlay animation from the video. Without `AnimationEnd`, the overlay object will keep the state of previous animation until the end of the video.
class AnimationEndResponse {
  /// The time to end overlay object, in seconds. Default: 0
  final String startTimeOffset;

  /// Creates a new [AnimationEndResponse].
  /// [startTimeOffset] The time to end overlay object, in seconds. Default: 0
  AnimationEndResponse({
    required this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['startTimeOffset'] = startTimeOffset;
    return map;
  }

  factory AnimationEndResponse.fromMap(Map<String, dynamic> map) {
    return AnimationEndResponse(
      startTimeOffset: map['startTimeOffset'] as String,
    );
  }
}
