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
    pulumi.Output<String>? policyContent,
    pulumi.Output<String>? policyDesc,
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? userType,
  }) :
      policyContent = pulumi.Input.asOptionalInput<String>(policyContent),
      policyDesc = pulumi.Input.asOptionalInput<String>(policyDesc),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      userType = pulumi.Input.asOptionalInput<String>(userType);

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
      policyContent: map['policyContent'] == null ? null : pulumi.Output.create<String>(map['policyContent'] as String),
      policyDesc: map['policyDesc'] == null ? null : pulumi.Output.create<String>(map['policyDesc'] as String),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      userType: map['userType'] == null ? null : pulumi.Output.create<String>(map['userType'] as String),
    );
  }
}

