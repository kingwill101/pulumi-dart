import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_assignment_args.dart';

/// Resource for managing an AWS SSO Admin Application Assignment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Group Type
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Admin Application Assignment using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/applicationAssignment:ApplicationAssignment example arn:aws:sso::123456789012:application/id-12345678,abcd1234,USER
/// ```
class ApplicationAssignment extends pulumi.CustomResource {
  /// ARN of the application.
  late final pulumi.Output<String> applicationArn;

  /// An identifier for an object in IAM Identity Center, such as a user or group.
  late final pulumi.Output<String> principalId;

  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  late final pulumi.Output<String> principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ApplicationAssignment(
    String name, {
    ApplicationAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/applicationAssignment:ApplicationAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationArn = registerOutput<String>('applicationArn');
    this.principalId = registerOutput<String>('principalId');
    this.principalType = registerOutput<String>('principalType');
    this.region = registerOutput<String>('region');
  }
}
