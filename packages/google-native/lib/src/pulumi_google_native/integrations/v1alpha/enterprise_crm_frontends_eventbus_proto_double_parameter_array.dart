// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray {
  final List<double>? doubleValues;

  EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray({
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

  factory EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray(
      doubleValues: map['doubleValues'] == null
          ? null
          : (map['doubleValues'] as List).cast<double>(),
    );
  }
}
