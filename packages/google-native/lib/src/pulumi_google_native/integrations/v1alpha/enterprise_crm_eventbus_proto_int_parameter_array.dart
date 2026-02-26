// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoIntParameterArray {
  final List<String>? intValues;

  EnterpriseCrmEventbusProtoIntParameterArray({
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

  factory EnterpriseCrmEventbusProtoIntParameterArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoIntParameterArray(
      intValues: map['intValues'] == null
          ? null
          : (map['intValues'] as List).cast<String>(),
    );
  }
}
