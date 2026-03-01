// ignore_for_file: unused_element, unnecessary_cast


/// Definition of statusTypeEnumValue
class StatusTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [StatusTypeEnumValueResponse].
  /// [value] Property value
  StatusTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory StatusTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return StatusTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

