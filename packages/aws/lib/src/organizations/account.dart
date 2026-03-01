import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';

/// Provides a resource to create a member account in the current organization.
///
/// > **Note:** Account management must be done from the organization's root account.
///
/// > **Note:** By default, deleting this resource will only remove an AWS account from an organization. You must set the `close_on_deletion` flag to true to close the account. It is worth noting that quotas are enforced when using the `close_on_deletion` argument, which can produce a [CLOSE_ACCOUNT_QUOTA_EXCEEDED](https://docs.aws.amazon.com/organizations/latest/APIReference/API_CloseAccount.html) error, and require you to close the account manually.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const account = new aws.organizations.Account("account", {
///     name: "my_new_account",
///     email: "john@doe.org",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// account = aws.organizations.Account("account",
///     name="my_new_account",
///     email="john@doe.org")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new Aws.Organizations.Account("account", new()
///     {
///         Name = "my_new_account",
///         Email = "john@doe.org",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewAccount(ctx, "account", &organizations.AccountArgs{
/// 			Name:  pulumi.String("my_new_account"),
/// 			Email: pulumi.String("john@doe.org"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.Account;
/// import com.pulumi.aws.organizations.AccountArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var account = new Account("account", AccountArgs.builder()
///             .name("my_new_account")
///             .email("john@doe.org")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account:
///     type: aws:organizations:Account
///     properties:
///       name: my_new_account
///       email: john@doe.org
/// ```
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
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const account = new aws.organizations.Account("account", {
///     name: "my_new_account",
///     email: "john@doe.org",
///     roleName: "myOrganizationRole",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// account = aws.organizations.Account("account",
///     name="my_new_account",
///     email="john@doe.org",
///     role_name="myOrganizationRole")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new Aws.Organizations.Account("account", new()
///     {
///         Name = "my_new_account",
///         Email = "john@doe.org",
///         RoleName = "myOrganizationRole",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewAccount(ctx, "account", &organizations.AccountArgs{
/// 			Name:     pulumi.String("my_new_account"),
/// 			Email:    pulumi.String("john@doe.org"),
/// 			RoleName: pulumi.String("myOrganizationRole"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.Account;
/// import com.pulumi.aws.organizations.AccountArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var account = new Account("account", AccountArgs.builder()
///             .name("my_new_account")
///             .email("john@doe.org")
///             .roleName("myOrganizationRole")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   account:
///     type: aws:organizations:Account
///     properties:
///       name: my_new_account
///       email: john@doe.org
///       roleName: myOrganizationRole
/// ```
class Account extends pulumi.CustomResource {
  /// ARN for this account.
  late final pulumi.Output<String> arn;

  /// If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts.
  late final pulumi.Output<bool?> closeOnDeletion;

  /// Whether to also create a GovCloud account. The GovCloud account is tied to the main (commercial) account this resource creates. If `true`, the GovCloud account ID is available in the `govcloud_id` attribute. The only way to manage the GovCloud account with the provider is to subsequently import the account using this resource.
  late final pulumi.Output<bool?> createGovcloud;

  /// Email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account.
  late final pulumi.Output<String> email;

  /// ID for a GovCloud account created with the account.
  late final pulumi.Output<String> govcloudId;

  /// If set to `ALLOW`, the new account enables IAM users and roles to access account billing information if they have the required permissions. If set to `DENY`, then only the root user (and no roles) of the new account can access account billing information. If this is unset, the AWS API will default this to `ALLOW`. If the resource is created and this option is changed, it will try to recreate the account.
  late final pulumi.Output<String?> iamUserAccessToBilling;

  /// Method by which the account joined the organization.
  late final pulumi.Output<String> joinedMethod;

  /// Date the account became a part of the organization.
  late final pulumi.Output<String> joinedTimestamp;

  /// Friendly name for the member account.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID. A configuration must be present for this argument to perform drift detection.
  late final pulumi.Output<String> parentId;

  /// The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the root account, allowing users in the root account to assume the role, as permitted by the root account administrator. The role has administrator permissions in the new member account. The Organizations API provides no method for reading this information after account creation, so the provider cannot perform drift detection on its value and will always show a difference for a configured value after import unless `ignoreChanges` is used.
  late final pulumi.Output<String?> roleName;

  /// State of the account in the organization.
  late final pulumi.Output<String> state;

  /// (**Deprecated** use `state` instead) Status of the account in the organization.
  late final pulumi.Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_organizations_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:organizations/account:Account',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.closeOnDeletion = registerOutput<bool?>('closeOnDeletion');
    this.createGovcloud = registerOutput<bool?>('createGovcloud');
    this.email = registerOutput<String>('email');
    this.govcloudId = registerOutput<String>('govcloudId');
    this.iamUserAccessToBilling = registerOutput<String?>(
      'iamUserAccessToBilling',
    );
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
