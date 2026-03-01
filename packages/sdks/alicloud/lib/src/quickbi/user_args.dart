// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quickbi_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_quickbi_user_user_args_doc}
class UserArgs {
  /// Alibaba Cloud account ID.
  final pulumi.Input<String>? accountId;
  /// An Alibaba Cloud account, Alibaba Cloud name.
  final pulumi.Input<String> accountName;
  /// Whether it is the administrator. Valid values: `true` and `false`.
  final pulumi.Input<bool> adminUser;
  /// Whether this is a permissions administrator. Valid values: `false`, `true`.
  final pulumi.Input<bool> authAdminUser;
  /// The nickname of the user.
  final pulumi.Input<String> nickName;
  /// The members of the organization of the type of role separately. Valid values: `Analyst`, `Developer` and `Visitor`.
  final pulumi.Input<String> userType;

  /// Creates a new [UserArgs].
  /// [accountId] Alibaba Cloud account ID.
  /// [accountName] An Alibaba Cloud account, Alibaba Cloud name.
  /// [adminUser] Whether it is the administrator. Valid values: `true` and `false`.
  /// [authAdminUser] Whether this is a permissions administrator. Valid values: `false`, `true`.
  /// [nickName] The nickname of the user.
  /// [userType] The members of the organization of the type of role separately. Valid values: `Analyst`, `Developer` and `Visitor`.
  UserArgs({
    pulumi.Output<String>? accountId,
    required pulumi.Output<String> accountName,
    required pulumi.Output<bool> adminUser,
    required pulumi.Output<bool> authAdminUser,
    required pulumi.Output<String> nickName,
    required pulumi.Output<String> userType,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      accountName = pulumi.Input.asInput<String>(accountName),
      adminUser = pulumi.Input.asInput<bool>(adminUser),
      authAdminUser = pulumi.Input.asInput<bool>(authAdminUser),
      nickName = pulumi.Input.asInput<String>(nickName),
      userType = pulumi.Input.asInput<String>(userType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': accountName,
      'adminUser': adminUser,
      'authAdminUser': authAdminUser,
      'nickName': nickName,
      'userType': userType,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      adminUser: pulumi.Output.create<bool>(map['adminUser'] as bool),
      authAdminUser: pulumi.Output.create<bool>(map['authAdminUser'] as bool),
      nickName: pulumi.Output.create<String>(map['nickName'] as String),
      userType: pulumi.Output.create<String>(map['userType'] as String),
    );
  }
}

