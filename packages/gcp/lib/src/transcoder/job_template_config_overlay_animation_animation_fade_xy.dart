// ignore_for_file: unused_element, unnecessary_cast


class JobTemplateConfigOverlayAnimationAnimationFadeXy {
  /// Normalized x coordinate.
  final double? x;
  /// Normalized y coordinate.
  final double? y;

  /// Creates a new [JobTemplateConfigOverlayAnimationAnimationFadeXy].
  /// [x] Normalized x coordinate.
  /// [y] Normalized y coordinate.
  JobTemplateConfigOverlayAnimationAnimationFadeXy({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory JobTemplateConfigOverlayAnimationAnimationFadeXy.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOverlayAnimationAnimationFadeXy(
      x: map['x'] == null ? null : map['x'] as double,
      y: map['y'] == null ? null : map['y'] as double,
    );
  }
}

