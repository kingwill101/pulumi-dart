// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigOverlayAnimationAnimationFadeXy {
  /// Normalized x coordinate.
  final double? x;

  /// Normalized y coordinate.
  final double? y;

  JobTemplateConfigOverlayAnimationAnimationFadeXy({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final xValue = x;
    if (xValue != null) {
      map['x'] = xValue;
    }
    final yValue = y;
    if (yValue != null) {
      map['y'] = yValue;
    }
    return map;
  }

  factory JobTemplateConfigOverlayAnimationAnimationFadeXy.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateConfigOverlayAnimationAnimationFadeXy(
      x: map['x'] == null ? null : map['x'] as double,
      y: map['y'] == null ? null : map['y'] as double,
    );
  }
}
