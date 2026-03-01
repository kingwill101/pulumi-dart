// ignore_for_file: unused_element, unnecessary_cast

class JobConfigOverlayAnimationAnimationFadeXy {
  /// Normalized x coordinate.
  final double? x;

  /// Normalized y coordinate.
  final double? y;

  /// Creates a new [JobConfigOverlayAnimationAnimationFadeXy].
  /// [x] Normalized x coordinate.
  /// [y] Normalized y coordinate.
  JobConfigOverlayAnimationAnimationFadeXy({this.x, this.y});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'x': ?x, 'y': ?y};
  }

  factory JobConfigOverlayAnimationAnimationFadeXy.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobConfigOverlayAnimationAnimationFadeXy(
      x: map['x'] == null ? null : map['x'] as double,
      y: map['y'] == null ? null : map['y'] as double,
    );
  }
}
