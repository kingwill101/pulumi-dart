// ignore_for_file: unused_element, unnecessary_cast

import 'auto_user_specification_response.dart';

/// Specify either the userName or autoUser property, but not both.
class UserIdentityResponse {
  /// The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  final AutoUserSpecificationResponse? autoUser;
  /// The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  final String? userName;

  /// Creates a new [UserIdentityResponse].
  /// [autoUser] The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  /// [userName] The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  UserIdentityResponse({
    this.autoUser,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUser': ?autoUser == null ? null : autoUser!.toMap(),
      'userName': ?userName,
    };
  }

  factory UserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityResponse(
      autoUser: map['autoUser'] == null ? null : AutoUserSpecificationResponse.fromMap((map['autoUser'] as Map).cast<String, dynamic>()),
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

