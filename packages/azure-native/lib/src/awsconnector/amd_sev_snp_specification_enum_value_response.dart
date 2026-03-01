// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AmdSevSnpSpecificationEnumValue
class AmdSevSnpSpecificationEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [AmdSevSnpSpecificationEnumValueResponse].
  /// [value] Property value
  AmdSevSnpSpecificationEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AmdSevSnpSpecificationEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AmdSevSnpSpecificationEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

