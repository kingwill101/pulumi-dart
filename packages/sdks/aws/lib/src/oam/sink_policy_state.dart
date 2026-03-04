// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SinkPolicy resources.
class SinkPolicyState {
  /// ARN of the Sink.
  final pulumi.Input<String>? arn;

  /// JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.
  final pulumi.Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID string that AWS generated as part of the sink ARN.
  final pulumi.Input<String>? sinkId;

  /// ARN of the sink to attach this policy to.
  final pulumi.Input<String>? sinkIdentifier;

  /// Creates a new [SinkPolicyState].
  /// [arn] ARN of the Sink.
  /// [policy] JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sinkId] ID string that AWS generated as part of the sink ARN.
  /// [sinkIdentifier] ARN of the sink to attach this policy to.
  SinkPolicyState({
    this.arn,
    this.policy,
    this.region,
    this.sinkId,
    this.sinkIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'policy': ?policy,
      'region': ?region,
      'sinkId': ?sinkId,
      'sinkIdentifier': ?sinkIdentifier,
    };
  }

  factory SinkPolicyState.fromMap(Map<String, dynamic> map) {
    return SinkPolicyState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      sinkId: (() {
        final guardedValue = map['sinkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sinkIdentifier: (() {
        final guardedValue = map['sinkIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
