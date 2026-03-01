// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ContinuousBackupsStatusEnumValue
class ContinuousBackupsStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ContinuousBackupsStatusEnumValueResponse].
  /// [value] Property value
  ContinuousBackupsStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ContinuousBackupsStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupsStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

