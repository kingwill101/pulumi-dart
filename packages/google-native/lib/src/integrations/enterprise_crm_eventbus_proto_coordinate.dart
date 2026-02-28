// ignore_for_file: unused_element, unnecessary_cast


/// Represents two-dimensional positions.
class EnterpriseCrmEventbusProtoCoordinate {
  final int? x;
  final int? y;

  /// Creates a new [EnterpriseCrmEventbusProtoCoordinate].
  /// [x] Optional.
  /// [y] Optional.
  EnterpriseCrmEventbusProtoCoordinate({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory EnterpriseCrmEventbusProtoCoordinate.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCoordinate(
      x: map['x'] == null ? null : map['x'] as int,
      y: map['y'] == null ? null : map['y'] as int,
    );
  }
}

