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
  final pulumi.Input<String>? region;

  /// ARN of the session logger.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> sessionLoggerArn;

  /// Creates a new [SessionLoggerAssociationArgs].
  /// [portalArn] ARN of the web portal.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sessionLoggerArn] ARN of the session logger.
  SessionLoggerAssociationArgs({
    required String portalArn,
    String? region,
    required String sessionLoggerArn,
  }) : portalArn = pulumi.Input.asInput<String>(portalArn),
       region = pulumi.Input.asOptionalInput<String>(region),
       sessionLoggerArn = pulumi.Input.asInput<String>(sessionLoggerArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portalArn': portalArn,
      'region': ?region,
      'sessionLoggerArn': sessionLoggerArn,
    };
  }

  factory SessionLoggerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SessionLoggerAssociationArgs(
      portalArn: map['portalArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sessionLoggerArn: map['sessionLoggerArn'] as String,
    );
  }
}
