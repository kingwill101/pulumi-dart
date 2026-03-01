// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ImdsSupportValuesEnumValue
class ImdsSupportValuesEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ImdsSupportValuesEnumValueResponse].
  /// [value] Property value
  ImdsSupportValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ImdsSupportValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ImdsSupportValuesEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

