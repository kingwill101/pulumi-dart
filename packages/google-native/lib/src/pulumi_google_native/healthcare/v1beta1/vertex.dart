// ignore_for_file: unused_element, unnecessary_cast

/// A 2D coordinate in an image. The origin is the top-left.
class Vertex {
  /// X coordinate.
  final double? x;

  /// Y coordinate.
  final double? y;

  Vertex({
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

  factory Vertex.fromMap(Map<String, dynamic> map) {
    return Vertex(
      x: map['x'] == null ? null : map['x'] as double,
      y: map['y'] == null ? null : map['y'] as double,
    );
  }
}
