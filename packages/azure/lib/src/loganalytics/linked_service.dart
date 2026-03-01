import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_args.dart';

/// Manages a Log Analytics Linked Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "resourcegroup-01",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "automation-01",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
///     tags: {
///         environment: "development",
///     },
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "workspace-01",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleLinkedService = new azure.loganalytics.LinkedService("example", {
///     resourceGroupName: example.name,
///     workspaceId: exampleAnalyticsWorkspace.id,
///     readAccessId: exampleAccount.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="resourcegroup-01",
///     location="West Europe")
/// example_account = azure.automation.Account("example",
///     name="automation-01",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic",
///     tags={
///         "environment": "development",
///     })
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="workspace-01",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_linked_service = azure.loganalytics.LinkedService("example",
///     resource_group_name=example.name,
///     workspace_id=example_analytics_workspace.id,
///     read_access_id=example_account.id)
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
///         Name = "resourcegroup-01",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "automation-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///         Tags =
///         {
///             { "environment", "development" },
///         },
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "workspace-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleLinkedService = new Azure.LogAnalytics.LinkedService("example", new()
///     {
///         ResourceGroupName = example.Name,
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///         ReadAccessId = exampleAccount.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loganalytics"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("resourcegroup-01"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("automation-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("development"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("workspace-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewLinkedService(ctx, "example", &loganalytics.LinkedServiceArgs{
/// 			ResourceGroupName: example.Name,
/// 			WorkspaceId:       exampleAnalyticsWorkspace.ID(),
/// 			ReadAccessId:      exampleAccount.ID(),
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.loganalytics.LinkedService;
/// import com.pulumi.azure.loganalytics.LinkedServiceArgs;
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
///             .name("resourcegroup-01")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("automation-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .tags(Map.of("environment", "development"))
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("workspace-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleLinkedService = new LinkedService("exampleLinkedService", LinkedServiceArgs.builder()
///             .resourceGroupName(example.name())
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .readAccessId(exampleAccount.id())
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
///       name: resourcegroup-01
///       location: West Europe
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: automation-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///       tags:
///         environment: development
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: workspace-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleLinkedService:
///     type: azure:loganalytics:LinkedService
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///       readAccessId: ${exampleAccount.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2020-08-01
///
/// ## Import
///
/// Log Analytics Workspaces can be imported using the `resource id`, e.g.
///
/// When `read_access_id` has been specified:
/// ```sh
/// $ pulumi import azure:loganalytics/linkedService:LinkedService example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1/linkedServices/Automation
/// ```
/// When `read_access_id` has been omitted:
/// ```sh
/// $ pulumi import azure:loganalytics/linkedService:LinkedService example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1/linkedServices/Cluster
/// ```
class LinkedService extends pulumi.CustomResource {
  /// The generated name of the Linked Service. The format for this attribute is always `<workspace name>/<linked service type>`(e.g. `workspace1/Automation` or `workspace1/Cluster`)
  late final pulumi.Output<String> name;
  /// The ID of the readable Resource that will be linked to the workspace. This should be used for linking to an Automation Account resource.
  late final pulumi.Output<String> readAccessId;
  /// The name of the resource group in which the Log Analytics Linked Service is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Log Analytics Workspace that will contain the Log Analytics Linked Service resource.
  late final pulumi.Output<String> workspaceId;
  /// The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource.
  ///
  /// > **Note:** You must define at least one of the above access resource id attributes (e.g. `read_access_id` or `write_access_id`).
  late final pulumi.Output<String?> writeAccessId;

  /// Creates a new [LinkedService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedService]. {@macro pulumi_loganalytics_linked_service_linked_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedService(
    String name, {
    LinkedServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/linkedService:LinkedService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.readAccessId = registerOutput<String>('readAccessId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.workspaceId = registerOutput<String>('workspaceId');
    this.writeAccessId = registerOutput<String?>('writeAccessId');
  }
}
