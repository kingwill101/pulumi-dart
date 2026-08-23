// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The detail of a user.
class UserSet {
  /// The description of the user.
  final pulumi.Input<String>? description;
  /// The object id of the user.
  final pulumi.Input<String>? id;
  /// The value indicating whether the user is a backup fallback approver
  final pulumi.Input<bool>? isBackup;
  /// The type of user.
  final pulumi.Input<String>? userType;

  /// Creates a new [UserSet].
  /// [description] The description of the user.
  /// [id] The object id of the user.
  /// [isBackup] The value indicating whether the user is a backup fallback approver
  /// [userType] The type of user.
  const UserSet({
    this.description,
    this.id,
    this.isBackup,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'isBackup': ?isBackup,
      'userType': ?userType,
    };
  }

  factory UserSet.fromMap(Map<String, dynamic> map) {
    return UserSet(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isBackup: (() { final guardedValue = map['isBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userType: (() { final guardedValue = map['userType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
