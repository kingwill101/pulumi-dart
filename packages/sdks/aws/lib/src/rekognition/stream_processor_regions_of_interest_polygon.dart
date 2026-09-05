// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamProcessorRegionsOfInterestPolygon {
  /// Value of the X coordinate for a point on a Polygon.
  final pulumi.Input<double?>? x;
  /// Value of the Y coordinate for a point on a Polygon.
  final pulumi.Input<double?>? y;

  /// Creates a new [StreamProcessorRegionsOfInterestPolygon].
  /// [x] Value of the X coordinate for a point on a Polygon.
  /// [y] Value of the Y coordinate for a point on a Polygon.
  const StreamProcessorRegionsOfInterestPolygon({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory StreamProcessorRegionsOfInterestPolygon.fromMap(Map<String, dynamic> map) {
    return StreamProcessorRegionsOfInterestPolygon(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
