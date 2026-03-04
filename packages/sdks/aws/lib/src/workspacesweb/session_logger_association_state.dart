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
    this.portalArn,
    this.region,
    this.sessionLoggerArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': ?portalArn,
      'region': ?region,
      'sessionLoggerArn': ?sessionLoggerArn,
    };
  }

  factory SessionLoggerAssociationState.fromMap(Map<String, dynamic> map) {
    return SessionLoggerAssociationState(
      portalArn: (() {
        final guardedValue = map['portalArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionLoggerArn: (() {
        final guardedValue = map['sessionLoggerArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
