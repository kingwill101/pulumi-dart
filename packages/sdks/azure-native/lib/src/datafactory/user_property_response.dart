// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User property.
class UserPropertyResponse {
  /// User property name.
  final pulumi.Input<String> name;
  /// User property value. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> value;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}

