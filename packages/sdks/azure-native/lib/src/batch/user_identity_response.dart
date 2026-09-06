// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_user_specification_response.dart';

/// Specify either the userName or autoUser property, but not both.
class UserIdentityResponse {
  /// The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  final pulumi.Input<AutoUserSpecificationResponse?>? autoUser;
  /// The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  final pulumi.Input<String?>? userName;

  /// Creates a new [UserIdentityResponse].
  /// [autoUser] The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  /// [userName] The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  const UserIdentityResponse({
    this.autoUser,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUser': ?pulumi.Input.mapOptionalInputValue<AutoUserSpecificationResponse, Map<String, dynamic>>(autoUser, (value) => value.toMap()),
      'userName': ?userName,
    };
  }

  factory UserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityResponse(
      autoUser: (() { final guardedValue = map['autoUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoUserSpecificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
