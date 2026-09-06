import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_map_args.dart';
import 'system_data_response.dart';

/// An object that represents a scope map for a container registry.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ScopeMapCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scopeMap = new AzureNative.ContainerRegistry.ScopeMap("scopeMap", new()
///     {
///         Actions = new[]
///         {
///             "repositories/myrepository/contentWrite",
///             "repositories/myrepository/delete",
///         },
///         Description = "Developer Scopes",
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         ScopeMapName = "myScopeMap",
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
/// 		_, err := containerregistry.NewScopeMap(ctx, "scopeMap", &containerregistry.ScopeMapArgs{
/// 			Actions: pulumi.StringArray{
/// 				pulumi.String("repositories/myrepository/contentWrite"),
/// 				pulumi.String("repositories/myrepository/delete"),
/// 			},
/// 			Description:       pulumi.String("Developer Scopes"),
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ScopeMapName:      pulumi.String("myScopeMap"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerregistry_scopemap" "scopeMap" {
///   actions             = ["repositories/myrepository/contentWrite", "repositories/myrepository/delete"]
///   description         = "Developer Scopes"
///   registry_name       = "myRegistry"
///   resource_group_name = "myResourceGroup"
///   scope_map_name      = "myScopeMap"
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
/// import com.pulumi.azurenative.containerregistry.ScopeMap;
/// import com.pulumi.azurenative.containerregistry.ScopeMapArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var scopeMap = new ScopeMap("scopeMap", ScopeMapArgs.builder()
///             .actions(
///                 "repositories/myrepository/contentWrite",
///                 "repositories/myrepository/delete")
///             .description("Developer Scopes")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .scopeMapName("myScopeMap")
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
/// const scopeMap = new azure_native.containerregistry.ScopeMap("scopeMap", {
///     actions: [
///         "repositories/myrepository/contentWrite",
///         "repositories/myrepository/delete",
///     ],
///     description: "Developer Scopes",
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     scopeMapName: "myScopeMap",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scope_map = azure_native.containerregistry.ScopeMap("scopeMap",
///     actions=[
///         "repositories/myrepository/contentWrite",
///         "repositories/myrepository/delete",
///     ],
///     description="Developer Scopes",
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     scope_map_name="myScopeMap")
///
/// ```
///
/// ```yaml
/// resources:
///   scopeMap:
///     type: azure-native:containerregistry:ScopeMap
///     properties:
///       actions:
///         - repositories/myrepository/contentWrite
///         - repositories/myrepository/delete
///       description: Developer Scopes
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       scopeMapName: myScopeMap
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
/// $ pulumi import azure-native:containerregistry:ScopeMap myScopeMap /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/scopeMaps/{scopeMapName}
/// ```
class ScopeMap extends pulumi.CustomResource {
  /// The list of scoped permissions for registry artifacts.
  /// E.g. repositories/repository-name/content/read,
  /// repositories/repository-name/metadata/write
  late final pulumi.Output<List<String>> actions;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of scope map.
  late final pulumi.Output<String> creationDate;
  /// The user friendly description of the scope map.
  late final pulumi.Output<String?> description;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ScopeMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScopeMap]. {@macro pulumi_containerregistry_scope_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScopeMap(
    String name, {
    ScopeMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:ScopeMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<String>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ScopeMap] resource.
  ScopeMap.reference(String urn)
    : super(
        'azure-native:containerregistry:ScopeMap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<String>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
