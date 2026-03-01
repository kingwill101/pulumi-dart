// ignore_for_file: unused_element, unnecessary_cast


/// Specification of the configurations.
class SpecificationResponse {
  /// Name of the specification.
  final String name;
  /// Value of the specification.
  final String value;

  /// Creates a new [SpecificationResponse].
  /// [name] Name of the specification.
  /// [value] Value of the specification.
  SpecificationResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SpecificationResponse.fromMap(Map<String, dynamic> map) {
    return SpecificationResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

