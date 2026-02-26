import 'package:pulumi/pulumi.dart';
import 'account_args.dart';

/// Allows management of a Google Cloud service account.
///
/// * [API documentation](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/access/service-accounts)
///
/// > **Warning:**  If you delete and recreate a service account, you must reapply any IAM roles that it had before.
///
/// > Creation of service accounts is eventually consistent, and that can lead to
/// errors when you try to apply ACLs to service accounts immediately after
/// creation.
///
/// ## Example Usage
///
/// This snippet creates a service account in a project.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
/// accountId: "service-account-id",
/// displayName: "Service Account",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
/// account_id="service-account-id",
/// display_name="Service Account")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
/// {
/// AccountId = "service-account-id",
/// DisplayName = "Service Account",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("service-account-id"),
/// DisplayName: pulumi.String("Service Account"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
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
/// var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
/// .accountId("service-account-id")
/// .displayName("Service Account")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// serviceAccount:
/// type: gcp:serviceaccount:Account
/// name: service_account
/// properties:
/// accountId: service-account-id
/// displayName: Service Account
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Service accounts can be imported using their URI, e.g.
///
/// * `projects/{{project_id}}/serviceAccounts/{{email}}`
///
/// When using the `pulumi import` command, service accounts can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:serviceaccount/account:Account default projects/{{project_id}}/serviceAccounts/{{email}}
/// ```
class Account extends CustomResource {
  /// The account id that is used to generate the service
  /// account email address and a stable unique id. It is unique within a project,
  /// must be 6-30 characters long, and match the regular expression `a-z`
  /// to comply with RFC1035. Changing this forces a new service account to be created.
  late final Output<String> accountId;

  /// If set to true, skip service account creation if a service account with the same email already exists.
  late final Output<bool?> createIgnoreAlreadyExists;

  /// A text description of the service account.
  /// Must be less than or equal to 256 UTF-8 bytes.
  late final Output<String?> description;

  /// Whether a service account is disabled or not. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This field has no effect during creation.
  /// Must be set after creation to disable a service account.
  late final Output<bool?> disabled;

  /// The display name for the service account.
  /// Can be updated without creating a new resource.
  late final Output<String?> displayName;

  /// The e-mail address of the service account. This value
  /// should be referenced from any <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data sources
  /// that would grant the service account privileges.
  late final Output<String> email;

  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  late final Output<String> member;

  /// The fully-qualified name of the service account.
  late final Output<String> name;

  /// The ID of the project that the service account will be created in.
  /// Defaults to the provider project configuration.
  late final Output<String> project;

  /// The unique id of the service account.
  late final Output<String> uniqueId;

  Account(
    String name, {
    AccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:serviceaccount/account:Account',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.createIgnoreAlreadyExists =
        registerOutput<bool?>('createIgnoreAlreadyExists');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.email = registerOutput<String>('email');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.uniqueId = registerOutput<String>('uniqueId');
  }
}
