// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PermissionEnumValue
class PermissionEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [PermissionEnumValue].
  /// [value] Property value
  PermissionEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PermissionEnumValue.fromMap(Map<String, dynamic> map) {
    return PermissionEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

