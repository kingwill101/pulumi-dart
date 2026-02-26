// ignore_for_file: unused_element, unnecessary_cast

/// A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudDocumentaiV1VertexResponse {
  /// X coordinate.
  final int x;

  /// Y coordinate (starts from the top of the image).
  final int y;

  GoogleCloudDocumentaiV1VertexResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['x'] = x;
    map['y'] = y;
    return map;
  }

  factory GoogleCloudDocumentaiV1VertexResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1VertexResponse(
      x: map['x'] as int,
      y: map['y'] as int,
    );
  }
}
