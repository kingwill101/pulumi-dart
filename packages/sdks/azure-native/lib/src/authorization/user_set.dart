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
  UserSet({
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      isBackup: map['isBackup'] == null ? null : (map['isBackup'] as bool).input(),
      userType: map['userType'] == null ? null : (map['userType'] as String).input(),
    );
  }
}

