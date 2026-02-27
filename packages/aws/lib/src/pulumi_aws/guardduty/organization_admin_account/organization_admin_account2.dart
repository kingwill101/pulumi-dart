import 'package:pulumi/pulumi.dart';
import 'organization_admin_account_args2.dart';

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
class OrganizationAdminAccount2 extends CustomResource {
  /// AWS account identifier to designate as a delegated administrator for GuardDuty.
  late final Output<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationAdminAccount2(
    String name, {
    OrganizationAdminAccountArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/organizationAdminAccount:OrganizationAdminAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminAccountId = registerOutput<String>('adminAccountId');
    this.region = registerOutput<String>('region');
  }
}
