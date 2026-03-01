// ignore_for_file: unused_element, unnecessary_cast

import 'auto_user_specification.dart';

/// Specify either the userName or autoUser property, but not both.
class UserIdentity {
  /// The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  final AutoUserSpecification? autoUser;
  /// The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  final String? userName;

  /// Creates a new [UserIdentity].
  /// [autoUser] The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  /// [userName] The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  UserIdentity({
    this.autoUser,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUser': ?autoUser == null ? null : autoUser!.toMap(),
      'userName': ?userName,
    };
  }

  factory UserIdentity.fromMap(Map<String, dynamic> map) {
    return UserIdentity(
      autoUser: map['autoUser'] == null ? null : AutoUserSpecification.fromMap((map['autoUser'] as Map).cast<String, dynamic>()),
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

