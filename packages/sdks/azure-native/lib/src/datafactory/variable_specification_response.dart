// ignore_for_file: unused_element, unnecessary_cast


/// Definition of a single variable for a Pipeline.
class VariableSpecificationResponse {
  /// Default value of variable.
  final dynamic defaultValue;
  /// Variable type.
  final String type;

  /// Creates a new [VariableSpecificationResponse].
  /// [defaultValue] Default value of variable.
  /// [type] Variable type.
  VariableSpecificationResponse({
    this.defaultValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'type': type,
    };
  }

  factory VariableSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return VariableSpecificationResponse(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'],
      type: map['type'] as String,
    );
  }
}

