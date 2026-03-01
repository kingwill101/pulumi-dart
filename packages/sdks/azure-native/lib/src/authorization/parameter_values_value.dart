// ignore_for_file: unused_element, unnecessary_cast


/// The value of a parameter.
class ParameterValuesValue {
  /// The value of the parameter.
  final dynamic value;

  /// Creates a new [ParameterValuesValue].
  /// [value] The value of the parameter.
  ParameterValuesValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ParameterValuesValue.fromMap(Map<String, dynamic> map) {
    return ParameterValuesValue(
      value: map['value'] == null ? null : map['value'],
    );
  }
}

