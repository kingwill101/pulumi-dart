// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PermissionEnumValue
class PermissionEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [PermissionEnumValueResponse].
  /// [value] Property value
  PermissionEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PermissionEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PermissionEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

