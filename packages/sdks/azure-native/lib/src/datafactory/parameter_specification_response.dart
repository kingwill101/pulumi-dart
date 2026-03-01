// ignore_for_file: unused_element, unnecessary_cast


/// Definition of a single parameter for an entity.
class ParameterSpecificationResponse {
  /// Default value of parameter.
  final dynamic defaultValue;
  /// Parameter type.
  final String type;

  /// Creates a new [ParameterSpecificationResponse].
  /// [defaultValue] Default value of parameter.
  /// [type] Parameter type.
  ParameterSpecificationResponse({
    this.defaultValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'type': type,
    };
  }

  factory ParameterSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return ParameterSpecificationResponse(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'],
      type: map['type'] as String,
    );
  }
}

