// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoStringArray {
  final List<String>? values;

  /// Creates a new [EnterpriseCrmEventbusProtoStringArray].
  /// [values] Optional.
  EnterpriseCrmEventbusProtoStringArray({
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

  factory EnterpriseCrmEventbusProtoStringArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoStringArray(
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
