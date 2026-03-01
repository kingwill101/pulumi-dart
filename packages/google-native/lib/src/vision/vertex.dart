// ignore_for_file: unused_element, unnecessary_cast

/// A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
class Vertex {
  /// X coordinate.
  final int? x;

  /// Y coordinate.
  final int? y;

  /// Creates a new [Vertex].
  /// [x] X coordinate.
  /// [y] Y coordinate.
  Vertex({this.x, this.y});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'x': ?x, 'y': ?y};
  }

  factory Vertex.fromMap(Map<String, dynamic> map) {
    return Vertex(
      x: map['x'] == null ? null : map['x'] as int,
      y: map['y'] == null ? null : map['y'] as int,
    );
  }
}
