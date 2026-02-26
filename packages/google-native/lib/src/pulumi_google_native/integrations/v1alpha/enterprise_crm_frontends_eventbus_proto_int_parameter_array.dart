// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoIntParameterArray {
  final List<String>? intValues;

  EnterpriseCrmFrontendsEventbusProtoIntParameterArray({
    this.intValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final intValuesValue = intValues;
    if (intValuesValue != null) {
      map['intValues'] = intValuesValue;
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoIntParameterArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoIntParameterArray(
      intValues: map['intValues'] == null
          ? null
          : (map['intValues'] as List).cast<String>(),
    );
  }
}
