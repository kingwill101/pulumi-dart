// ignore_for_file: unused_element, unnecessary_cast


/// Definition of a single parameter for an entity.
class GlobalParameterSpecification {
  /// Global Parameter type.
  final String type;
  /// Value of parameter.
  final dynamic value;

  /// Creates a new [GlobalParameterSpecification].
  /// [type] Global Parameter type.
  /// [value] Value of parameter.
  GlobalParameterSpecification({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GlobalParameterSpecification.fromMap(Map<String, dynamic> map) {
    return GlobalParameterSpecification(
      type: map['type'] as String,
      value: map['value'],
    );
  }
}

