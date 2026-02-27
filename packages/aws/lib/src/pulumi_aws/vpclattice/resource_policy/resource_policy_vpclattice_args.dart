// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResourcePolicy.
class ResourcePolicyVpclatticeArgs {
  /// An IAM policy. The policy string in JSON must not contain newlines or blank lines.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  final pulumi.Input<String> resourceArn;

  ResourcePolicyVpclatticeArgs({
    required this.policy,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ResourcePolicyVpclatticeArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyVpclatticeArgs(
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
    );
  }
}
