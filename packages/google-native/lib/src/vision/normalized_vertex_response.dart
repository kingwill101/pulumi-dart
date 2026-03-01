// ignore_for_file: unused_element, unnecessary_cast

/// A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
class NormalizedVertexResponse {
  /// X coordinate.
  final double x;

  /// Y coordinate.
  final double y;

  /// Creates a new [NormalizedVertexResponse].
  /// [x] X coordinate.
  /// [y] Y coordinate.
  NormalizedVertexResponse({required this.x, required this.y});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'x': x, 'y': y};
  }

  factory NormalizedVertexResponse.fromMap(Map<String, dynamic> map) {
    return NormalizedVertexResponse(
      x: map['x'] as double,
      y: map['y'] as double,
    );
  }
}
