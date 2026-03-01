// ignore_for_file: unused_element, unnecessary_cast


/// Parameter example.
class ParameterExampleContract {
  /// Long description for the example
  final String? description;
  /// A URL that points to the literal example
  final String? externalValue;
  /// Short description for the example
  final String? summary;
  /// Example value. May be a primitive value, or an object.
  final dynamic value;

  /// Creates a new [ParameterExampleContract].
  /// [description] Long description for the example
  /// [externalValue] A URL that points to the literal example
  /// [summary] Short description for the example
  /// [value] Example value. May be a primitive value, or an object.
  ParameterExampleContract({
    this.description,
    this.externalValue,
    this.summary,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'externalValue': ?externalValue,
      'summary': ?summary,
      'value': ?value,
    };
  }

  factory ParameterExampleContract.fromMap(Map<String, dynamic> map) {
    return ParameterExampleContract(
      description: map['description'] == null ? null : map['description'] as String,
      externalValue: map['externalValue'] == null ? null : map['externalValue'] as String,
      summary: map['summary'] == null ? null : map['summary'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

