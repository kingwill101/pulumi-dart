// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Visual position of the entity
class EntityCoordinates {
  /// X Coordinate
  final pulumi.Input<double> x;

  /// Y Coordinate
  final pulumi.Input<double> y;

  /// Creates a new [EntityCoordinates].
  /// [x] X Coordinate
  /// [y] Y Coordinate
  EntityCoordinates({required this.x, required this.y});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'x': x, 'y': y};
  }

  factory EntityCoordinates.fromMap(Map<String, dynamic> map) {
    return EntityCoordinates(
      x: pulumi.Input.fromValue(map['x'] as double),
      y: pulumi.Input.fromValue(map['y'] as double),
    );
  }
}
