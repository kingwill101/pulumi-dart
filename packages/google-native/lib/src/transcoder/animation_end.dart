// ignore_for_file: unused_element, unnecessary_cast

/// End previous overlay animation from the video. Without `AnimationEnd`, the overlay object will keep the state of previous animation until the end of the video.
class AnimationEnd {
  /// The time to end overlay object, in seconds. Default: 0
  final String? startTimeOffset;

  /// Creates a new [AnimationEnd].
  /// [startTimeOffset] The time to end overlay object, in seconds. Default: 0
  AnimationEnd({this.startTimeOffset});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'startTimeOffset': ?startTimeOffset};
  }

  factory AnimationEnd.fromMap(Map<String, dynamic> map) {
    return AnimationEnd(
      startTimeOffset: map['startTimeOffset'] == null
          ? null
          : map['startTimeOffset'] as String,
    );
  }
}
