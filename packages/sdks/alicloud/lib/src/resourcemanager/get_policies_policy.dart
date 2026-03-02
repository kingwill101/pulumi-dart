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
      attachmentCount: (map['attachmentCount'] as int).input(),
      defaultVersion: (map['defaultVersion'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      policyName: (map['policyName'] as String).input(),
      policyType: (map['policyType'] as String).input(),
      updateDate: (map['updateDate'] as String).input(),
    );
  }
}

