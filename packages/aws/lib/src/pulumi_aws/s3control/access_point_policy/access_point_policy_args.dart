// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccessPointPolicy.
class AccessPointPolicyArgs {
  /// The ARN of the access point that you want to associate with the specified policy.
  final pulumi.Input<String> accessPointArn;

  /// The policy that you want to apply to the specified access point.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AccessPointPolicyArgs({
    required this.accessPointArn,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPointArn'] = accessPointArn;
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AccessPointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessPointPolicyArgs(
      accessPointArn: pulumi.Input.asInput<String>(map['accessPointArn']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
