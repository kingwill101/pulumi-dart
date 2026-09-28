// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourcePolicy resources.
class ResourcePolicyState {
  /// JSON-formatted resource-based policy document to attach to the Lambda resource. This replaces the entire policy on the resource. Maximum 20,480 characters.
  final pulumi.Input<String?>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the Lambda function, function version, or function alias to attach the policy to. Can be a qualified or unqualified ARN.
  final pulumi.Input<String?>? resourceArn;
  /// Unique identifier for the current revision of the policy.
  final pulumi.Input<String?>? revisionId;

  /// Creates a new [ResourcePolicyState].
  /// [policy] JSON-formatted resource-based policy document to attach to the Lambda resource. This replaces the entire policy on the resource. Maximum 20,480 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the Lambda function, function version, or function alias to attach the policy to. Can be a qualified or unqualified ARN.
  /// [revisionId] Unique identifier for the current revision of the policy.
  const ResourcePolicyState({
    this.policy,
    this.region,
    this.resourceArn,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'revisionId': ?revisionId,
    };
  }

  factory ResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyState(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
