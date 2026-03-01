import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_update_configuration_args.dart';
import 'software_update_configuration_linux.dart';
import 'software_update_configuration_post_task.dart';
import 'software_update_configuration_pre_task.dart';
import 'software_update_configuration_schedule.dart';
import 'software_update_configuration_target.dart';
import 'software_update_configuration_windows.dart';

/// Manages an Automation Software Update Configuration.
///
/// !> **Note:** The `azure.automation.SoftwareUpdateConfiguration` resource has been deprecated because the Azure Automation Update Management was retired on 2024-08-31 and has been shutdown on 2025-02-28. This resource will be removed in v5.0 of the AzureRM Provider. Please migrate to Azure Update Manager, and use the `azure.maintenance.Configuration` resource combined with the appropriate assignment resources instead. See https://techcommunity.microsoft.com/blog/azuregovernanceandmanagementblog/log-analytics-agent-based-azure-management-services-shut-down-starting-28-februa/4381853 for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "East US",
/// });
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleRunBook = new azure.automation.RunBook("example", {
///     name: "Get-AzureVMTutorial",
///     location: example.location,
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     logVerbose: true,
///     logProgress: true,
///     description: "This is a example runbook for terraform acceptance example",
///     runbookType: "Python3",
///     content: `# Some example content
/// # for Terraform acceptance example
/// `,
///     tags: {
///         ENV: "runbook_test",
///     },
/// });
/// const exampleSoftwareUpdateConfiguration = new azure.automation.SoftwareUpdateConfiguration("example", {
///     name: "example",
///     automationAccountId: exampleAccount.id,
///     linux: {
///         classificationsIncludeds: "Security",
///         excludedPackages: ["apt"],
///         includedPackages: ["vim"],
///         reboot: "IfRequired",
///     },
///     preTask: {
///         source: exampleRunBook.name,
///         parameters: {
///             COMPUTER_NAME: "Foo",
///         },
///     },
///     duration: "PT2H2M2S",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="East US")
/// example_account = azure.automation.Account("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_run_book = azure.automation.RunBook("example",
///     name="Get-AzureVMTutorial",
///     location=example.location,
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     log_verbose=True,
///     log_progress=True,
///     description="This is a example runbook for terraform acceptance example",
///     runbook_type="Python3",
///     content="""# Some example content
/// # for Terraform acceptance example
/// """,
///     tags={
///         "ENV": "runbook_test",
///     })
/// example_software_update_configuration = azure.automation.SoftwareUpdateConfiguration("example",
///     name="example",
///     automation_account_id=example_account.id,
///     linux={
///         "classifications_includeds": "Security",
///         "excluded_packages": ["apt"],
///         "included_packages": ["vim"],
///         "reboot": "IfRequired",
///     },
///     pre_task={
///         "source": example_run_book.name,
///         "parameters": {
///             "COMPUTER_NAME": "Foo",
///         },
///     },
///     duration="PT2H2M2S")
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
///         Name = "example-rg",
///         Location = "East US",
///     });
///
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleRunBook = new Azure.Automation.RunBook("example", new()
///     {
///         Name = "Get-AzureVMTutorial",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         LogVerbose = true,
///         LogProgress = true,
///         Description = "This is a example runbook for terraform acceptance example",
///         RunbookType = "Python3",
///         Content = @"# Some example content
/// # for Terraform acceptance example
/// ",
///         Tags =
///         {
///             { "ENV", "runbook_test" },
///         },
///     });
///
///     var exampleSoftwareUpdateConfiguration = new Azure.Automation.SoftwareUpdateConfiguration("example", new()
///     {
///         Name = "example",
///         AutomationAccountId = exampleAccount.Id,
///         Linux = new Azure.Automation.Inputs.SoftwareUpdateConfigurationLinuxArgs
///         {
///             ClassificationsIncludeds = "Security",
///             ExcludedPackages = new[]
///             {
///                 "apt",
///             },
///             IncludedPackages = new[]
///             {
///                 "vim",
///             },
///             Reboot = "IfRequired",
///         },
///         PreTask = new Azure.Automation.Inputs.SoftwareUpdateConfigurationPreTaskArgs
///         {
///             Source = exampleRunBook.Name,
///             Parameters =
///             {
///                 { "COMPUTER_NAME", "Foo" },
///             },
///         },
///         Duration = "PT2H2M2S",
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
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRunBook, err := automation.NewRunBook(ctx, "example", &automation.RunBookArgs{
/// 			Name:                  pulumi.String("Get-AzureVMTutorial"),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			LogVerbose:            pulumi.Bool(true),
/// 			LogProgress:           pulumi.Bool(true),
/// 			Description:           pulumi.String("This is a example runbook for terraform acceptance example"),
/// 			RunbookType:           pulumi.String("Python3"),
/// 			Content:               pulumi.String("# Some example content\n# for Terraform acceptance example\n"),
/// 			Tags: pulumi.StringMap{
/// 				"ENV": pulumi.String("runbook_test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewSoftwareUpdateConfiguration(ctx, "example", &automation.SoftwareUpdateConfigurationArgs{
/// 			Name:                pulumi.String("example"),
/// 			AutomationAccountId: exampleAccount.ID(),
/// 			Linux: &automation.SoftwareUpdateConfigurationLinuxArgs{
/// 				ClassificationsIncludeds: pulumi.StringArray("Security"),
/// 				ExcludedPackages: pulumi.StringArray{
/// 					pulumi.String("apt"),
/// 				},
/// 				IncludedPackages: pulumi.StringArray{
/// 					pulumi.String("vim"),
/// 				},
/// 				Reboot: pulumi.String("IfRequired"),
/// 			},
/// 			PreTask: &automation.SoftwareUpdateConfigurationPreTaskArgs{
/// 				Source: exampleRunBook.Name,
/// 				Parameters: pulumi.StringMap{
/// 					"COMPUTER_NAME": pulumi.String("Foo"),
/// 				},
/// 			},
/// 			Duration: pulumi.String("PT2H2M2S"),
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
/// import com.pulumi.azure.automation.RunBook;
/// import com.pulumi.azure.automation.RunBookArgs;
/// import com.pulumi.azure.automation.SoftwareUpdateConfiguration;
/// import com.pulumi.azure.automation.SoftwareUpdateConfigurationArgs;
/// import com.pulumi.azure.automation.inputs.SoftwareUpdateConfigurationLinuxArgs;
/// import com.pulumi.azure.automation.inputs.SoftwareUpdateConfigurationPreTaskArgs;
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
///             .name("example-rg")
///             .location("East US")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleRunBook = new RunBook("exampleRunBook", RunBookArgs.builder()
///             .name("Get-AzureVMTutorial")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .logVerbose(true)
///             .logProgress(true)
///             .description("This is a example runbook for terraform acceptance example")
///             .runbookType("Python3")
///             .content("""
/// # Some example content
/// # for Terraform acceptance example
///             """)
///             .tags(Map.of("ENV", "runbook_test"))
///             .build());
///
///         var exampleSoftwareUpdateConfiguration = new SoftwareUpdateConfiguration("exampleSoftwareUpdateConfiguration", SoftwareUpdateConfigurationArgs.builder()
///             .name("example")
///             .automationAccountId(exampleAccount.id())
///             .linux(SoftwareUpdateConfigurationLinuxArgs.builder()
///                 .classificationsIncludeds("Security")
///                 .excludedPackages("apt")
///                 .includedPackages("vim")
///                 .reboot("IfRequired")
///                 .build())
///             .preTask(SoftwareUpdateConfigurationPreTaskArgs.builder()
///                 .source(exampleRunBook.name())
///                 .parameters(Map.of("COMPUTER_NAME", "Foo"))
///                 .build())
///             .duration("PT2H2M2S")
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
///       name: example-rg
///       location: East US
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleRunBook:
///     type: azure:automation:RunBook
///     name: example
///     properties:
///       name: Get-AzureVMTutorial
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       logVerbose: 'true'
///       logProgress: 'true'
///       description: This is a example runbook for terraform acceptance example
///       runbookType: Python3
///       content: |
///         # Some example content
///         # for Terraform acceptance example
///       tags:
///         ENV: runbook_test
///   exampleSoftwareUpdateConfiguration:
///     type: azure:automation:SoftwareUpdateConfiguration
///     name: example
///     properties:
///       name: example
///       automationAccountId: ${exampleAccount.id}
///       linux:
///         classificationsIncludeds: Security
///         excludedPackages:
///           - apt
///         includedPackages:
///           - vim
///         reboot: IfRequired
///       preTask:
///         source: ${exampleRunBook.name}
///         parameters:
///           COMPUTER_NAME: Foo
///       duration: PT2H2M2S
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2019-06-01
///
/// ## Import
///
/// Automations Software Update Configuration can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/softwareUpdateConfiguration:SoftwareUpdateConfiguration example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/softwareUpdateConfigurations/suc1
/// ```
class SoftwareUpdateConfiguration extends pulumi.CustomResource {
  /// The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created.
  late final pulumi.Output<String> automationAccountId;
  /// Maximum time allowed for the software update configuration run. using format `PT[n]H[n]M[n]S` as per ISO8601. Defaults to `PT2H`.
  late final pulumi.Output<String?> duration;
  /// The Error code when failed.
  late final pulumi.Output<String> errorCode;
  /// The Error message indicating why the operation failed.
  late final pulumi.Output<String> errorMessage;
  /// A `linux` block as defined below.
  late final pulumi.Output<SoftwareUpdateConfigurationLinux?> linux;
  /// The name which should be used for this Automation. Changing this forces a new Automation to be created.
  late final pulumi.Output<String> name;
  /// Specifies a list of names of non-Azure machines for the software update configuration.
  late final pulumi.Output<List<String>?> nonAzureComputerNames;
  /// A `post_task` blocks as defined below.
  late final pulumi.Output<SoftwareUpdateConfigurationPostTask?> postTask;
  /// A `pre_task` blocks as defined below.
  late final pulumi.Output<SoftwareUpdateConfigurationPreTask?> preTask;
  /// A `schedule` blocks as defined below.
  late final pulumi.Output<SoftwareUpdateConfigurationSchedule> schedule;
  /// A `target` blocks as defined below.
  late final pulumi.Output<SoftwareUpdateConfigurationTarget?> target;
  /// Specifies a list of Azure Resource IDs of azure virtual machines.
  late final pulumi.Output<List<String>?> virtualMachineIds;
  /// A `windows` block as defined below.
  ///
  /// > **Note:** One of `linux` or `windows` must be specified.
  late final pulumi.Output<SoftwareUpdateConfigurationWindows?> windows;

  /// Creates a new [SoftwareUpdateConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SoftwareUpdateConfiguration]. {@macro pulumi_automation_software_update_configuration_software_update_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SoftwareUpdateConfiguration(
    String name, {
    SoftwareUpdateConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/softwareUpdateConfiguration:SoftwareUpdateConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automationAccountId = registerOutput<String>('automationAccountId');
    this.duration = registerOutput<String?>('duration');
    this.errorCode = registerOutput<String>('errorCode');
    this.errorMessage = registerOutput<String>('errorMessage');
    this.linux = registerOutput<SoftwareUpdateConfigurationLinux?>('linux');
    this.name = registerOutput<String>('name');
    this.nonAzureComputerNames = registerOutput<List<String>?>('nonAzureComputerNames');
    this.postTask = registerOutput<SoftwareUpdateConfigurationPostTask?>('postTask');
    this.preTask = registerOutput<SoftwareUpdateConfigurationPreTask?>('preTask');
    this.schedule = registerOutput<SoftwareUpdateConfigurationSchedule>('schedule');
    this.target = registerOutput<SoftwareUpdateConfigurationTarget?>('target');
    this.virtualMachineIds = registerOutput<List<String>?>('virtualMachineIds');
    this.windows = registerOutput<SoftwareUpdateConfigurationWindows?>('windows');
  }
}
