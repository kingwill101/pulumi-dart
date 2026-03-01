import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_args.dart';

/// Manages a Resource Guard.
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
/// const exampleResourceGuard = new azure.dataprotection.ResourceGuard("example", {
///     name: "example-resourceguard",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_resource_guard = azure.dataprotection.ResourceGuard("example",
///     name="example-resourceguard",
///     resource_group_name=example.name,
///     location=example.location)
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
///     var exampleResourceGuard = new Azure.DataProtection.ResourceGuard("example", new()
///     {
///         Name = "example-resourceguard",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
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
/// 		_, err = dataprotection.NewResourceGuard(ctx, "example", &dataprotection.ResourceGuardArgs{
/// 			Name:              pulumi.String("example-resourceguard"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// import com.pulumi.azure.dataprotection.ResourceGuard;
/// import com.pulumi.azure.dataprotection.ResourceGuardArgs;
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
///         var exampleResourceGuard = new ResourceGuard("exampleResourceGuard", ResourceGuardArgs.builder()
///             .name("example-resourceguard")
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///   exampleResourceGuard:
///     type: azure:dataprotection:ResourceGuard
///     name: example
///     properties:
///       name: example-resourceguard
///       resourceGroupName: ${example.name}
///       location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataProtection` - 2024-04-01
///
/// ## Import
///
/// Resource Guards can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/resourceGuard:ResourceGuard example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/resourceGuards/resourceGuard1
/// ```
class ResourceGuard extends pulumi.CustomResource {
  /// The Azure Region where the Resource Guard should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Resource Guard. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Resource Guard should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Resource Guard.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A list of the critical operations which are not protected by this Resource Guard.
  late final pulumi.Output<List<String>?> vaultCriticalOperationExclusionLists;

  /// Creates a new [ResourceGuard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGuard]. {@macro pulumi_dataprotection_resource_guard_resource_guard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGuard(
    String name, {
    ResourceGuardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/resourceGuard:ResourceGuard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vaultCriticalOperationExclusionLists = registerOutput<List<String>?>('vaultCriticalOperationExclusionLists');
  }
}
