// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Visual position of the entity
class EntityCoordinatesResponse {
  /// X Coordinate
  final pulumi.Input<double> x;
  /// Y Coordinate
  final pulumi.Input<double> y;

  /// Creates a new [EntityCoordinatesResponse].
  /// [x] X Coordinate
  /// [y] Y Coordinate
  const EntityCoordinatesResponse({
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
      x: pulumi.Input.fromValue(map['x'] as double),
      y: pulumi.Input.fromValue(map['y'] as double),
    );
  }
}
