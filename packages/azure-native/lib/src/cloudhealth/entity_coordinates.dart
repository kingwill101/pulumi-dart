// ignore_for_file: unused_element, unnecessary_cast


/// Visual position of the entity
class EntityCoordinates {
  /// X Coordinate
  final double x;
  /// Y Coordinate
  final double y;

  /// Creates a new [EntityCoordinates].
  /// [x] X Coordinate
  /// [y] Y Coordinate
  EntityCoordinates({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    };
  }

  factory EntityCoordinates.fromMap(Map<String, dynamic> map) {
    return EntityCoordinates(
      x: map['x'] as double,
      y: map['y'] as double,
    );
  }
}

