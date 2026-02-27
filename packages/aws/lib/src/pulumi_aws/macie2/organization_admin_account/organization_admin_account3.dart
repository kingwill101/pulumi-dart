import 'package:pulumi/pulumi.dart';
import 'organization_admin_account_args3.dart';

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
class OrganizationAdminAccount3 extends CustomResource {
  /// The AWS account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.
  late final Output<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationAdminAccount3(
    String name, {
    OrganizationAdminAccountArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie2/organizationAdminAccount:OrganizationAdminAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminAccountId = registerOutput<String>('adminAccountId');
    this.region = registerOutput<String>('region');
  }
}
