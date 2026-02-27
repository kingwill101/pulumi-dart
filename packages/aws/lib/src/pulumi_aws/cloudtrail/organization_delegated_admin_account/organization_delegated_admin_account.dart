import 'package:pulumi/pulumi.dart';
import 'organization_delegated_admin_account_args.dart';

/// Provides a resource to manage an AWS CloudTrail Delegated Administrator.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import delegated administrators using the delegate account `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudtrail/organizationDelegatedAdminAccount:OrganizationDelegatedAdminAccount example 12345678901
/// ```
class OrganizationDelegatedAdminAccount extends CustomResource {
  /// An organization member account ID that you want to designate as a delegated administrator.
  late final Output<String> accountId;

  /// The Amazon Resource Name (ARN) of the delegated administrator's account.
  late final Output<String> arn;

  /// The email address that is associated with the delegated administrator's AWS account.
  late final Output<String> email;

  /// The friendly name of the delegated administrator's account.
  late final Output<String> name;

  /// The AWS CloudTrail service principal name.
  late final Output<String> servicePrincipal;

  OrganizationDelegatedAdminAccount(
    String name, {
    OrganizationDelegatedAdminAccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudtrail/organizationDelegatedAdminAccount:OrganizationDelegatedAdminAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.email = registerOutput<String>('email');
    this.name = registerOutput<String>('name');
    this.servicePrincipal = registerOutput<String>('servicePrincipal');
  }
}
