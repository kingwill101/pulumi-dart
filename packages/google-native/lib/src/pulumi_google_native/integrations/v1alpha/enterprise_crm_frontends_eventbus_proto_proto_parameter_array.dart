// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoProtoParameterArray {
  final List<Map<String, String>>? protoValues;

  EnterpriseCrmFrontendsEventbusProtoProtoParameterArray({
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

  factory EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoProtoParameterArray(
      protoValues: map['protoValues'] == null
          ? null
          : (map['protoValues'] as List).cast<Map<String, String>>(),
    );
  }
}
