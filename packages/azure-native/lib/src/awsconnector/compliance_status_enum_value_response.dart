// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ComplianceStatusEnumValue
class ComplianceStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ComplianceStatusEnumValueResponse].
  /// [value] Property value
  ComplianceStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ComplianceStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ComplianceStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

