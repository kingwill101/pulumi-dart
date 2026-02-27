import 'package:pulumi/pulumi.dart';
import 'account_args3.dart';

/// Provides a resource to create a member account in the current organization.
///
/// > **Note:** Account management must be done from the organization's root account.
///
/// > **Note:** By default, deleting this resource will only remove an AWS account from an organization. You must set the `close_on_deletion` flag to true to close the account. It is worth noting that quotas are enforced when using the `close_on_deletion` argument, which can produce a [CLOSE_ACCOUNT_QUOTA_EXCEEDED](https://docs.aws.amazon.com/organizations/latest/APIReference/API_CloseAccount.html) error, and require you to close the account manually.
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
/// * `id` (String) ID of the AWS Organizations account.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import the AWS member account using the `account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/account:Account example 111111111111
/// ```
///
/// To import accounts that have set iam_user_access_to_billing, use the following:
///
/// ```sh
/// $ pulumi import aws:organizations/account:Account example 111111111111_ALLOW
/// ```
///
/// Certain resource arguments, like `role_name`, do not have an Organizations API method for reading the information after account creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class Account3 extends CustomResource {
  /// ARN for this account.
  late final Output<String> arn;

  /// If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts.
  late final Output<bool?> closeOnDeletion;

  /// Whether to also create a GovCloud account. The GovCloud account is tied to the main (commercial) account this resource creates. If `true`, the GovCloud account ID is available in the `govcloud_id` attribute. The only way to manage the GovCloud account with the provider is to subsequently import the account using this resource.
  late final Output<bool?> createGovcloud;

  /// Email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account.
  late final Output<String> email;

  /// ID for a GovCloud account created with the account.
  late final Output<String> govcloudId;

  /// If set to `ALLOW`, the new account enables IAM users and roles to access account billing information if they have the required permissions. If set to `DENY`, then only the root user (and no roles) of the new account can access account billing information. If this is unset, the AWS API will default this to `ALLOW`. If the resource is created and this option is changed, it will try to recreate the account.
  late final Output<String?> iamUserAccessToBilling;

  /// Method by which the account joined the organization.
  late final Output<String> joinedMethod;

  /// Date the account became a part of the organization.
  late final Output<String> joinedTimestamp;

  /// Friendly name for the member account.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID. A configuration must be present for this argument to perform drift detection.
  late final Output<String> parentId;

  /// The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the root account, allowing users in the root account to assume the role, as permitted by the root account administrator. The role has administrator permissions in the new member account. The Organizations API provides no method for reading this information after account creation, so the provider cannot perform drift detection on its value and will always show a difference for a configured value after import unless `ignoreChanges` is used.
  late final Output<String?> roleName;

  /// State of the account in the organization.
  late final Output<String> state;

  /// (**Deprecated** use `state` instead) Status of the account in the organization.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Account3(
    String name, {
    AccountArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:organizations/account:Account',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.closeOnDeletion = registerOutput<bool?>('closeOnDeletion');
    this.createGovcloud = registerOutput<bool?>('createGovcloud');
    this.email = registerOutput<String>('email');
    this.govcloudId = registerOutput<String>('govcloudId');
    this.iamUserAccessToBilling =
        registerOutput<String?>('iamUserAccessToBilling');
    this.joinedMethod = registerOutput<String>('joinedMethod');
    this.joinedTimestamp = registerOutput<String>('joinedTimestamp');
    this.name = registerOutput<String>('name');
    this.parentId = registerOutput<String>('parentId');
    this.roleName = registerOutput<String?>('roleName');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
