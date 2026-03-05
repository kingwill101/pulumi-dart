import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_rule_args.dart';
import 'system_data_response.dart';

/// An object that represents a cache rule for a container registry.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CacheRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cacheRule = new AzureNative.ContainerRegistry.CacheRule("cacheRule", new()
///     {
///         CacheRuleName = "myCacheRule",
///         CredentialSetResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/credentialSets/myCredentialSet",
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         SourceRepository = "docker.io/library/hello-world",
///         TargetRepository = "cached-docker-hub/hello-world",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewCacheRule(ctx, "cacheRule", &containerregistry.CacheRuleArgs{
/// 			CacheRuleName:           pulumi.String("myCacheRule"),
/// 			CredentialSetResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/credentialSets/myCredentialSet"),
/// 			RegistryName:            pulumi.String("myRegistry"),
/// 			ResourceGroupName:       pulumi.String("myResourceGroup"),
/// 			SourceRepository:        pulumi.String("docker.io/library/hello-world"),
/// 			TargetRepository:        pulumi.String("cached-docker-hub/hello-world"),
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
/// import com.pulumi.azurenative.containerregistry.CacheRule;
/// import com.pulumi.azurenative.containerregistry.CacheRuleArgs;
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
///         var cacheRule = new CacheRule("cacheRule", CacheRuleArgs.builder()
///             .cacheRuleName("myCacheRule")
///             .credentialSetResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/credentialSets/myCredentialSet")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .sourceRepository("docker.io/library/hello-world")
///             .targetRepository("cached-docker-hub/hello-world")
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
/// const cacheRule = new azure_native.containerregistry.CacheRule("cacheRule", {
///     cacheRuleName: "myCacheRule",
///     credentialSetResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/credentialSets/myCredentialSet",
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     sourceRepository: "docker.io/library/hello-world",
///     targetRepository: "cached-docker-hub/hello-world",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cache_rule = azure_native.containerregistry.CacheRule("cacheRule",
///     cache_rule_name="myCacheRule",
///     credential_set_resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/credentialSets/myCredentialSet",
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     source_repository="docker.io/library/hello-world",
///     target_repository="cached-docker-hub/hello-world")
///
/// ```
///
/// ```yaml
/// resources:
///   cacheRule:
///     type: azure-native:containerregistry:CacheRule
///     properties:
///       cacheRuleName: myCacheRule
///       credentialSetResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/credentialSets/myCredentialSet
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       sourceRepository: docker.io/library/hello-world
///       targetRepository: cached-docker-hub/hello-world
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
/// $ pulumi import azure-native:containerregistry:CacheRule myCacheRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/cacheRules/{cacheRuleName}
/// ```
class CacheRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the cache rule.
  late final pulumi.Output<String> creationDate;
  /// The ARM resource ID of the credential store which is associated with the cache rule.
  late final pulumi.Output<String?> credentialSetResourceId;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Source repository pulled from upstream.
  late final pulumi.Output<String?> sourceRepository;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Target repository specified in docker pull command.
  /// Eg: docker pull myregistry.azurecr.io/{targetRepository}:{tag}
  late final pulumi.Output<String?> targetRepository;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CacheRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheRule]. {@macro pulumi_containerregistry_cache_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheRule(
    String name, {
    CacheRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:CacheRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    credentialSetResourceId = registerOutput<String?>('credentialSetResourceId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sourceRepository = registerOutput<String?>('sourceRepository');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetRepository = registerOutput<String?>('targetRepository');
    type = registerOutput<String>('type');
  }
}
