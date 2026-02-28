// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoDoubleParameterArray {
  final List<double>? doubleValues;

  /// Creates a new [EnterpriseCrmEventbusProtoDoubleParameterArray].
  /// [doubleValues] Optional.
  EnterpriseCrmEventbusProtoDoubleParameterArray({
    this.doubleValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final doubleValuesValue = doubleValues;
    if (doubleValuesValue != null) {
      map['doubleValues'] = doubleValuesValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoDoubleParameterArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoDoubleParameterArray(
      doubleValues: map['doubleValues'] == null
          ? null
          : (map['doubleValues'] as List).cast<double>(),
    );
  }
}
