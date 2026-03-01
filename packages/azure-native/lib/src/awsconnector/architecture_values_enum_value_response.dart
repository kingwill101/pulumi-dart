// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ArchitectureValuesEnumValue
class ArchitectureValuesEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ArchitectureValuesEnumValueResponse].
  /// [value] Property value
  ArchitectureValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArchitectureValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ArchitectureValuesEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

