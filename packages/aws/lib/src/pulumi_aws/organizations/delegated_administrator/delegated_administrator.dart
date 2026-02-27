import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegated_administrator_args.dart';

/// Provides a resource to manage an [AWS Organizations Delegated Administrator](https://docs.aws.amazon.com/organizations/latest/APIReference/API_RegisterDelegatedAdministrator.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `service_principal` (String) Service principal for the AWS service.
/// * `delegated_account_id` (String) Account ID to be designated as a delegated administrator.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.organizations.DelegatedAdministrator` using the account ID and its service principal. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/delegatedAdministrator:DelegatedAdministrator example 123456789012/config.amazonaws.com
/// ```
class DelegatedAdministrator extends pulumi.CustomResource {
  /// The account ID number of the member account in the organization to register as a delegated administrator.
  late final pulumi.Output<String> accountId;

  /// The Amazon Resource Name (ARN) of the delegated administrator's account.
  late final pulumi.Output<String> arn;

  /// The date when the account was made a delegated administrator.
  late final pulumi.Output<String> delegationEnabledDate;

  /// The email address that is associated with the delegated administrator's AWS account.
  late final pulumi.Output<String> email;

  /// The method by which the delegated administrator's account joined the organization.
  late final pulumi.Output<String> joinedMethod;

  /// The date when the delegated administrator's account became a part of the organization.
  late final pulumi.Output<String> joinedTimestamp;

  /// The friendly name of the delegated administrator's account.
  late final pulumi.Output<String> name;

  /// The service principal of the AWS service for which you want to make the member account a delegated administrator.
  late final pulumi.Output<String> servicePrincipal;

  /// The status of the delegated administrator's account in the organization.
  late final pulumi.Output<String> status;

  DelegatedAdministrator(
    String name, {
    DelegatedAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/delegatedAdministrator:DelegatedAdministrator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.delegationEnabledDate =
        registerOutput<String>('delegationEnabledDate');
    this.email = registerOutput<String>('email');
    this.joinedMethod = registerOutput<String>('joinedMethod');
    this.joinedTimestamp = registerOutput<String>('joinedTimestamp');
    this.name = registerOutput<String>('name');
    this.servicePrincipal = registerOutput<String>('servicePrincipal');
    this.status = registerOutput<String>('status');
  }
}
