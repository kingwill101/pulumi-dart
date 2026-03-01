// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RRTypeEnumValue
class RRTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [RRTypeEnumValueResponse].
  /// [value] Property value
  RRTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RRTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return RRTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

