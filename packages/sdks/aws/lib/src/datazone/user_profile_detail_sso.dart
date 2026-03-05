// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileDetailSso {
  final pulumi.Input<String> firstName;
  final pulumi.Input<String> lastName;
  final pulumi.Input<String> userName;

  /// Creates a new [UserProfileDetailSso].
  /// [firstName] Required.
  /// [lastName] Required.
  /// [userName] Required.
  UserProfileDetailSso({
    required this.firstName,
    required this.lastName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
    };
  }

  factory UserProfileDetailSso.fromMap(Map<String, dynamic> map) {
    return UserProfileDetailSso(
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

