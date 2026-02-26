// ignore_for_file: unused_element, unnecessary_cast

/// Configuration detail of coordinate, it used for UI
class GoogleCloudIntegrationsV1alphaCoordinateResponse {
  /// X axis of the coordinate
  final int x;

  /// Y axis of the coordinate
  final int y;

  GoogleCloudIntegrationsV1alphaCoordinateResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['x'] = x;
    map['y'] = y;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaCoordinateResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCoordinateResponse(
      x: map['x'] as int,
      y: map['y'] as int,
    );
  }
}
