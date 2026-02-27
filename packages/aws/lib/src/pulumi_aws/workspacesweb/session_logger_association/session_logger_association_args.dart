// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SessionLoggerAssociation.
class SessionLoggerAssociationArgs {
  /// ARN of the web portal.
  final pulumi.Input<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the session logger.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> sessionLoggerArn;

  SessionLoggerAssociationArgs({
    required this.portalArn,
    this.region,
    required this.sessionLoggerArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['portalArn'] = portalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sessionLoggerArn'] = sessionLoggerArn;
    return map;
  }

  factory SessionLoggerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SessionLoggerAssociationArgs(
      portalArn: pulumi.Input.asInput<String>(map['portalArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sessionLoggerArn: pulumi.Input.asInput<String>(map['sessionLoggerArn']),
    );
  }
}
