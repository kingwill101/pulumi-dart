// ignore_for_file: unused_element, unnecessary_cast


/// User property.
class UserProperty {
  /// User property name.
  final String name;
  /// User property value. Type: string (or Expression with resultType string).
  final dynamic value;

  /// Creates a new [UserProperty].
  /// [name] User property name.
  /// [value] User property value. Type: string (or Expression with resultType string).
  UserProperty({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory UserProperty.fromMap(Map<String, dynamic> map) {
    return UserProperty(
      name: map['name'] as String,
      value: map['value'],
    );
  }
}

