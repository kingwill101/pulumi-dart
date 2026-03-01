// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPointPolicy resources.
class AccessPointPolicyState {
  /// The ARN of the access point that you want to associate with the specified policy.
  final pulumi.Input<String>? accessPointArn;
  /// Indicates whether this access point currently has a policy that allows public access.
  final pulumi.Input<bool>? hasPublicAccessPolicy;
  /// The policy that you want to apply to the specified access point.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AccessPointPolicyState].
  /// [accessPointArn] The ARN of the access point that you want to associate with the specified policy.
  /// [hasPublicAccessPolicy] Indicates whether this access point currently has a policy that allows public access.
  /// [policy] The policy that you want to apply to the specified access point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AccessPointPolicyState({
    pulumi.Output<String>? accessPointArn,
    pulumi.Output<bool>? hasPublicAccessPolicy,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      accessPointArn = pulumi.Input.asOptionalInput<String>(accessPointArn),
      hasPublicAccessPolicy = pulumi.Input.asOptionalInput<bool>(hasPublicAccessPolicy),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': ?accessPointArn,
      'hasPublicAccessPolicy': ?hasPublicAccessPolicy,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory AccessPointPolicyState.fromMap(Map<String, dynamic> map) {
    return AccessPointPolicyState(
      accessPointArn: map['accessPointArn'] == null ? null : pulumi.Output.create<String>(map['accessPointArn'] as String),
      hasPublicAccessPolicy: map['hasPublicAccessPolicy'] == null ? null : pulumi.Output.create<bool>(map['hasPublicAccessPolicy'] as bool),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

