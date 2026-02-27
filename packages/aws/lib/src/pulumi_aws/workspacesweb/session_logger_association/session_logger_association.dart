import 'package:pulumi/pulumi.dart';
import 'session_logger_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web Session Logger Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Session Logger Association using the `session_logger_arn,portal_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/sessionLoggerAssociation:SessionLoggerAssociation example arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/session_logger-id-12345678,arn:aws:workspaces-web:us-west-2:123456789012:portal/portal-id-12345678
/// ```
class SessionLoggerAssociation extends CustomResource {
  /// ARN of the web portal.
  late final Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the session logger.
  ///
  /// The following arguments are optional:
  late final Output<String> sessionLoggerArn;

  SessionLoggerAssociation(
    String name, {
    SessionLoggerAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/sessionLoggerAssociation:SessionLoggerAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
    this.sessionLoggerArn = registerOutput<String>('sessionLoggerArn');
  }
}
