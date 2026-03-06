// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User property.
class UserProperty {
  /// User property name.
  final pulumi.Input<String> name;
  /// User property value. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> value;

  /// Creates a new [UserProperty].
  /// [name] User property name.
  /// [value] User property value. Type: string (or Expression with resultType string).
  const UserProperty({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}

