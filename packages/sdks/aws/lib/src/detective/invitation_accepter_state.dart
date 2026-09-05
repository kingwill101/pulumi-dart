// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InvitationAccepter resources.
class InvitationAccepterState {
  /// ARN of the behavior graph that the member account is accepting the invitation for.
  final pulumi.Input<String?>? graphArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [InvitationAccepterState].
  /// [graphArn] ARN of the behavior graph that the member account is accepting the invitation for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const InvitationAccepterState({
    this.graphArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graphArn': ?graphArn,
      'region': ?region,
    };
  }

  factory InvitationAccepterState.fromMap(Map<String, dynamic> map) {
    return InvitationAccepterState(
      graphArn: (() { final guardedValue = map['graphArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
