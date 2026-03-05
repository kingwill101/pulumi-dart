// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUserEmail {
  /// When `true`, this is the primary phone number associated with the user.
  final pulumi.Input<bool> primary;
  /// Type of phone number.
  final pulumi.Input<String> type;
  /// User's phone number.
  final pulumi.Input<String> value;

  /// Creates a new [GetUsersUserEmail].
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [type] Type of phone number.
  /// [value] User's phone number.
  GetUsersUserEmail({
    required this.primary,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': primary,
      'type': type,
      'value': value,
    };
  }

  factory GetUsersUserEmail.fromMap(Map<String, dynamic> map) {
    return GetUsersUserEmail(
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

