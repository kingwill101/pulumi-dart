// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResourcePolicy.
class ResourcePolicyKinesisArgs {
  /// The policy document.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the data stream or consumer.
  final pulumi.Input<String> resourceArn;

  ResourcePolicyKinesisArgs({
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

  factory ResourcePolicyKinesisArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyKinesisArgs(
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
    );
  }
}
