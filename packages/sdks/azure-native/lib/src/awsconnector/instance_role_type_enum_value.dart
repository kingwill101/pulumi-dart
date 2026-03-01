// ignore_for_file: unused_element, unnecessary_cast


/// Definition of InstanceRoleTypeEnumValue
class InstanceRoleTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [InstanceRoleTypeEnumValue].
  /// [value] Property value
  InstanceRoleTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceRoleTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceRoleTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

