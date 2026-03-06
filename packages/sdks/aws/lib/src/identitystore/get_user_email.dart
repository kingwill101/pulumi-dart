// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserEmail {
  /// When `true`, this is the primary phone number associated with the user.
  final pulumi.Input<bool> primary;
  /// The type of phone number.
  final pulumi.Input<String> type;
  /// The user's phone number.
  final pulumi.Input<String> value;

  /// Creates a new [GetUserEmail].
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [type] The type of phone number.
  /// [value] The user's phone number.
  const GetUserEmail({
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

  factory GetUserEmail.fromMap(Map<String, dynamic> map) {
    return GetUserEmail(
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

