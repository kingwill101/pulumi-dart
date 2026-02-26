// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoIntArray {
  final List<String>? values;

  EnterpriseCrmEventbusProtoIntArray({
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

  factory EnterpriseCrmEventbusProtoIntArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoIntArray(
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
