// ignore_for_file: unused_element, unnecessary_cast

class WireGroupWireGroupProperties {
  /// Type of wire group (enum).
  /// WIRE: a single pseudowire over two Interconnect connections   with no redundancy.
  /// REDUNDANT: two pseudowires over four Interconnect connections, with two connections in one metro and two connections in another metro.
  /// BOX_AND_CROSS: four pseudowires over four Interconnect connections, with two connections in one metro and two connections in another metro.
  final String? type;

  /// Creates a new [WireGroupWireGroupProperties].
  /// [type] Type of wire group (enum).
  WireGroupWireGroupProperties({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory WireGroupWireGroupProperties.fromMap(Map<String, dynamic> map) {
    return WireGroupWireGroupProperties(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
