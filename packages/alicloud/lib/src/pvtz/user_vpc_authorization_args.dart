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
  UserVpcAuthorizationArgs({
    String? authChannel,
    String? authType,
    required String authorizedUserId,
  }) :
      authChannel = pulumi.Input.asOptionalInput<String>(authChannel),
      authType = pulumi.Input.asOptionalInput<String>(authType),
      authorizedUserId = pulumi.Input.asInput<String>(authorizedUserId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authChannel': ?authChannel,
      'authType': ?authType,
      'authorizedUserId': authorizedUserId,
    };
  }

  factory UserVpcAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return UserVpcAuthorizationArgs(
      authChannel: map['authChannel'] == null ? null : map['authChannel'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
      authorizedUserId: map['authorizedUserId'] as String,
    );
  }
}

