import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_certificate_args.dart';

/// Manages an Automation Connection with type `Azure`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
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
/// const exampleCertificate = new azure.automation.Certificate("example", {
///     name: "certificate-example",
///     resourceGroupName: exampleResourceGroup.name,
///     automationAccountName: exampleAccount.name,
///     base64: std.filebase64({
///         input: "certificate.pfx",
///     }).then(invoke => invoke.result),
/// });
/// const exampleConnectionCertificate = new azure.automation.ConnectionCertificate("example", {
///     name: "connection-example",
///     resourceGroupName: exampleResourceGroup.name,
///     automationAccountName: exampleAccount.name,
///     automationCertificateName: exampleCertificate.name,
///     subscriptionId: example.then(example => example.subscriptionId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
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
/// example_certificate = azure.automation.Certificate("example",
///     name="certificate-example",
///     resource_group_name=example_resource_group.name,
///     automation_account_name=example_account.name,
///     base64=std.filebase64(input="certificate.pfx").result)
/// example_connection_certificate = azure.automation.ConnectionCertificate("example",
///     name="connection-example",
///     resource_group_name=example_resource_group.name,
///     automation_account_name=example_account.name,
///     automation_certificate_name=example_certificate.name,
///     subscription_id=example.subscription_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
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
///     var exampleCertificate = new Azure.Automation.Certificate("example", new()
///     {
///         Name = "certificate-example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Base64 = Std.Filebase64.Invoke(new()
///         {
///             Input = "certificate.pfx",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var exampleConnectionCertificate = new Azure.Automation.ConnectionCertificate("example", new()
///     {
///         Name = "connection-example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         AutomationAccountName = exampleAccount.Name,
///         AutomationCertificateName = exampleCertificate.Name,
///         SubscriptionId = example.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId),
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
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
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "certificate.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCertificate, err := automation.NewCertificate(ctx, "example", &automation.CertificateArgs{
/// 			Name:                  pulumi.String("certificate-example"),
/// 			ResourceGroupName:     exampleResourceGroup.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Base64:                pulumi.String(invokeFilebase64.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewConnectionCertificate(ctx, "example", &automation.ConnectionCertificateArgs{
/// 			Name:                      pulumi.String("connection-example"),
/// 			ResourceGroupName:         exampleResourceGroup.Name,
/// 			AutomationAccountName:     exampleAccount.Name,
/// 			AutomationCertificateName: exampleCertificate.Name,
/// 			SubscriptionId:            pulumi.String(example.SubscriptionId),
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
/// import com.pulumi.azure.automation.Certificate;
/// import com.pulumi.azure.automation.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.azure.automation.ConnectionCertificate;
/// import com.pulumi.azure.automation.ConnectionCertificateArgs;
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
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .name("certificate-example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .automationAccountName(exampleAccount.name())
///             .base64(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("certificate.pfx")
///                 .build()).result())
///             .build());
///
///         var exampleConnectionCertificate = new ConnectionCertificate("exampleConnectionCertificate", ConnectionCertificateArgs.builder()
///             .name("connection-example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .automationAccountName(exampleAccount.name())
///             .automationCertificateName(exampleCertificate.name())
///             .subscriptionId(example.subscriptionId())
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
///   exampleCertificate:
///     type: azure:automation:Certificate
///     name: example
///     properties:
///       name: certificate-example
///       resourceGroupName: ${exampleResourceGroup.name}
///       automationAccountName: ${exampleAccount.name}
///       base64:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: certificate.pfx
///           return: result
///   exampleConnectionCertificate:
///     type: azure:automation:ConnectionCertificate
///     name: example
///     properties:
///       name: connection-example
///       resourceGroupName: ${exampleResourceGroup.name}
///       automationAccountName: ${exampleAccount.name}
///       automationCertificateName: ${exampleCertificate.name}
///       subscriptionId: ${example.subscriptionId}
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
/// Automation Connection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/connectionCertificate:ConnectionCertificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/connections/conn1
/// ```
class ConnectionCertificate extends pulumi.CustomResource {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The name of the automation certificate.
  late final pulumi.Output<String> automationCertificateName;
  /// A description for this Connection.
  late final pulumi.Output<String?> description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The id of subscription where the automation certificate exists.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [ConnectionCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionCertificate]. {@macro pulumi_automation_connection_certificate_connection_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionCertificate(
    String name, {
    ConnectionCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/connectionCertificate:ConnectionCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automationAccountName = registerOutput<String>('automationAccountName');
    this.automationCertificateName = registerOutput<String>('automationCertificateName');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }
}
