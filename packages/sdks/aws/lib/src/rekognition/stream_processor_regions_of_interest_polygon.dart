// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamProcessorRegionsOfInterestPolygon {
  /// The value of the X coordinate for a point on a Polygon.
  final pulumi.Input<double>? x;
  /// The value of the Y coordinate for a point on a Polygon.
  final pulumi.Input<double>? y;

  /// Creates a new [StreamProcessorRegionsOfInterestPolygon].
  /// [x] The value of the X coordinate for a point on a Polygon.
  /// [y] The value of the Y coordinate for a point on a Polygon.
  StreamProcessorRegionsOfInterestPolygon({
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
      x: map['x'] == null ? null : ((map['x'] as double).input()).input(),
      y: map['y'] == null ? null : ((map['y'] as double).input()).input(),
    );
  }
}

