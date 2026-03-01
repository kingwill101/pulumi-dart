// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AmdSevSnpSpecificationEnumValue
class AmdSevSnpSpecificationEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [AmdSevSnpSpecificationEnumValue].
  /// [value] Property value
  AmdSevSnpSpecificationEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AmdSevSnpSpecificationEnumValue.fromMap(Map<String, dynamic> map) {
    return AmdSevSnpSpecificationEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

