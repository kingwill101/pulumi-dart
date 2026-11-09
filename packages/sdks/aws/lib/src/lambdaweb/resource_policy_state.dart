// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourcePolicy resources.
class ResourcePolicyState {
  /// Resource-based IAM policy document as JSON. Terraform normalizes the document, so equivalent policies that differ only in key order or whitespace do not produce spurious diffs.
  final pulumi.Input<String?>? policy;
  /// Region where this resource is managed. Defaults to the provider's configured region.
  final pulumi.Input<String?>? region;
  /// ARN of the Lambda Web function the policy is attached to. Must be a web function ARN (`arn:aws:lambda:&lt;region&gt;:&lt;account&gt;:web-function/&lt;name&gt;`). Changing this forces a new resource.
  final pulumi.Input<String?>? resourceArn;
  /// Opaque revision identifier for the policy. The service returns a new value on every write; it is used for optimistic concurrency on update and delete.
  final pulumi.Input<String?>? revisionId;

  /// Creates a new [ResourcePolicyState].
  /// [policy] Resource-based IAM policy document as JSON. Terraform normalizes the document, so equivalent policies that differ only in key order or whitespace do not produce spurious diffs.
  /// [region] Region where this resource is managed. Defaults to the provider's configured region.
  /// [resourceArn] ARN of the Lambda Web function the policy is attached to. Must be a web function ARN (`arn:aws:lambda:&lt;region&gt;:&lt;account&gt;:web-function/&lt;name&gt;`). Changing this forces a new resource.
  /// [revisionId] Opaque revision identifier for the policy. The service returns a new value on every write; it is used for optimistic concurrency on update and delete.
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
