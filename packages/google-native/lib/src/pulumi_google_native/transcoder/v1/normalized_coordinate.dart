// ignore_for_file: unused_element, unnecessary_cast

/// 2D normalized coordinates. Default: `{0.0, 0.0}`
class NormalizedCoordinate {
  /// Normalized x coordinate.
  final double? x;

  /// Normalized y coordinate.
  final double? y;

  NormalizedCoordinate({
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

  factory NormalizedCoordinate.fromMap(Map<String, dynamic> map) {
    return NormalizedCoordinate(
      x: map['x'] == null ? null : map['x'] as double,
      y: map['y'] == null ? null : map['y'] as double,
    );
  }
}
