// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// The document of the tag policy.
  final pulumi.Input<String>? policyContent;
  /// The description of the policy. The description must be 1 to 512 characters in length.
  final pulumi.Input<String>? policyDesc;
  /// The name of the tag policy. The name must be 1 to 128 characters in length and can contain letters, digits, and underscores (_).
  final pulumi.Input<String>? policyName;
  /// The mode of the Tag Policy feature. Valid values: `USER`, `RD`.
  final pulumi.Input<String>? userType;

  /// Creates a new [PolicyState].
  /// [policyContent] The document of the tag policy.
  /// [policyDesc] The description of the policy. The description must be 1 to 512 characters in length.
  /// [policyName] The name of the tag policy. The name must be 1 to 128 characters in length and can contain letters, digits, and underscores (_).
  /// [userType] The mode of the Tag Policy feature. Valid values: `USER`, `RD`.
  PolicyState({
    this.policyContent,
    this.policyDesc,
    this.policyName,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyContent': ?policyContent,
      'policyDesc': ?policyDesc,
      'policyName': ?policyName,
      'userType': ?userType,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      policyContent: (() { final guardedValue = map['policyContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDesc: (() { final guardedValue = map['policyDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userType: (() { final guardedValue = map['userType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

