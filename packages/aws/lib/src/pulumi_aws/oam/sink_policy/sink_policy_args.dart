// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SinkPolicy.
class SinkPolicyArgs {
  /// JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the sink to attach this policy to.
  final Input<String> sinkIdentifier;

  SinkPolicyArgs({
    required this.policy,
    this.region,
    required this.sinkIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sinkIdentifier'] = sinkIdentifier;
    return map;
  }

  factory SinkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SinkPolicyArgs(
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      sinkIdentifier: Input.asInput<String>(map['sinkIdentifier']),
    );
  }
}
