// ignore_for_file: unused_element, unnecessary_cast

/// A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
class GoogleCloudDocumentaiV1NormalizedVertex {
  /// X coordinate.
  final double? x;

  /// Y coordinate (starts from the top of the image).
  final double? y;

  /// Creates a new [GoogleCloudDocumentaiV1NormalizedVertex].
  /// [x] X coordinate.
  /// [y] Y coordinate (starts from the top of the image).
  GoogleCloudDocumentaiV1NormalizedVertex({
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

  factory GoogleCloudDocumentaiV1NormalizedVertex.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1NormalizedVertex(
      x: map['x'] == null ? null : map['x'] as double,
      y: map['y'] == null ? null : map['y'] as double,
    );
  }
}
