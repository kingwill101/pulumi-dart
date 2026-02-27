import 'package:pulumi/pulumi.dart';
import 'vpc_ipam_organization_admin_account_args.dart';

/// Enables the IPAM Service and promotes a delegated administrator.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the delegate account `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamOrganizationAdminAccount:VpcIpamOrganizationAdminAccount example 12345678901
/// ```
class VpcIpamOrganizationAdminAccount extends CustomResource {
  /// The Organizations ARN for the delegate account.
  late final Output<String> arn;
  late final Output<String> delegatedAdminAccountId;

  /// The Organizations email for the delegate account.
  late final Output<String> email;

  /// The Organizations name for the delegate account.
  late final Output<String> name;

  /// The AWS service principal.
  late final Output<String> servicePrincipal;

  VpcIpamOrganizationAdminAccount(
    String name, {
    VpcIpamOrganizationAdminAccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamOrganizationAdminAccount:VpcIpamOrganizationAdminAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.delegatedAdminAccountId =
        registerOutput<String>('delegatedAdminAccountId');
    this.email = registerOutput<String>('email');
    this.name = registerOutput<String>('name');
    this.servicePrincipal = registerOutput<String>('servicePrincipal');
  }
}
