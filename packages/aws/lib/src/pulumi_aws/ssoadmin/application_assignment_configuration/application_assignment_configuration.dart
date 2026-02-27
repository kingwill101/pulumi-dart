import 'package:pulumi/pulumi.dart';
import 'application_assignment_configuration_args.dart';

/// Resource for managing an AWS SSO Admin Application Assignment Configuration.
///
/// By default, applications will require users to have an explicit assignment in order to access an application.
/// This resource can be used to adjust this default behavior if necessary.
///
/// > Deleting this resource will return the assignment configuration for the application to the default AWS behavior (ie. `assignment_required = true`).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SSO application.
///
///
/// Using `pulumi import`, import SSO Admin Application Assignment Configuration using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/applicationAssignmentConfiguration:ApplicationAssignmentConfiguration example arn:aws:sso::123456789012:application/id-12345678
/// ```
class ApplicationAssignmentConfiguration extends CustomResource {
  /// ARN of the application.
  late final Output<String> applicationArn;

  /// Indicates whether users must have an explicit assignment to access the application. If `false`, all users have access to the application.
  late final Output<bool> assignmentRequired;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ApplicationAssignmentConfiguration(
    String name, {
    ApplicationAssignmentConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/applicationAssignmentConfiguration:ApplicationAssignmentConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationArn = registerOutput<String>('applicationArn');
    this.assignmentRequired = registerOutput<bool>('assignmentRequired');
    this.region = registerOutput<String>('region');
  }
}
