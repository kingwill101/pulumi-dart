import 'package:pulumi/pulumi.dart';
import 'ami_launch_permission_args.dart';

/// Adds a launch permission to an Amazon Machine Image (AMI).
///
/// ## Example Usage
///
/// ### AWS Account ID
///
///
///
/// ### Public Access
///
///
///
/// ### Organization Access
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AMI Launch Permissions using `[ACCOUNT-ID|GROUP-NAME|ORGANIZATION-ARN|ORGANIZATIONAL-UNIT-ARN]/IMAGE-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/amiLaunchPermission:AmiLaunchPermission example 123456789012/ami-12345678
/// ```
class AmiLaunchPermission extends CustomResource {
  /// AWS account ID for the launch permission.
  late final Output<String?> accountId;

  /// Name of the group for the launch permission. Valid values: `"all"`.
  late final Output<String?> group;

  /// ID of the AMI.
  late final Output<String> imageId;

  /// ARN of an organization for the launch permission.
  late final Output<String?> organizationArn;

  /// ARN of an organizational unit for the launch permission.
  late final Output<String?> organizationalUnitArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AmiLaunchPermission(
    String name, {
    AmiLaunchPermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/amiLaunchPermission:AmiLaunchPermission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String?>('accountId');
    this.group = registerOutput<String?>('group');
    this.imageId = registerOutput<String>('imageId');
    this.organizationArn = registerOutput<String?>('organizationArn');
    this.organizationalUnitArn =
        registerOutput<String?>('organizationalUnitArn');
    this.region = registerOutput<String>('region');
  }
}
