// ignore_for_file: unused_element, unnecessary_cast

/// A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
class VertexVisionV1 {
  /// X coordinate.
  final int? x;

  /// Y coordinate.
  final int? y;

  VertexVisionV1({
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

  factory VertexVisionV1.fromMap(Map<String, dynamic> map) {
    return VertexVisionV1(
      x: map['x'] == null ? null : map['x'] as int,
      y: map['y'] == null ? null : map['y'] as int,
    );
  }
}
