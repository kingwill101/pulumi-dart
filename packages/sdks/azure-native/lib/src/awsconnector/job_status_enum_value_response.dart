// ignore_for_file: unused_element, unnecessary_cast


/// Definition of JobStatusEnumValue
class JobStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [JobStatusEnumValueResponse].
  /// [value] Property value
  JobStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return JobStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

