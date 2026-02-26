// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoProtoParameterArray {
  final List<Map<String, String>>? protoValues;

  EnterpriseCrmEventbusProtoProtoParameterArray({
    this.protoValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final protoValuesValue = protoValues;
    if (protoValuesValue != null) {
      map['protoValues'] = protoValuesValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoProtoParameterArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoProtoParameterArray(
      protoValues: map['protoValues'] == null
          ? null
          : (map['protoValues'] as List).cast<Map<String, String>>(),
    );
  }
}
