// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SessionLoggerAssociation resources.
class SessionLoggerAssociationState {
  /// ARN of the web portal.
  final pulumi.Input<String>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the session logger.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? sessionLoggerArn;

  /// Creates a new [SessionLoggerAssociationState].
  /// [portalArn] ARN of the web portal.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionLoggerArn] ARN of the session logger.
  SessionLoggerAssociationState({
    pulumi.Output<String>? portalArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sessionLoggerArn,
  }) :
      portalArn = pulumi.Input.asOptionalInput<String>(portalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      sessionLoggerArn = pulumi.Input.asOptionalInput<String>(sessionLoggerArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': ?portalArn,
      'region': ?region,
      'sessionLoggerArn': ?sessionLoggerArn,
    };
  }

  factory SessionLoggerAssociationState.fromMap(Map<String, dynamic> map) {
    return SessionLoggerAssociationState(
      portalArn: map['portalArn'] == null ? null : pulumi.Output.create<String>(map['portalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sessionLoggerArn: map['sessionLoggerArn'] == null ? null : pulumi.Output.create<String>(map['sessionLoggerArn'] as String),
    );
  }
}

