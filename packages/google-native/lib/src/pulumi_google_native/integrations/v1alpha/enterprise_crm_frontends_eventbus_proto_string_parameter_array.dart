// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoStringParameterArray {
  final List<String>? stringValues;

  EnterpriseCrmFrontendsEventbusProtoStringParameterArray({
    this.stringValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stringValuesValue = stringValues;
    if (stringValuesValue != null) {
      map['stringValues'] = stringValuesValue;
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoStringParameterArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoStringParameterArray(
      stringValues: map['stringValues'] == null
          ? null
          : (map['stringValues'] as List).cast<String>(),
    );
  }
}
