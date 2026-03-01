// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ConfigChangeStatusEnumValue
class ConfigChangeStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ConfigChangeStatusEnumValueResponse].
  /// [value] Property value
  ConfigChangeStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ConfigChangeStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ConfigChangeStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

