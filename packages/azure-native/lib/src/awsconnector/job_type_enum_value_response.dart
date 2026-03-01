// ignore_for_file: unused_element, unnecessary_cast


/// Definition of JobTypeEnumValue
class JobTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [JobTypeEnumValueResponse].
  /// [value] Property value
  JobTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return JobTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

