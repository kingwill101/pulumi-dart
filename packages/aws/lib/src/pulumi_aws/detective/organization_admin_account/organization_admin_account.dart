import 'package:pulumi/pulumi.dart';
import 'organization_admin_account_args.dart';

/// Manages a Detective Organization Admin Account. The AWS account utilizing this resource must be an Organizations primary account. More information about Organizations support in Detective can be found in the [Detective User Guide](https://docs.aws.amazon.com/detective/latest/adminguide/accounts-orgs-transition.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.detective.OrganizationAdminAccount` using `account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:detective/organizationAdminAccount:OrganizationAdminAccount example 123456789012
/// ```
class OrganizationAdminAccount extends CustomResource {
  /// AWS account identifier to designate as a delegated administrator for Detective.
  late final Output<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationAdminAccount(
    String name, {
    OrganizationAdminAccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:detective/organizationAdminAccount:OrganizationAdminAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.region = registerOutput<String>('region');
  }
}
