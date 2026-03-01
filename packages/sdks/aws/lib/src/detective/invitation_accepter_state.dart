// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InvitationAccepter resources.
class InvitationAccepterState {
  /// ARN of the behavior graph that the member account is accepting the invitation for.
  final pulumi.Input<String>? graphArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InvitationAccepterState].
  /// [graphArn] ARN of the behavior graph that the member account is accepting the invitation for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InvitationAccepterState({
    pulumi.Output<String>? graphArn,
    pulumi.Output<String>? region,
  }) :
      graphArn = pulumi.Input.asOptionalInput<String>(graphArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graphArn': ?graphArn,
      'region': ?region,
    };
  }

  factory InvitationAccepterState.fromMap(Map<String, dynamic> map) {
    return InvitationAccepterState(
      graphArn: map['graphArn'] == null ? null : pulumi.Output.create<String>(map['graphArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

