// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoliciesPolicy {
  /// The number of times the policy is referenced.
  final pulumi.Input<int> attachmentCount;

  /// The default version of the policy.
  final pulumi.Input<String> defaultVersion;

  /// The description of the policy.
  final pulumi.Input<String> description;

  /// The ID of the policy.
  final pulumi.Input<String> id;

  /// The name of the policy.
  final pulumi.Input<String> policyName;

  /// The type of the policy. If you do not specify this parameter, the system lists all types of policies. Valid values: `Custom` and `System`.
  final pulumi.Input<String> policyType;

  /// The time when the policy was updated.
  final pulumi.Input<String> updateDate;

  /// Creates a new [GetPoliciesPolicy].
  /// [attachmentCount] The number of times the policy is referenced.
  /// [defaultVersion] The default version of the policy.
  /// [description] The description of the policy.
  /// [id] The ID of the policy.
  /// [policyName] The name of the policy.
  /// [policyType] The type of the policy. If you do not specify this parameter, the system lists all types of policies. Valid values: `Custom` and `System`.
  /// [updateDate] The time when the policy was updated.
  GetPoliciesPolicy({
    required this.attachmentCount,
    required this.defaultVersion,
    required this.description,
    required this.id,
    required this.policyName,
    required this.policyType,
    required this.updateDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentCount': attachmentCount,
      'defaultVersion': defaultVersion,
      'description': description,
      'id': id,
      'policyName': policyName,
      'policyType': policyType,
      'updateDate': updateDate,
    };
  }

  factory GetPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetPoliciesPolicy(
      attachmentCount: pulumi.Input.fromValue(map['attachmentCount'] as int),
      defaultVersion: pulumi.Input.fromValue(map['defaultVersion'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      updateDate: pulumi.Input.fromValue(map['updateDate'] as String),
    );
  }
}
