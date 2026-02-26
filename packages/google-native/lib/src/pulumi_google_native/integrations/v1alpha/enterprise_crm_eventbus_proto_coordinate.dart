// ignore_for_file: unused_element, unnecessary_cast

/// Represents two-dimensional positions.
class EnterpriseCrmEventbusProtoCoordinate {
  final int? x;
  final int? y;

  EnterpriseCrmEventbusProtoCoordinate({
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

  factory EnterpriseCrmEventbusProtoCoordinate.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCoordinate(
      x: map['x'] == null ? null : map['x'] as int,
      y: map['y'] == null ? null : map['y'] as int,
    );
  }
}
