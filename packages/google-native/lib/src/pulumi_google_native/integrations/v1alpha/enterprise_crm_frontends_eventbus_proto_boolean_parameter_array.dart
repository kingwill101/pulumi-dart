// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray {
  final List<bool>? booleanValues;

  EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray({
    this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanValuesValue = booleanValues;
    if (booleanValuesValue != null) {
      map['booleanValues'] = booleanValuesValue;
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray(
      booleanValues: map['booleanValues'] == null
          ? null
          : (map['booleanValues'] as List).cast<bool>(),
    );
  }
}
