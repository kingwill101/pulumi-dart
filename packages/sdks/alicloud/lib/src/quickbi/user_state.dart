// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Alibaba Cloud account ID.
  final pulumi.Input<String>? accountId;
  /// An Alibaba Cloud account, Alibaba Cloud name.
  final pulumi.Input<String>? accountName;
  /// Whether it is the administrator. Valid values: `true` and `false`.
  final pulumi.Input<bool>? adminUser;
  /// Whether this is a permissions administrator. Valid values: `false`, `true`.
  final pulumi.Input<bool>? authAdminUser;
  /// The nickname of the user.
  final pulumi.Input<String>? nickName;
  /// The members of the organization of the type of role separately. Valid values: `Analyst`, `Developer` and `Visitor`.
  final pulumi.Input<String>? userType;

  /// Creates a new [UserState].
  /// [accountId] Alibaba Cloud account ID.
  /// [accountName] An Alibaba Cloud account, Alibaba Cloud name.
  /// [adminUser] Whether it is the administrator. Valid values: `true` and `false`.
  /// [authAdminUser] Whether this is a permissions administrator. Valid values: `false`, `true`.
  /// [nickName] The nickname of the user.
  /// [userType] The members of the organization of the type of role separately. Valid values: `Analyst`, `Developer` and `Visitor`.
  UserState({
    this.accountId,
    this.accountName,
    this.adminUser,
    this.authAdminUser,
    this.nickName,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
      'adminUser': ?adminUser,
      'authAdminUser': ?authAdminUser,
      'nickName': ?nickName,
      'userType': ?userType,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      adminUser: map['adminUser'] == null ? null : (map['adminUser'] as bool).input(),
      authAdminUser: map['authAdminUser'] == null ? null : (map['authAdminUser'] as bool).input(),
      nickName: map['nickName'] == null ? null : (map['nickName'] as String).input(),
      userType: map['userType'] == null ? null : (map['userType'] as String).input(),
    );
  }
}

