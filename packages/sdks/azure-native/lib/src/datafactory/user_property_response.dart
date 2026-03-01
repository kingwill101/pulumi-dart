// ignore_for_file: unused_element, unnecessary_cast


/// User property.
class UserPropertyResponse {
  /// User property name.
  final String name;
  /// User property value. Type: string (or Expression with resultType string).
  final dynamic value;

  /// Creates a new [UserPropertyResponse].
  /// [name] User property name.
  /// [value] User property value. Type: string (or Expression with resultType string).
  UserPropertyResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory UserPropertyResponse.fromMap(Map<String, dynamic> map) {
    return UserPropertyResponse(
      name: map['name'] as String,
      value: map['value'],
    );
  }
}

