import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_scope_args.dart';

/// Manages an Azure Monitor Private Link Scope.
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
/// const examplePrivateLinkScope = new azure.monitoring.PrivateLinkScope("example", {
///     name: "example-ampls",
///     resourceGroupName: example.name,
///     ingestionAccessMode: "PrivateOnly",
///     queryAccessMode: "Open",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_private_link_scope = azure.monitoring.PrivateLinkScope("example",
///     name="example-ampls",
///     resource_group_name=example.name,
///     ingestion_access_mode="PrivateOnly",
///     query_access_mode="Open")
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
///     var examplePrivateLinkScope = new Azure.Monitoring.PrivateLinkScope("example", new()
///     {
///         Name = "example-ampls",
///         ResourceGroupName = example.Name,
///         IngestionAccessMode = "PrivateOnly",
///         QueryAccessMode = "Open",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_, err = monitoring.NewPrivateLinkScope(ctx, "example", &monitoring.PrivateLinkScopeArgs{
/// 			Name:                pulumi.String("example-ampls"),
/// 			ResourceGroupName:   example.Name,
/// 			IngestionAccessMode: pulumi.String("PrivateOnly"),
/// 			QueryAccessMode:     pulumi.String("Open"),
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
/// import com.pulumi.azure.monitoring.PrivateLinkScope;
/// import com.pulumi.azure.monitoring.PrivateLinkScopeArgs;
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
///         var examplePrivateLinkScope = new PrivateLinkScope("examplePrivateLinkScope", PrivateLinkScopeArgs.builder()
///             .name("example-ampls")
///             .resourceGroupName(example.name())
///             .ingestionAccessMode("PrivateOnly")
///             .queryAccessMode("Open")
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
///   examplePrivateLinkScope:
///     type: azure:monitoring:PrivateLinkScope
///     name: example
///     properties:
///       name: example-ampls
///       resourceGroupName: ${example.name}
///       ingestionAccessMode: PrivateOnly
///       queryAccessMode: Open
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2021-07-01-preview
///
/// ## Import
///
/// Azure Monitor Private Link Scopes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/privateLinkScope:PrivateLinkScope example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Insights/privateLinkScopes/pls1
/// ```
class PrivateLinkScope extends pulumi.CustomResource {
  /// The default ingestion access mode for the associated private endpoints in scope. Possible values are `Open` and `PrivateOnly`. Defaults to `Open`.
  late final pulumi.Output<String?> ingestionAccessMode;
  /// The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The default query access mode for hte associated private endpoints in scope. Possible values are `Open` and `PrivateOnly`. Defaults to `Open`.
  late final pulumi.Output<String?> queryAccessMode;
  /// The name of the Resource Group where the Azure Monitor Private Link Scope should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Monitor Private Link Scope.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PrivateLinkScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkScope]. {@macro pulumi_monitoring_private_link_scope_private_link_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkScope(
    String name, {
    PrivateLinkScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/privateLinkScope:PrivateLinkScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ingestionAccessMode = registerOutput<String?>('ingestionAccessMode');
    this.name = registerOutput<String>('name');
    this.queryAccessMode = registerOutput<String?>('queryAccessMode');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
