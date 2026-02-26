// ignore_for_file: unused_element, unnecessary_cast

class StreamProcessorRegionsOfInterestPolygon {
  /// The value of the X coordinate for a point on a Polygon.
  final double? x;

  /// The value of the Y coordinate for a point on a Polygon.
  final double? y;

  StreamProcessorRegionsOfInterestPolygon({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final xValue = x;
    if (xValue != null) {
      map['x'] = xValue;
    }
    final yValue = y;
    if (yValue != null) {
      map['y'] = yValue;
    }
    return map;
  }

  factory StreamProcessorRegionsOfInterestPolygon.fromMap(
      Map<String, dynamic> map) {
    return StreamProcessorRegionsOfInterestPolygon(
      x: map['x'] == null ? null : map['x'] as double,
      y: map['y'] == null ? null : map['y'] as double,
    );
  }
}
