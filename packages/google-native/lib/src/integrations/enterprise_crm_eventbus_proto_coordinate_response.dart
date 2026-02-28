// ignore_for_file: unused_element, unnecessary_cast

/// Represents two-dimensional positions.
class EnterpriseCrmEventbusProtoCoordinateResponse {
  final int x;
  final int y;

  /// Creates a new [EnterpriseCrmEventbusProtoCoordinateResponse].
  /// [x] Required.
  /// [y] Required.
  EnterpriseCrmEventbusProtoCoordinateResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['x'] = x;
    map['y'] = y;
    return map;
  }

  factory EnterpriseCrmEventbusProtoCoordinateResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCoordinateResponse(
      x: map['x'] as int,
      y: map['y'] as int,
    );
  }
}
