// ignore_for_file: unused_element, unnecessary_cast


/// Definition of a single parameter for an entity.
class ParameterSpecification {
  /// Default value of parameter.
  final dynamic defaultValue;
  /// Parameter type.
  final String type;

  /// Creates a new [ParameterSpecification].
  /// [defaultValue] Default value of parameter.
  /// [type] Parameter type.
  ParameterSpecification({
    this.defaultValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'type': type,
    };
  }

  factory ParameterSpecification.fromMap(Map<String, dynamic> map) {
    return ParameterSpecification(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'],
      type: map['type'] as String,
    );
  }
}

