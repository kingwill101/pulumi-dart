// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pvtz_user_vpc_authorization_user_vpc_authorization_args_doc}
/// The set of arguments for UserVpcAuthorization.
/// {@endtemplate}
/// {@macro pulumi_pvtz_user_vpc_authorization_user_vpc_authorization_args_doc}
class UserVpcAuthorizationArgs {
  /// The auth channel. Valid values: `RESOURCE_DIRECTORY`.
  final pulumi.Input<String>? authChannel;
  /// The type of Authorization. Valid values: `NORMAL` and `CLOUD_PRODUCT`.
  final pulumi.Input<String>? authType;
  /// The primary account ID of the user who authorizes the resource.
  final pulumi.Input<String> authorizedUserId;

  /// Creates a new [UserVpcAuthorizationArgs].
  /// [authChannel] The auth channel. Valid values: `RESOURCE_DIRECTORY`.
  /// [authType] The type of Authorization. Valid values: `NORMAL` and `CLOUD_PRODUCT`.
  /// [authorizedUserId] The primary account ID of the user who authorizes the resource.
  const UserVpcAuthorizationArgs({
    this.authChannel,
    this.authType,
    required this.authorizedUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authChannel': ?authChannel,
      'authType': ?authType,
      'authorizedUserId': authorizedUserId,
    };
  }

  factory UserVpcAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return UserVpcAuthorizationArgs(
      authChannel: (() { final guardedValue = map['authChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizedUserId: pulumi.Input.fromValue(map['authorizedUserId'] as String),
    );
  }
}

