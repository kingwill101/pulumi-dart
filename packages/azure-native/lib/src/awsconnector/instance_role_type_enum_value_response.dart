// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceRoleTypeEnumValue
class InstanceRoleTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [InstanceRoleTypeEnumValueResponse].
  /// [value] Property value
  InstanceRoleTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceRoleTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceRoleTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

