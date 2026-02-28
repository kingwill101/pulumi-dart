// ignore_for_file: unused_element, unnecessary_cast


/// 2D normalized coordinates. Default: `{0.0, 0.0}`
class NormalizedCoordinateResponse {
  /// Normalized x coordinate.
  final double x;
  /// Normalized y coordinate.
  final double y;

  /// Creates a new [NormalizedCoordinateResponse].
  /// [x] Normalized x coordinate.
  /// [y] Normalized y coordinate.
  NormalizedCoordinateResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    };
  }

  factory NormalizedCoordinateResponse.fromMap(Map<String, dynamic> map) {
    return NormalizedCoordinateResponse(
      x: map['x'] as double,
      y: map['y'] as double,
    );
  }
}

