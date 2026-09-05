// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogResourcePolicy resources.
class LogResourcePolicyState {
  /// Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  final pulumi.Input<dynamic>? policyDocument;
  /// Name of the resource policy. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for account-scoped policies. Note that the number of resource policies without `resourceArn` is limited to 10 per region.
  final pulumi.Input<String?>? policyName;
  /// Scope of the resource policy (`ACCOUNT` or `RESOURCE`).
  final pulumi.Input<String?>? policyScope;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the CloudWatch Logs resource to which the resource policy is attached. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for resource-scoped policies. Only one policy can be attached per log group resource ARN.
  final pulumi.Input<String?>? resourceArn;
  /// Revision ID of the resource policy. Only populated for resource-scoped policies.
  final pulumi.Input<String?>? revisionId;

  /// Creates a new [LogResourcePolicyState].
  /// [policyDocument] Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters.
  /// [policyName] Name of the resource policy. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for account-scoped policies. Note that the number of resource policies without `resourceArn` is limited to 10 per region.
  /// [policyScope] Scope of the resource policy (`ACCOUNT` or `RESOURCE`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the CloudWatch Logs resource to which the resource policy is attached. Exactly one of `policyName` or `resourceArn` must be specified and this argument is required for resource-scoped policies. Only one policy can be attached per log group resource ARN.
  /// [revisionId] Revision ID of the resource policy. Only populated for resource-scoped policies.
  const LogResourcePolicyState({
    this.policyDocument,
    this.policyName,
    this.policyScope,
    this.region,
    this.resourceArn,
    this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': ?policyDocument,
      'policyName': ?policyName,
      'policyScope': ?policyScope,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'revisionId': ?revisionId,
    };
  }

  factory LogResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return LogResourcePolicyState(
      policyDocument: (() { final guardedValue = map['policyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyScope: (() { final guardedValue = map['policyScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
