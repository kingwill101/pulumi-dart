// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambdaweb_resource_policy_resource_policy_args_doc}
/// The set of arguments for ResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_lambdaweb_resource_policy_resource_policy_args_doc}
class ResourcePolicyArgs {
  /// Resource-based IAM policy document as JSON. Terraform normalizes the document, so equivalent policies that differ only in key order or whitespace do not produce spurious diffs.
  final pulumi.Input<String> policy;
  /// Region where this resource is managed. Defaults to the provider's configured region.
  final pulumi.Input<String?>? region;
  /// ARN of the Lambda Web function the policy is attached to. Must be a web function ARN (`arn:aws:lambda:&lt;region&gt;:&lt;account&gt;:web-function/&lt;name&gt;`). Changing this forces a new resource.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ResourcePolicyArgs].
  /// [policy] Resource-based IAM policy document as JSON. Terraform normalizes the document, so equivalent policies that differ only in key order or whitespace do not produce spurious diffs.
  /// [region] Region where this resource is managed. Defaults to the provider's configured region.
  /// [resourceArn] ARN of the Lambda Web function the policy is attached to. Must be a web function ARN (`arn:aws:lambda:&lt;region&gt;:&lt;account&gt;:web-function/&lt;name&gt;`). Changing this forces a new resource.
  const ResourcePolicyArgs({
    required this.policy,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}
