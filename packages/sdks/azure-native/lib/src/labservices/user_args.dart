// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_labservices_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_labservices_user_args_doc}
class UserArgs {
  /// The amount of usage quota time the user gets in addition to the lab usage quota.
  final pulumi.Input<String>? additionalUsageQuota;
  /// Email address of the user.
  final pulumi.Input<String> email;
  /// The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  final pulumi.Input<String> labName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the user that uniquely identifies it within containing lab. Used in resource URIs.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserArgs].
  /// [additionalUsageQuota] The amount of usage quota time the user gets in addition to the lab usage quota.
  /// [email] Email address of the user.
  /// [labName] The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userName] The name of the user that uniquely identifies it within containing lab. Used in resource URIs.
  UserArgs({
    this.additionalUsageQuota,
    required this.email,
    required this.labName,
    required this.resourceGroupName,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalUsageQuota': ?additionalUsageQuota,
      'email': email,
      'labName': labName,
      'resourceGroupName': resourceGroupName,
      'userName': ?userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      additionalUsageQuota: (() { final guardedValue = map['additionalUsageQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: pulumi.Input.fromValue(map['email'] as String),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

