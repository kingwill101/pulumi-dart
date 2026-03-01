// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ComplianceSeverityEnumValue
class ComplianceSeverityEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ComplianceSeverityEnumValue].
  /// [value] Property value
  ComplianceSeverityEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ComplianceSeverityEnumValue.fromMap(Map<String, dynamic> map) {
    return ComplianceSeverityEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

