// ignore_for_file: unused_element, unnecessary_cast

/// A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
class VertexResponse2 {
  /// X coordinate.
  final int x;

  /// Y coordinate.
  final int y;

  VertexResponse2({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['x'] = x;
    map['y'] = y;
    return map;
  }

  factory VertexResponse2.fromMap(Map<String, dynamic> map) {
    return VertexResponse2(
      x: map['x'] as int,
      y: map['y'] as int,
    );
  }
}
