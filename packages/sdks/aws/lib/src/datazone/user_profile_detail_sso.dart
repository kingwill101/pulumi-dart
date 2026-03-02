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
      firstName: (map['firstName'] as String).input(),
      lastName: (map['lastName'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

