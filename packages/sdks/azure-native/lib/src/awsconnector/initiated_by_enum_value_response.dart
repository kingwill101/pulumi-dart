// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InitiatedByEnumValue
class InitiatedByEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [InitiatedByEnumValueResponse].
  /// [value] Property value
  InitiatedByEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InitiatedByEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InitiatedByEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

