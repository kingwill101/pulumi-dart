// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUserPhoneNumber {
  /// When `true`, this is the primary phone number associated with the user.
  final pulumi.Input<bool> primary;
  /// Type of phone number.
  final pulumi.Input<String> type;
  /// User's phone number.
  final pulumi.Input<String> value;

  /// Creates a new [GetUsersUserPhoneNumber].
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [type] Type of phone number.
  /// [value] User's phone number.
  GetUsersUserPhoneNumber({
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

  factory GetUsersUserPhoneNumber.fromMap(Map<String, dynamic> map) {
    return GetUsersUserPhoneNumber(
      primary: (map['primary'] as bool).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

