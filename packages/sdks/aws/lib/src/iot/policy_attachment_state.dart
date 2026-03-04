// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyAttachment resources.
class PolicyAttachmentState {
  /// The name of the policy to attach.
  final pulumi.Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The identity to which the policy is attached.
  final pulumi.Input<String>? target;

  /// Creates a new [PolicyAttachmentState].
  /// [policy] The name of the policy to attach.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [target] The identity to which the policy is attached.
  PolicyAttachmentState({this.policy, this.region, this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'target': ?target,
    };
  }

  factory PolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentState(
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
