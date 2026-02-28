// ignore_for_file: unused_element, unnecessary_cast


/// A 2D coordinate in an image. The origin is the top-left.
class VertexResponse {
  /// X coordinate.
  final double x;
  /// Y coordinate.
  final double y;

  /// Creates a new [VertexResponse].
  /// [x] X coordinate.
  /// [y] Y coordinate.
  VertexResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    };
  }

  factory VertexResponse.fromMap(Map<String, dynamic> map) {
    return VertexResponse(
      x: map['x'] as double,
      y: map['y'] as double,
    );
  }
}

