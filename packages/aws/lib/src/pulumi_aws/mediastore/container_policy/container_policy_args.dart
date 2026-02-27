// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ContainerPolicy.
class ContainerPolicyArgs {
  /// The name of the container.
  final pulumi.Input<String> containerName;

  /// The contents of the policy.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ContainerPolicyArgs({
    required this.containerName,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerName'] = containerName;
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ContainerPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ContainerPolicyArgs(
      containerName: pulumi.Input.asInput<String>(map['containerName']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
