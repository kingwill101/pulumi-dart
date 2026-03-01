// ignore_for_file: unused_element, unnecessary_cast


/// Definition of a single parameter for an entity.
class GlobalParameterSpecificationResponse {
  /// Global Parameter type.
  final String type;
  /// Value of parameter.
  final dynamic value;

  /// Creates a new [GlobalParameterSpecificationResponse].
  /// [type] Global Parameter type.
  /// [value] Value of parameter.
  GlobalParameterSpecificationResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GlobalParameterSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return GlobalParameterSpecificationResponse(
      type: map['type'] as String,
      value: map['value'],
    );
  }
}

