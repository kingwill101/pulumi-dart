// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Policy
class Policy {
  /// The entire contents of the policy that defines permissions. For more information, see [Overview of JSON policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json).
  final pulumi.Input<dynamic>? policyDocument;
  /// The friendly name (not ARN) identifying the policy.
  final pulumi.Input<String>? policyName;

  /// Creates a new [Policy].
  /// [policyDocument] The entire contents of the policy that defines permissions. For more information, see [Overview of JSON policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json).
  /// [policyName] The friendly name (not ARN) identifying the policy.
  Policy({
    this.policyDocument,
    this.policyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': ?policyDocument,
      'policyName': ?policyName,
    };
  }

  factory Policy.fromMap(Map<String, dynamic> map) {
    return Policy(
      policyDocument: (() { final guardedValue = map['policyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

