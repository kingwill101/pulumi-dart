import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_password_args.dart';
import 'token_password_password1.dart';
import 'token_password_password2.dart';

/// Manages a Container Registry Token Password associated with a scope map.  For more information on scope maps and their tokens see the [product documentation](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-repository-scoped-permissions).
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
///     name: "example-registry",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Basic",
///     adminEnabled: false,
///     georeplicationLocations: [
///         "East US",
///         "West Europe",
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
/// const exampleTokenPassword = new azure.containerservice.TokenPassword("example", {
///     containerRegistryTokenId: exampleRegistryToken.id,
///     password1: {
///         expiry: "2023-03-22T17:57:36+08:00",
///     },
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
///     name="example-registry",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Basic",
///     admin_enabled=False,
///     georeplication_locations=[
///         "East US",
///         "West Europe",
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
/// example_token_password = azure.containerservice.TokenPassword("example",
///     container_registry_token_id=example_registry_token.id,
///     password1={
///         "expiry": "2023-03-22T17:57:36+08:00",
///     })
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
///         Name = "example-registry",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Basic",
///         AdminEnabled = false,
///         GeoreplicationLocations = new[]
///         {
///             "East US",
///             "West Europe",
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
///     var exampleTokenPassword = new Azure.ContainerService.TokenPassword("example", new()
///     {
///         ContainerRegistryTokenId = exampleRegistryToken.Id,
///         Password1 = new Azure.ContainerService.Inputs.TokenPasswordPassword1Args
///         {
///             Expiry = "2023-03-22T17:57:36+08:00",
///         },
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
/// 			Name:              pulumi.String("example-registry"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Basic"),
/// 			AdminEnabled:      pulumi.Bool(false),
/// 			GeoreplicationLocations: []string{
/// 				"East US",
/// 				"West Europe",
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
/// 		exampleRegistryToken, err := containerservice.NewRegistryToken(ctx, "example", &containerservice.RegistryTokenArgs{
/// 			Name:                  pulumi.String("exampletoken"),
/// 			ContainerRegistryName: exampleRegistry.Name,
/// 			ResourceGroupName:     example.Name,
/// 			ScopeMapId:            exampleRegistryScopeMap.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewTokenPassword(ctx, "example", &containerservice.TokenPasswordArgs{
/// 			ContainerRegistryTokenId: exampleRegistryToken.ID(),
/// 			Password1: &containerservice.TokenPasswordPassword1Args{
/// 				Expiry: pulumi.String("2023-03-22T17:57:36+08:00"),
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
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.RegistryScopeMap;
/// import com.pulumi.azure.containerservice.RegistryScopeMapArgs;
/// import com.pulumi.azure.containerservice.RegistryToken;
/// import com.pulumi.azure.containerservice.RegistryTokenArgs;
/// import com.pulumi.azure.containerservice.TokenPassword;
/// import com.pulumi.azure.containerservice.TokenPasswordArgs;
/// import com.pulumi.azure.containerservice.inputs.TokenPasswordPassword1Args;
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
///             .name("example-registry")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Basic")
///             .adminEnabled(false)
///             .georeplicationLocations(List.of(
///                 "East US",
///                 "West Europe"))
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
///         var exampleTokenPassword = new TokenPassword("exampleTokenPassword", TokenPasswordArgs.builder()
///             .containerRegistryTokenId(exampleRegistryToken.id())
///             .password1(TokenPasswordPassword1Args.builder()
///                 .expiry("2023-03-22T17:57:36+08:00")
///                 .build())
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
///       name: example-registry
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Basic
///       adminEnabled: false
///       georeplicationLocations:
///         - East US
///         - West Europe
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
///   exampleTokenPassword:
///     type: azure:containerservice:TokenPassword
///     name: example
///     properties:
///       containerRegistryTokenId: ${exampleRegistryToken.id}
///       password1:
///         expiry: 2023-03-22T17:57:36+08:00
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
/// Container Registry Token Passwords can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/tokenPassword:TokenPassword example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.ContainerRegistry/registries/registry1/tokens/token1/passwords/password
/// ```
class TokenPassword extends pulumi.CustomResource {
  /// The ID of the Container Registry Token that this Container Registry Token Password resides in. Changing this forces a new Container Registry Token Password to be created.
  late final pulumi.Output<String> containerRegistryTokenId;
  /// One `password` block as defined below.
  late final pulumi.Output<TokenPasswordPassword1> password1;
  /// One `password` block as defined below.
  late final pulumi.Output<TokenPasswordPassword2?> password2;

  /// Creates a new [TokenPassword].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TokenPassword]. {@macro pulumi_containerservice_token_password_token_password_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TokenPassword(
    String name, {
    TokenPasswordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/tokenPassword:TokenPassword',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerRegistryTokenId = registerOutput<String>('containerRegistryTokenId');
    this.password1 = registerOutput<TokenPasswordPassword1>('password1');
    this.password2 = registerOutput<TokenPasswordPassword2?>('password2');
  }
}
