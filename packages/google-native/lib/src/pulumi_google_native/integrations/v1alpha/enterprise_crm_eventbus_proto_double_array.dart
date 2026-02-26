// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoDoubleArray {
  final List<double>? values;

  EnterpriseCrmEventbusProtoDoubleArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoDoubleArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoDoubleArray(
      values:
          map['values'] == null ? null : (map['values'] as List).cast<double>(),
    );
  }
}
