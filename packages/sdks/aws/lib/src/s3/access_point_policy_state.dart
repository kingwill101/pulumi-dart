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
    this.accessPointArn,
    this.hasPublicAccessPolicy,
    this.policy,
    this.region,
  });

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
      accessPointArn: (() { final guardedValue = map['accessPointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hasPublicAccessPolicy: (() { final guardedValue = map['hasPublicAccessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

