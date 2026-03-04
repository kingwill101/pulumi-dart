// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tag_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_tag_policy_policy_args_doc}
class PolicyArgs {
  /// The document of the tag policy.
  final pulumi.Input<String> policyContent;

  /// The description of the policy. The description must be 1 to 512 characters in length.
  final pulumi.Input<String>? policyDesc;

  /// The name of the tag policy. The name must be 1 to 128 characters in length and can contain letters, digits, and underscores (_).
  final pulumi.Input<String> policyName;

  /// The mode of the Tag Policy feature. Valid values: `USER`, `RD`.
  final pulumi.Input<String>? userType;

  /// Creates a new [PolicyArgs].
  /// [policyContent] The document of the tag policy.
  /// [policyDesc] The description of the policy. The description must be 1 to 512 characters in length.
  /// [policyName] The name of the tag policy. The name must be 1 to 128 characters in length and can contain letters, digits, and underscores (_).
  /// [userType] The mode of the Tag Policy feature. Valid values: `USER`, `RD`.
  PolicyArgs({
    required this.policyContent,
    this.policyDesc,
    required this.policyName,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyContent': policyContent,
      'policyDesc': ?policyDesc,
      'policyName': policyName,
      'userType': ?userType,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      policyContent: pulumi.Input.fromValue(map['policyContent'] as String),
      policyDesc: (() {
        final guardedValue = map['policyDesc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      userType: (() {
        final guardedValue = map['userType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
