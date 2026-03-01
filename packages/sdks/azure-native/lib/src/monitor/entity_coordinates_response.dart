// ignore_for_file: unused_element, unnecessary_cast


/// Visual position of the entity
class EntityCoordinatesResponse {
  /// X Coordinate
  final double x;
  /// Y Coordinate
  final double y;

  /// Creates a new [EntityCoordinatesResponse].
  /// [x] X Coordinate
  /// [y] Y Coordinate
  EntityCoordinatesResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    };
  }

  factory EntityCoordinatesResponse.fromMap(Map<String, dynamic> map) {
    return EntityCoordinatesResponse(
      x: map['x'] as double,
      y: map['y'] as double,
    );
  }
}

