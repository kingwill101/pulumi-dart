// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoBooleanParameterArray {
  final List<bool>? booleanValues;

  /// Creates a new [EnterpriseCrmEventbusProtoBooleanParameterArray].
  /// [booleanValues] Optional.
  EnterpriseCrmEventbusProtoBooleanParameterArray({this.booleanValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'booleanValues': ?booleanValues};
  }

  factory EnterpriseCrmEventbusProtoBooleanParameterArray.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoBooleanParameterArray(
      booleanValues: map['booleanValues'] == null
          ? null
          : (map['booleanValues'] as List).cast<bool>(),
    );
  }
}
