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
    String? additionalUsageQuota,
    required String email,
    required String labName,
    required String resourceGroupName,
    String? userName,
  }) :
      additionalUsageQuota = pulumi.Input.asOptionalInput<String>(additionalUsageQuota),
      email = pulumi.Input.asInput<String>(email),
      labName = pulumi.Input.asInput<String>(labName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      additionalUsageQuota: map['additionalUsageQuota'] == null ? null : map['additionalUsageQuota'] as String,
      email: map['email'] as String,
      labName: map['labName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

