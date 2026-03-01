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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sinkId,
    pulumi.Output<String>? sinkIdentifier,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      sinkId = pulumi.Input.asOptionalInput<String>(sinkId),
      sinkIdentifier = pulumi.Input.asOptionalInput<String>(sinkIdentifier);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sinkId: map['sinkId'] == null ? null : pulumi.Output.create<String>(map['sinkId'] as String),
      sinkIdentifier: map['sinkIdentifier'] == null ? null : pulumi.Output.create<String>(map['sinkIdentifier'] as String),
    );
  }
}

