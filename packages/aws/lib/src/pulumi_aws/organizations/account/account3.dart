import 'package:pulumi/pulumi.dart';
import 'account_args3.dart';

/// Provides a resource to create a member account in the current organization.
///
/// > **Note:** Account management must be done from the organization's root account.
///
/// > **Note:** By default, deleting this resource will only remove an AWS account from an organization. You must set the <span pulumi-lang-nodejs="`closeOnDeletion`" pulumi-lang-dotnet="`CloseOnDeletion`" pulumi-lang-go="`closeOnDeletion`" pulumi-lang-python="`close_on_deletion`" pulumi-lang-yaml="`closeOnDeletion`" pulumi-lang-java="`closeOnDeletion`">`close_on_deletion`</span> flag to true to close the account. It is worth noting that quotas are enforced when using the <span pulumi-lang-nodejs="`closeOnDeletion`" pulumi-lang-dotnet="`CloseOnDeletion`" pulumi-lang-go="`closeOnDeletion`" pulumi-lang-python="`close_on_deletion`" pulumi-lang-yaml="`closeOnDeletion`" pulumi-lang-java="`closeOnDeletion`">`close_on_deletion`</span> argument, which can produce a [CLOSE_ACCOUNT_QUOTA_EXCEEDED](https://docs.aws.amazon.com/organizations/latest/APIReference/API_CloseAccount.html) error, and require you to close the account manually.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const account = new aws.organizations.Account("account", {
/// name: "my_new_account",
/// email: "john@doe.org",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// account = aws.organizations.Account("account",
/// name="my_new_account",
/// email="john@doe.org")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var account = new Aws.Organizations.Account("account", new()
/// {
/// Name = "my_new_account",
/// Email = "john@doe.org",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewAccount(ctx, "account", &organizations.AccountArgs{
/// Name:  pulumi.String("my_new_account"),
/// Email: pulumi.String("john@doe.org"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var account = new Account("account", AccountArgs.builder()
/// .name("my_new_account")
/// .email("john@doe.org")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// account:
/// type: aws:organizations:Account
/// properties:
/// name: my_new_account
/// email: john@doe.org
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> (String) ID of the AWS Organizations account.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import the AWS member account using the <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span>. For example:
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
/// Certain resource arguments, like <span pulumi-lang-nodejs="`roleName`" pulumi-lang-dotnet="`RoleName`" pulumi-lang-go="`roleName`" pulumi-lang-python="`role_name`" pulumi-lang-yaml="`roleName`" pulumi-lang-java="`roleName`">`role_name`</span>, do not have an Organizations API method for reading the information after account creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to hide the difference. For example:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const account = new aws.organizations.Account("account", {
/// name: "my_new_account",
/// email: "john@doe.org",
/// roleName: "myOrganizationRole",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// account = aws.organizations.Account("account",
/// name="my_new_account",
/// email="john@doe.org",
/// role_name="myOrganizationRole")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var account = new Aws.Organizations.Account("account", new()
/// {
/// Name = "my_new_account",
/// Email = "john@doe.org",
/// RoleName = "myOrganizationRole",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewAccount(ctx, "account", &organizations.AccountArgs{
/// Name:     pulumi.String("my_new_account"),
/// Email:    pulumi.String("john@doe.org"),
/// RoleName: pulumi.String("myOrganizationRole"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var account = new Account("account", AccountArgs.builder()
/// .name("my_new_account")
/// .email("john@doe.org")
/// .roleName("myOrganizationRole")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// account:
/// type: aws:organizations:Account
/// properties:
/// name: my_new_account
/// email: john@doe.org
/// roleName: myOrganizationRole
/// ```
/// <!--End PulumiCodeChooser -->
class Account3 extends CustomResource {
  /// ARN for this account.
  late final Output<String> arn;

  /// If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts.
  late final Output<bool?> closeOnDeletion;

  /// Whether to also create a GovCloud account. The GovCloud account is tied to the main (commercial) account this resource creates. If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the GovCloud account ID is available in the <span pulumi-lang-nodejs="`govcloudId`" pulumi-lang-dotnet="`GovcloudId`" pulumi-lang-go="`govcloudId`" pulumi-lang-python="`govcloud_id`" pulumi-lang-yaml="`govcloudId`" pulumi-lang-java="`govcloudId`">`govcloud_id`</span> attribute. The only way to manage the GovCloud account with the provider is to subsequently import the account using this resource.
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

  /// (**Deprecated** use <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> instead) Status of the account in the organization.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
