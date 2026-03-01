import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_scoped_service_args.dart';

/// Manages an Azure Monitor Private Link Scoped Service.
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
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "example-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const examplePrivateLinkScope = new azure.monitoring.PrivateLinkScope("example", {
///     name: "example-ampls",
///     resourceGroupName: example.name,
/// });
/// const examplePrivateLinkScopedService = new azure.monitoring.PrivateLinkScopedService("example", {
///     name: "example-amplsservice",
///     resourceGroupName: example.name,
///     scopeName: examplePrivateLinkScope.name,
///     linkedResourceId: exampleInsights.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="example-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_private_link_scope = azure.monitoring.PrivateLinkScope("example",
///     name="example-ampls",
///     resource_group_name=example.name)
/// example_private_link_scoped_service = azure.monitoring.PrivateLinkScopedService("example",
///     name="example-amplsservice",
///     resource_group_name=example.name,
///     scope_name=example_private_link_scope.name,
///     linked_resource_id=example_insights.id)
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
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var examplePrivateLinkScope = new Azure.Monitoring.PrivateLinkScope("example", new()
///     {
///         Name = "example-ampls",
///         ResourceGroupName = example.Name,
///     });
///
///     var examplePrivateLinkScopedService = new Azure.Monitoring.PrivateLinkScopedService("example", new()
///     {
///         Name = "example-amplsservice",
///         ResourceGroupName = example.Name,
///         ScopeName = examplePrivateLinkScope.Name,
///         LinkedResourceId = exampleInsights.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
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
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePrivateLinkScope, err := monitoring.NewPrivateLinkScope(ctx, "example", &monitoring.PrivateLinkScopeArgs{
/// 			Name:              pulumi.String("example-ampls"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewPrivateLinkScopedService(ctx, "example", &monitoring.PrivateLinkScopedServiceArgs{
/// 			Name:              pulumi.String("example-amplsservice"),
/// 			ResourceGroupName: example.Name,
/// 			ScopeName:         examplePrivateLinkScope.Name,
/// 			LinkedResourceId:  exampleInsights.ID(),
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
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.monitoring.PrivateLinkScope;
/// import com.pulumi.azure.monitoring.PrivateLinkScopeArgs;
/// import com.pulumi.azure.monitoring.PrivateLinkScopedService;
/// import com.pulumi.azure.monitoring.PrivateLinkScopedServiceArgs;
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
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var examplePrivateLinkScope = new PrivateLinkScope("examplePrivateLinkScope", PrivateLinkScopeArgs.builder()
///             .name("example-ampls")
///             .resourceGroupName(example.name())
///             .build());
///
///         var examplePrivateLinkScopedService = new PrivateLinkScopedService("examplePrivateLinkScopedService", PrivateLinkScopedServiceArgs.builder()
///             .name("example-amplsservice")
///             .resourceGroupName(example.name())
///             .scopeName(examplePrivateLinkScope.name())
///             .linkedResourceId(exampleInsights.id())
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
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   examplePrivateLinkScope:
///     type: azure:monitoring:PrivateLinkScope
///     name: example
///     properties:
///       name: example-ampls
///       resourceGroupName: ${example.name}
///   examplePrivateLinkScopedService:
///     type: azure:monitoring:PrivateLinkScopedService
///     name: example
///     properties:
///       name: example-amplsservice
///       resourceGroupName: ${example.name}
///       scopeName: ${examplePrivateLinkScope.name}
///       linkedResourceId: ${exampleInsights.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2019-10-17-preview
///
/// ## Import
///
/// Azure Monitor Private Link Scoped Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/privateLinkScopedService:PrivateLinkScopedService example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Insights/privateLinkScopes/pls1/scopedResources/sr1
/// ```
class PrivateLinkScopedService extends pulumi.CustomResource {
  /// The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> linkedResourceId;
  /// The name of the Azure Monitor Private Link Scoped Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scopeName;

  /// Creates a new [PrivateLinkScopedService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkScopedService]. {@macro pulumi_monitoring_private_link_scoped_service_private_link_scoped_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkScopedService(
    String name, {
    PrivateLinkScopedServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/privateLinkScopedService:PrivateLinkScopedService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.linkedResourceId = registerOutput<String>('linkedResourceId');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.scopeName = registerOutput<String>('scopeName');
  }
}
