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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? accountName,
    pulumi.Output<bool>? adminUser,
    pulumi.Output<bool>? authAdminUser,
    pulumi.Output<String>? nickName,
    pulumi.Output<String>? userType,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      adminUser = pulumi.Input.asOptionalInput<bool>(adminUser),
      authAdminUser = pulumi.Input.asOptionalInput<bool>(authAdminUser),
      nickName = pulumi.Input.asOptionalInput<String>(nickName),
      userType = pulumi.Input.asOptionalInput<String>(userType);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      adminUser: map['adminUser'] == null ? null : pulumi.Output.create<bool>(map['adminUser'] as bool),
      authAdminUser: map['authAdminUser'] == null ? null : pulumi.Output.create<bool>(map['authAdminUser'] as bool),
      nickName: map['nickName'] == null ? null : pulumi.Output.create<String>(map['nickName'] as String),
      userType: map['userType'] == null ? null : pulumi.Output.create<String>(map['userType'] as String),
    );
  }
}

