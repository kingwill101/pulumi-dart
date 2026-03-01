// ignore_for_file: unused_element, unnecessary_cast


/// Definition of a single variable for a Pipeline.
class VariableSpecification {
  /// Default value of variable.
  final dynamic defaultValue;
  /// Variable type.
  final String type;

  /// Creates a new [VariableSpecification].
  /// [defaultValue] Default value of variable.
  /// [type] Variable type.
  VariableSpecification({
    this.defaultValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'type': type,
    };
  }

  factory VariableSpecification.fromMap(Map<String, dynamic> map) {
    return VariableSpecification(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'],
      type: map['type'] as String,
    );
  }
}

