// ignore_for_file: unused_element, unnecessary_cast


/// Definition of StatusNameEnumValue
class StatusNameEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [StatusNameEnumValueResponse].
  /// [value] Property value
  StatusNameEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory StatusNameEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return StatusNameEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

