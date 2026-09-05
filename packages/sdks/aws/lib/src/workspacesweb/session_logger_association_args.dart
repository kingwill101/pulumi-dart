// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_session_logger_association_session_logger_association_args_doc}
/// The set of arguments for SessionLoggerAssociation.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_session_logger_association_session_logger_association_args_doc}
class SessionLoggerAssociationArgs {
  /// ARN of the web portal.
  final pulumi.Input<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the session logger.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> sessionLoggerArn;

  /// Creates a new [SessionLoggerAssociationArgs].
  /// [portalArn] ARN of the web portal.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionLoggerArn] ARN of the session logger.
  const SessionLoggerAssociationArgs({
    required this.portalArn,
    this.region,
    required this.sessionLoggerArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': portalArn,
      'region': ?region,
      'sessionLoggerArn': sessionLoggerArn,
    };
  }

  factory SessionLoggerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SessionLoggerAssociationArgs(
      portalArn: pulumi.Input.fromValue(map['portalArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionLoggerArn: pulumi.Input.fromValue(map['sessionLoggerArn'] as String),
    );
  }
}
