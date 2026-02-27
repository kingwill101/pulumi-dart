import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_admin_account_guardduty_args.dart';

/// Manages a GuardDuty Organization Admin Account. The AWS account utilizing this resource must be an Organizations primary account. More information about Organizations support in GuardDuty can be found in the [GuardDuty User Guide](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty Organization Admin Account using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/organizationAdminAccount:OrganizationAdminAccount example 123456789012
/// ```
class OrganizationAdminAccountGuardduty extends pulumi.CustomResource {
  /// AWS account identifier to designate as a delegated administrator for GuardDuty.
  late final pulumi.Output<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  OrganizationAdminAccountGuardduty(
    String name, {
    OrganizationAdminAccountGuarddutyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/organizationAdminAccount:OrganizationAdminAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminAccountId = registerOutput<String>('adminAccountId');
    this.region = registerOutput<String>('region');
  }
}
