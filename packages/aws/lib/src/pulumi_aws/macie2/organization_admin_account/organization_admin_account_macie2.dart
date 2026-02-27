import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_admin_account_macie2_args.dart';

/// Provides a resource to manage an [Amazon Macie Organization Admin Account](https://docs.aws.amazon.com/macie/latest/APIReference/admin.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.OrganizationAdminAccount` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/organizationAdminAccount:OrganizationAdminAccount example abcd1
/// ```
class OrganizationAdminAccountMacie2 extends pulumi.CustomResource {
  /// The AWS account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.
  late final pulumi.Output<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  OrganizationAdminAccountMacie2(
    String name, {
    OrganizationAdminAccountMacie2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/organizationAdminAccount:OrganizationAdminAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminAccountId = registerOutput<String>('adminAccountId');
    this.region = registerOutput<String>('region');
  }
}
