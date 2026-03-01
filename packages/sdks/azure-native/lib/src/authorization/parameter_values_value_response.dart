// ignore_for_file: unused_element, unnecessary_cast


/// The value of a parameter.
class ParameterValuesValueResponse {
  /// The value of the parameter.
  final dynamic value;

  /// Creates a new [ParameterValuesValueResponse].
  /// [value] The value of the parameter.
  ParameterValuesValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ParameterValuesValueResponse.fromMap(Map<String, dynamic> map) {
    return ParameterValuesValueResponse(
      value: map['value'] == null ? null : map['value'],
    );
  }
}

