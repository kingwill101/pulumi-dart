// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoBooleanParameterArray {
  final List<bool>? booleanValues;

  /// Creates a new [EnterpriseCrmEventbusProtoBooleanParameterArray].
  /// [booleanValues] Optional.
  EnterpriseCrmEventbusProtoBooleanParameterArray({
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

  factory EnterpriseCrmEventbusProtoBooleanParameterArray.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBooleanParameterArray(
      booleanValues: map['booleanValues'] == null
          ? null
          : (map['booleanValues'] as List).cast<bool>(),
    );
  }
}
