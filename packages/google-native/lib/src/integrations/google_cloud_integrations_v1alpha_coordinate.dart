// ignore_for_file: unused_element, unnecessary_cast

/// Configuration detail of coordinate, it used for UI
class GoogleCloudIntegrationsV1alphaCoordinate {
  /// X axis of the coordinate
  final int x;

  /// Y axis of the coordinate
  final int y;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCoordinate].
  /// [x] X axis of the coordinate
  /// [y] Y axis of the coordinate
  GoogleCloudIntegrationsV1alphaCoordinate({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['x'] = x;
    map['y'] = y;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaCoordinate.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCoordinate(
      x: map['x'] as int,
      y: map['y'] as int,
    );
  }
}
