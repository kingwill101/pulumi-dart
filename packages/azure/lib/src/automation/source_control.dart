import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_args.dart';
import 'source_control_security.dart';

/// Manages an Automation Source Control.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleSourceControl = new azure.automation.SourceControl("example", {
///     name: "example",
///     automationAccountId: exampleAccount.id,
///     folderPath: "runbook",
///     security: {
///         token: "ghp_xxx",
///         tokenType: "PersonalAccessToken",
///     },
///     repositoryUrl: "https://github.com/foo/bat.git",
///     sourceControlType: "GitHub",
///     branch: "main",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.automation.Account("example",
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_source_control = azure.automation.SourceControl("example",
///     name="example",
///     automation_account_id=example_account.id,
///     folder_path="runbook",
///     security={
///         "token": "ghp_xxx",
///         "token_type": "PersonalAccessToken",
///     },
///     repository_url="https://github.com/foo/bat.git",
///     source_control_type="GitHub",
///     branch="main")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleSourceControl = new Azure.Automation.SourceControl("example", new()
///     {
///         Name = "example",
///         AutomationAccountId = exampleAccount.Id,
///         FolderPath = "runbook",
///         Security = new Azure.Automation.Inputs.SourceControlSecurityArgs
///         {
///             Token = "ghp_xxx",
///             TokenType = "PersonalAccessToken",
///         },
///         RepositoryUrl = "https://github.com/foo/bat.git",
///         SourceControlType = "GitHub",
///         Branch = "main",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("example-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewSourceControl(ctx, "example", &automation.SourceControlArgs{
/// 			Name:                pulumi.String("example"),
/// 			AutomationAccountId: exampleAccount.ID(),
/// 			FolderPath:          pulumi.String("runbook"),
/// 			Security: &automation.SourceControlSecurityArgs{
/// 				Token:     pulumi.String("ghp_xxx"),
/// 				TokenType: pulumi.String("PersonalAccessToken"),
/// 			},
/// 			RepositoryUrl:     pulumi.String("https://github.com/foo/bat.git"),
/// 			SourceControlType: pulumi.String("GitHub"),
/// 			Branch:            pulumi.String("main"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
/// import com.pulumi.azure.automation.SourceControl;
/// import com.pulumi.azure.automation.SourceControlArgs;
/// import com.pulumi.azure.automation.inputs.SourceControlSecurityArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleSourceControl = new SourceControl("exampleSourceControl", SourceControlArgs.builder()
///             .name("example")
///             .automationAccountId(exampleAccount.id())
///             .folderPath("runbook")
///             .security(SourceControlSecurityArgs.builder()
///                 .token("ghp_xxx")
///                 .tokenType("PersonalAccessToken")
///                 .build())
///             .repositoryUrl("https://github.com/foo/bat.git")
///             .sourceControlType("GitHub")
///             .branch("main")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleSourceControl:
///     type: azure:automation:SourceControl
///     name: example
///     properties:
///       name: example
///       automationAccountId: ${exampleAccount.id}
///       folderPath: runbook
///       security:
///         token: ghp_xxx
///         tokenType: PersonalAccessToken
///       repositoryUrl: https://github.com/foo/bat.git
///       sourceControlType: GitHub
///       branch: main
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23
///
/// ## Import
///
/// Automations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/sourceControl:SourceControl example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/sourceControls/sc1
/// ```
class SourceControl extends pulumi.CustomResource {
  /// Whether auto async the Source Control.
  late final pulumi.Output<bool?> automaticSync;
  /// The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created.
  late final pulumi.Output<String> automationAccountId;
  /// Specify the repo branch of the Source Control. Empty value is valid only for `VsoTfvc`.
  late final pulumi.Output<String?> branch;
  /// A short description of the Source Control.
  late final pulumi.Output<String?> description;
  /// The folder path of the source control. This Path must be relative.
  late final pulumi.Output<String> folderPath;
  /// The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created.
  late final pulumi.Output<String> name;
  /// Whether auto publish the Source Control. Defaults to `true`.
  late final pulumi.Output<bool?> publishRunbookEnabled;
  /// The Repository URL of the source control.
  late final pulumi.Output<String> repositoryUrl;
  /// A `security` block as defined below.
  late final pulumi.Output<SourceControlSecurity> security;
  /// The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `GitHub`, and the value is case sensitive.
  late final pulumi.Output<String> sourceControlType;

  /// Creates a new [SourceControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceControl]. {@macro pulumi_automation_source_control_source_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceControl(
    String name, {
    SourceControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/sourceControl:SourceControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automaticSync = registerOutput<bool?>('automaticSync');
    this.automationAccountId = registerOutput<String>('automationAccountId');
    this.branch = registerOutput<String?>('branch');
    this.description = registerOutput<String?>('description');
    this.folderPath = registerOutput<String>('folderPath');
    this.name = registerOutput<String>('name');
    this.publishRunbookEnabled = registerOutput<bool?>('publishRunbookEnabled');
    this.repositoryUrl = registerOutput<String>('repositoryUrl');
    this.security = registerOutput<SourceControlSecurity>('security');
    this.sourceControlType = registerOutput<String>('sourceControlType');
  }
}
