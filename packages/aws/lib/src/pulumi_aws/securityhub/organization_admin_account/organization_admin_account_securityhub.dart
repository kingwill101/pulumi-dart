import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_admin_account_securityhub_args.dart';

/// Manages a Security Hub administrator account for an organization. The AWS account utilizing this resource must be an Organizations primary account. More information about Organizations support in Security Hub can be found in the [Security Hub User Guide](https://docs.aws.amazon.com/securityhub/latest/userguide/designate-orgs-admin-account.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub Organization Admin Accounts using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/organizationAdminAccount:OrganizationAdminAccount example 123456789012
/// ```
class OrganizationAdminAccountSecurityhub extends pulumi.CustomResource {
  /// The AWS account identifier of the account to designate as the Security Hub administrator account.
  late final pulumi.Output<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  OrganizationAdminAccountSecurityhub(
    String name, {
    OrganizationAdminAccountSecurityhubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/organizationAdminAccount:OrganizationAdminAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminAccountId = registerOutput<String>('adminAccountId');
    this.region = registerOutput<String>('region');
  }
}
