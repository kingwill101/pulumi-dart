import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_environment_args.dart';
import 'system_data_response.dart';

/// Definition of the Runtime Environment type.
///
/// Uses Azure REST API version 2023-05-15-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-15-preview.
///
/// Other available API versions: 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update automation account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var runtimeEnvironment = new AzureNative.Automation.RuntimeEnvironment("runtimeEnvironment", new()
///     {
///         AutomationAccountName = "myAutomationAccount9",
///         DefaultPackages =
///         {
///             { "Az", "8.3.0" },
///         },
///         Language = "PowerShell",
///         Location = "East US 2",
///         ResourceGroupName = "rg",
///         RuntimeEnvironmentName = "myRuntimeEnvironmentName",
///         Version = "7.1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewRuntimeEnvironment(ctx, "runtimeEnvironment", &automation.RuntimeEnvironmentArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount9"),
/// 			DefaultPackages: pulumi.StringMap{
/// 				"Az": pulumi.String("8.3.0"),
/// 			},
/// 			Language:               pulumi.String("PowerShell"),
/// 			Location:               pulumi.String("East US 2"),
/// 			ResourceGroupName:      pulumi.String("rg"),
/// 			RuntimeEnvironmentName: pulumi.String("myRuntimeEnvironmentName"),
/// 			Version:                pulumi.String("7.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.automation.RuntimeEnvironment;
/// import com.pulumi.azurenative.automation.RuntimeEnvironmentArgs;
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
///         var runtimeEnvironment = new RuntimeEnvironment("runtimeEnvironment", RuntimeEnvironmentArgs.builder()
///             .automationAccountName("myAutomationAccount9")
///             .defaultPackages(Map.of("Az", "8.3.0"))
///             .language("PowerShell")
///             .location("East US 2")
///             .resourceGroupName("rg")
///             .runtimeEnvironmentName("myRuntimeEnvironmentName")
///             .version("7.1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const runtimeEnvironment = new azure_native.automation.RuntimeEnvironment("runtimeEnvironment", {
///     automationAccountName: "myAutomationAccount9",
///     defaultPackages: {
///         Az: "8.3.0",
///     },
///     language: "PowerShell",
///     location: "East US 2",
///     resourceGroupName: "rg",
///     runtimeEnvironmentName: "myRuntimeEnvironmentName",
///     version: "7.1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// runtime_environment = azure_native.automation.RuntimeEnvironment("runtimeEnvironment",
///     automation_account_name="myAutomationAccount9",
///     default_packages={
///         "Az": "8.3.0",
///     },
///     language="PowerShell",
///     location="East US 2",
///     resource_group_name="rg",
///     runtime_environment_name="myRuntimeEnvironmentName",
///     version="7.1")
///
/// ```
///
/// ```yaml
/// resources:
///   runtimeEnvironment:
///     type: azure-native:automation:RuntimeEnvironment
///     properties:
///       automationAccountName: myAutomationAccount9
///       defaultPackages:
///         Az: 8.3.0
///       language: PowerShell
///       location: East US 2
///       resourceGroupName: rg
///       runtimeEnvironmentName: myRuntimeEnvironmentName
///       version: '7.1'
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:automation:RuntimeEnvironment myRuntimeEnvironmentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runtimeEnvironments/{runtimeEnvironmentName}
/// ```
class RuntimeEnvironment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of Default packages for Environment
  late final pulumi.Output<Map<String, String>?> defaultPackages;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Language of Runtime Environment
  late final pulumi.Output<String?> language;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Version of Language
  late final pulumi.Output<String?> version;

  /// Creates a new [RuntimeEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeEnvironment]. {@macro pulumi_automation_runtime_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeEnvironment(
    String name, {
    RuntimeEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:RuntimeEnvironment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.defaultPackages = registerOutput<Map<String, String>?>('defaultPackages');
    this.description = registerOutput<String?>('description');
    this.language = registerOutput<String?>('language');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String?>('version');
  }
}
