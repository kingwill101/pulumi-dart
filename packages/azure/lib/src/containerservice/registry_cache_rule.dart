import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_cache_rule_args.dart';

/// Manages an Azure Container Registry Cache Rule.
///
/// > **Note:** All arguments including the access key will be stored in the raw state as plain-text.
/// [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
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
/// const acr = new azure.containerservice.Registry("acr", {
///     name: "containerRegistry1",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Basic",
/// });
/// const cacheRule = new azure.containerservice.RegistryCacheRule("cache_rule", {
///     name: "cacherule",
///     containerRegistryId: acr.id,
///     targetRepo: "target",
///     sourceRepo: "docker.io/hello-world",
///     credentialSetId: pulumi.interpolate`${acr.id}/credentialSets/example`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// acr = azure.containerservice.Registry("acr",
///     name="containerRegistry1",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Basic")
/// cache_rule = azure.containerservice.RegistryCacheRule("cache_rule",
///     name="cacherule",
///     container_registry_id=acr.id,
///     target_repo="target",
///     source_repo="docker.io/hello-world",
///     credential_set_id=acr.id.apply(lambda id: f"{id}/credentialSets/example"))
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
///     var acr = new Azure.ContainerService.Registry("acr", new()
///     {
///         Name = "containerRegistry1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Basic",
///     });
///
///     var cacheRule = new Azure.ContainerService.RegistryCacheRule("cache_rule", new()
///     {
///         Name = "cacherule",
///         ContainerRegistryId = acr.Id,
///         TargetRepo = "target",
///         SourceRepo = "docker.io/hello-world",
///         CredentialSetId = acr.Id.Apply(id => $"{id}/credentialSets/example"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		acr, err := containerservice.NewRegistry(ctx, "acr", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("containerRegistry1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewRegistryCacheRule(ctx, "cache_rule", &containerservice.RegistryCacheRuleArgs{
/// 			Name:                pulumi.String("cacherule"),
/// 			ContainerRegistryId: acr.ID(),
/// 			TargetRepo:          pulumi.String("target"),
/// 			SourceRepo:          pulumi.String("docker.io/hello-world"),
/// 			CredentialSetId: acr.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("%v/credentialSets/example", id), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.azure.containerservice.RegistryCacheRule;
/// import com.pulumi.azure.containerservice.RegistryCacheRuleArgs;
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
///         var acr = new Registry("acr", RegistryArgs.builder()
///             .name("containerRegistry1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Basic")
///             .build());
///
///         var cacheRule = new RegistryCacheRule("cacheRule", RegistryCacheRuleArgs.builder()
///             .name("cacherule")
///             .containerRegistryId(acr.id())
///             .targetRepo("target")
///             .sourceRepo("docker.io/hello-world")
///             .credentialSetId(acr.id().applyValue(_id -> String.format("%s/credentialSets/example", _id)))
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
///   acr:
///     type: azure:containerservice:Registry
///     properties:
///       name: containerRegistry1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Basic
///   cacheRule:
///     type: azure:containerservice:RegistryCacheRule
///     name: cache_rule
///     properties:
///       name: cacherule
///       containerRegistryId: ${acr.id}
///       targetRepo: target
///       sourceRepo: docker.io/hello-world
///       credentialSetId: ${acr.id}/credentialSets/example
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2023-07-01
///
/// ## Import
///
/// Container Registry Cache Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/registryCacheRule:RegistryCacheRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/cacheRules/myCacheRule
/// ```
class RegistryCacheRule extends pulumi.CustomResource {
  /// The ID of the Container Registry where the Cache Rule should apply. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerRegistryId;
  /// The ARM resource ID of the Credential Store which is associated with the Cache Rule.
  late final pulumi.Output<String?> credentialSetId;
  /// Specifies the name of the Container Registry Cache Rule. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the source repository path. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceRepo;
  /// The name of the new repository path to store artifacts. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetRepo;

  /// Creates a new [RegistryCacheRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryCacheRule]. {@macro pulumi_containerservice_registry_cache_rule_registry_cache_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryCacheRule(
    String name, {
    RegistryCacheRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryCacheRule:RegistryCacheRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerRegistryId = registerOutput<String>('containerRegistryId');
    this.credentialSetId = registerOutput<String?>('credentialSetId');
    this.name = registerOutput<String>('name');
    this.sourceRepo = registerOutput<String>('sourceRepo');
    this.targetRepo = registerOutput<String>('targetRepo');
  }
}
