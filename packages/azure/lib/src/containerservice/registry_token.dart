import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_token_args.dart';

/// Manages an Azure Container Registry token associated to a scope map. For more information on scope maps and their tokens see the [product documentation](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-repository-scoped-permissions).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource-group",
///     location: "West Europe",
/// });
/// const exampleRegistry = new azure.containerservice.Registry("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Basic",
///     adminEnabled: false,
///     georeplications: [
///         {
///             location: "East US",
///         },
///         {
///             location: "West Europe",
///         },
///     ],
/// });
/// const exampleRegistryScopeMap = new azure.containerservice.RegistryScopeMap("example", {
///     name: "example-scope-map",
///     containerRegistryName: exampleRegistry.name,
///     resourceGroupName: example.name,
///     actions: [
///         "repositories/repo1/content/read",
///         "repositories/repo1/content/write",
///     ],
/// });
/// const exampleRegistryToken = new azure.containerservice.RegistryToken("example", {
///     name: "exampletoken",
///     containerRegistryName: exampleRegistry.name,
///     resourceGroupName: example.name,
///     scopeMapId: exampleRegistryScopeMap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource-group",
///     location="West Europe")
/// example_registry = azure.containerservice.Registry("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Basic",
///     admin_enabled=False,
///     georeplications=[
///         {
///             "location": "East US",
///         },
///         {
///             "location": "West Europe",
///         },
///     ])
/// example_registry_scope_map = azure.containerservice.RegistryScopeMap("example",
///     name="example-scope-map",
///     container_registry_name=example_registry.name,
///     resource_group_name=example.name,
///     actions=[
///         "repositories/repo1/content/read",
///         "repositories/repo1/content/write",
///     ])
/// example_registry_token = azure.containerservice.RegistryToken("example",
///     name="exampletoken",
///     container_registry_name=example_registry.name,
///     resource_group_name=example.name,
///     scope_map_id=example_registry_scope_map.id)
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
///         Name = "example-resource-group",
///         Location = "West Europe",
///     });
///
///     var exampleRegistry = new Azure.ContainerService.Registry("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Basic",
///         AdminEnabled = false,
///         Georeplications = new[]
///         {
///             new Azure.ContainerService.Inputs.RegistryGeoreplicationArgs
///             {
///                 Location = "East US",
///             },
///             new Azure.ContainerService.Inputs.RegistryGeoreplicationArgs
///             {
///                 Location = "West Europe",
///             },
///         },
///     });
///
///     var exampleRegistryScopeMap = new Azure.ContainerService.RegistryScopeMap("example", new()
///     {
///         Name = "example-scope-map",
///         ContainerRegistryName = exampleRegistry.Name,
///         ResourceGroupName = example.Name,
///         Actions = new[]
///         {
///             "repositories/repo1/content/read",
///             "repositories/repo1/content/write",
///         },
///     });
///
///     var exampleRegistryToken = new Azure.ContainerService.RegistryToken("example", new()
///     {
///         Name = "exampletoken",
///         ContainerRegistryName = exampleRegistry.Name,
///         ResourceGroupName = example.Name,
///         ScopeMapId = exampleRegistryScopeMap.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistry, err := containerservice.NewRegistry(ctx, "example", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Basic"),
/// 			AdminEnabled:      pulumi.Bool(false),
/// 			Georeplications: containerservice.RegistryGeoreplicationArray{
/// 				&containerservice.RegistryGeoreplicationArgs{
/// 					Location: pulumi.String("East US"),
/// 				},
/// 				&containerservice.RegistryGeoreplicationArgs{
/// 					Location: pulumi.String("West Europe"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistryScopeMap, err := containerservice.NewRegistryScopeMap(ctx, "example", &containerservice.RegistryScopeMapArgs{
/// 			Name:                  pulumi.String("example-scope-map"),
/// 			ContainerRegistryName: exampleRegistry.Name,
/// 			ResourceGroupName:     example.Name,
/// 			Actions: pulumi.StringArray{
/// 				pulumi.String("repositories/repo1/content/read"),
/// 				pulumi.String("repositories/repo1/content/write"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewRegistryToken(ctx, "example", &containerservice.RegistryTokenArgs{
/// 			Name:                  pulumi.String("exampletoken"),
/// 			ContainerRegistryName: exampleRegistry.Name,
/// 			ResourceGroupName:     example.Name,
/// 			ScopeMapId:            exampleRegistryScopeMap.ID(),
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
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryGeoreplicationArgs;
/// import com.pulumi.azure.containerservice.RegistryScopeMap;
/// import com.pulumi.azure.containerservice.RegistryScopeMapArgs;
/// import com.pulumi.azure.containerservice.RegistryToken;
/// import com.pulumi.azure.containerservice.RegistryTokenArgs;
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
///             .name("example-resource-group")
///             .location("West Europe")
///             .build());
///
///         var exampleRegistry = new Registry("exampleRegistry", RegistryArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Basic")
///             .adminEnabled(false)
///             .georeplications(
///                 RegistryGeoreplicationArgs.builder()
///                     .location("East US")
///                     .build(),
///                 RegistryGeoreplicationArgs.builder()
///                     .location("West Europe")
///                     .build())
///             .build());
///
///         var exampleRegistryScopeMap = new RegistryScopeMap("exampleRegistryScopeMap", RegistryScopeMapArgs.builder()
///             .name("example-scope-map")
///             .containerRegistryName(exampleRegistry.name())
///             .resourceGroupName(example.name())
///             .actions(
///                 "repositories/repo1/content/read",
///                 "repositories/repo1/content/write")
///             .build());
///
///         var exampleRegistryToken = new RegistryToken("exampleRegistryToken", RegistryTokenArgs.builder()
///             .name("exampletoken")
///             .containerRegistryName(exampleRegistry.name())
///             .resourceGroupName(example.name())
///             .scopeMapId(exampleRegistryScopeMap.id())
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
///       name: example-resource-group
///       location: West Europe
///   exampleRegistry:
///     type: azure:containerservice:Registry
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Basic
///       adminEnabled: false
///       georeplications:
///         - location: East US
///         - location: West Europe
///   exampleRegistryScopeMap:
///     type: azure:containerservice:RegistryScopeMap
///     name: example
///     properties:
///       name: example-scope-map
///       containerRegistryName: ${exampleRegistry.name}
///       resourceGroupName: ${example.name}
///       actions:
///         - repositories/repo1/content/read
///         - repositories/repo1/content/write
///   exampleRegistryToken:
///     type: azure:containerservice:RegistryToken
///     name: example
///     properties:
///       name: exampletoken
///       containerRegistryName: ${exampleRegistry.name}
///       resourceGroupName: ${example.name}
///       scopeMapId: ${exampleRegistryScopeMap.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2025-11-01
///
/// ## Import
///
/// Container Registries can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/registryToken:RegistryToken example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ContainerRegistry/registries/myregistry1/tokens/token1
/// ```
class RegistryToken extends pulumi.CustomResource {
  /// The name of the Container Registry. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerRegistryName;
  /// Should the Container Registry token be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Specifies the name of the token. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Container Registry Scope Map associated with the token.
  late final pulumi.Output<String> scopeMapId;

  /// Creates a new [RegistryToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryToken]. {@macro pulumi_containerservice_registry_token_registry_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryToken(
    String name, {
    RegistryTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryToken:RegistryToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerRegistryName = registerOutput<String>('containerRegistryName');
    this.enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.scopeMapId = registerOutput<String>('scopeMapId');
  }
}
