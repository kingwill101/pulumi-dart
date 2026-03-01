import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_type_args.dart';
import 'connection_type_field.dart';

/// Manages anAutomation Connection Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "resourceGroup-example",
///     location: "West Europe",
/// });
/// const example = azure.core.getClientConfig({});
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "account-example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     skuName: "Basic",
/// });
/// const exampleConnectionType = new azure.automation.ConnectionType("example", {
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
///     automationAccountName: exampleAccount.name,
///     fields: [{
///         name: "example",
///         type: "string",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="resourceGroup-example",
///     location="West Europe")
/// example = azure.core.get_client_config()
/// example_account = azure.automation.Account("example",
///     name="account-example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku_name="Basic")
/// example_connection_type = azure.automation.ConnectionType("example",
///     name="example",
///     resource_group_name=example_resource_group.name,
///     automation_account_name=example_account.name,
///     fields=[{
///         "name": "example",
///         "type": "string",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "resourceGroup-example",
///         Location = "West Europe",
///     });
///
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "account-example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleConnectionType = new Azure.Automation.ConnectionType("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Fields = new[]
///         {
///             new Azure.Automation.Inputs.ConnectionTypeFieldArgs
///             {
///                 Name = "example",
///                 Type = "string",
///             },
///         },
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
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("resourceGroup-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("account-example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewConnectionType(ctx, "example", &automation.ConnectionTypeArgs{
/// 			Name:                  pulumi.String("example"),
/// 			ResourceGroupName:     exampleResourceGroup.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Fields: automation.ConnectionTypeFieldArray{
/// 				&automation.ConnectionTypeFieldArgs{
/// 					Name: pulumi.String("example"),
/// 					Type: pulumi.String("string"),
/// 				},
/// 			},
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
/// import com.pulumi.azure.automation.ConnectionType;
/// import com.pulumi.azure.automation.ConnectionTypeArgs;
/// import com.pulumi.azure.automation.inputs.ConnectionTypeFieldArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("resourceGroup-example")
///             .location("West Europe")
///             .build());
///
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("account-example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleConnectionType = new ConnectionType("exampleConnectionType", ConnectionTypeArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .automationAccountName(exampleAccount.name())
///             .fields(ConnectionTypeFieldArgs.builder()
///                 .name("example")
///                 .type("string")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: resourceGroup-example
///       location: West Europe
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: account-example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       skuName: Basic
///   exampleConnectionType:
///     type: azure:automation:ConnectionType
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
///       automationAccountName: ${exampleAccount.name}
///       fields:
///         - name: example
///           type: string
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
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
/// $ pulumi import azure:automation/connectionType:ConnectionType example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/connectionTypes/type1
/// ```
class ConnectionType extends pulumi.CustomResource {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// One or more `field` blocks as defined below. Changing this forces a new Automation to be created.
  late final pulumi.Output<List<ConnectionTypeField>> fields;
  /// Whether the connection type is global. Changing this forces a new Automation to be created.
  late final pulumi.Output<bool?> isGlobal;
  /// The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ConnectionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionType]. {@macro pulumi_automation_connection_type_connection_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionType(
    String name, {
    ConnectionTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/connectionType:ConnectionType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automationAccountName = registerOutput<String>('automationAccountName');
    this.fields = registerOutput<List<ConnectionTypeField>>('fields');
    this.isGlobal = registerOutput<bool?>('isGlobal');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
