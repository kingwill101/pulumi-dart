import 'package:pulumi/pulumi.dart';
import 'organization_admin_account_registration_args.dart';

/// Resource for managing AWS Audit Manager Organization Admin Account Registration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Organization Admin Account Registration using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/organizationAdminAccountRegistration:OrganizationAdminAccountRegistration example 123456789012
/// ```
class OrganizationAdminAccountRegistration extends CustomResource {
  /// Identifier for the organization administrator account.
  late final Output<String> adminAccountId;

  /// Identifier for the organization.
  late final Output<String> organizationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationAdminAccountRegistration(
    String name, {
    OrganizationAdminAccountRegistrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/organizationAdminAccountRegistration:OrganizationAdminAccountRegistration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminAccountId = registerOutput<String>('adminAccountId');
    this.organizationId = registerOutput<String>('organizationId');
    this.region = registerOutput<String>('region');
  }
}
