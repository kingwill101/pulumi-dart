// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserVpcAuthorization resources.
class UserVpcAuthorizationState {
  /// The auth channel. Valid values: `RESOURCE_DIRECTORY`.
  final pulumi.Input<String>? authChannel;
  /// The type of Authorization. Valid values: `NORMAL` and `CLOUD_PRODUCT`.
  final pulumi.Input<String>? authType;
  /// The primary account ID of the user who authorizes the resource.
  final pulumi.Input<String>? authorizedUserId;

  /// Creates a new [UserVpcAuthorizationState].
  /// [authChannel] The auth channel. Valid values: `RESOURCE_DIRECTORY`.
  /// [authType] The type of Authorization. Valid values: `NORMAL` and `CLOUD_PRODUCT`.
  /// [authorizedUserId] The primary account ID of the user who authorizes the resource.
  UserVpcAuthorizationState({
    this.authChannel,
    this.authType,
    this.authorizedUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authChannel': ?authChannel,
      'authType': ?authType,
      'authorizedUserId': ?authorizedUserId,
    };
  }

  factory UserVpcAuthorizationState.fromMap(Map<String, dynamic> map) {
    return UserVpcAuthorizationState(
      authChannel: map['authChannel'] == null ? null : (map['authChannel']! as String).input(),
      authType: map['authType'] == null ? null : (map['authType']! as String).input(),
      authorizedUserId: map['authorizedUserId'] == null ? null : (map['authorizedUserId']! as String).input(),
    );
  }
}

