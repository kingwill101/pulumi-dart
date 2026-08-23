import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_args.dart';

/// Cache details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateCache
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cache = new AzureNative.ApiManagement.Cache("cache", new()
///     {
///         CacheId = "c1",
///         ConnectionString = "apim.redis.cache.windows.net:6380,password=xc,ssl=True,abortConnect=False",
///         Description = "Redis cache instances in West India",
///         ResourceGroupName = "rg1",
///         ResourceId = "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/redis/apimservice1",
///         ServiceName = "apimService1",
///         UseFromLocation = "default",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewCache(ctx, "cache", &apimanagement.CacheArgs{
/// 			CacheId:           pulumi.String("c1"),
/// 			ConnectionString:  pulumi.String("apim.redis.cache.windows.net:6380,password=xc,ssl=True,abortConnect=False"),
/// 			Description:       pulumi.String("Redis cache instances in West India"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceId:        pulumi.String("https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/redis/apimservice1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			UseFromLocation:   pulumi.String("default"),
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
/// resource "azure-native_apimanagement_cache" "cache" {
///   cache_id            = "c1"
///   connection_string   = "apim.redis.cache.windows.net:6380,password=xc,ssl=True,abortConnect=False"
///   description         = "Redis cache instances in West India"
///   resource_group_name = "rg1"
///   resource_id         = "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/redis/apimservice1"
///   service_name        = "apimService1"
///   use_from_location   = "default"
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
/// import com.pulumi.azurenative.apimanagement.Cache;
/// import com.pulumi.azurenative.apimanagement.CacheArgs;
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
///         var cache = new Cache("cache", CacheArgs.builder()
///             .cacheId("c1")
///             .connectionString("apim.redis.cache.windows.net:6380,password=xc,ssl=True,abortConnect=False")
///             .description("Redis cache instances in West India")
///             .resourceGroupName("rg1")
///             .resourceId("https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/redis/apimservice1")
///             .serviceName("apimService1")
///             .useFromLocation("default")
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
/// const cache = new azure_native.apimanagement.Cache("cache", {
///     cacheId: "c1",
///     connectionString: "apim.redis.cache.windows.net:6380,password=xc,ssl=True,abortConnect=False",
///     description: "Redis cache instances in West India",
///     resourceGroupName: "rg1",
///     resourceId: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/redis/apimservice1",
///     serviceName: "apimService1",
///     useFromLocation: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cache = azure_native.apimanagement.Cache("cache",
///     cache_id="c1",
///     connection_string="apim.redis.cache.windows.net:6380,password=xc,ssl=True,abortConnect=False",
///     description="Redis cache instances in West India",
///     resource_group_name="rg1",
///     resource_id="https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/redis/apimservice1",
///     service_name="apimService1",
///     use_from_location="default")
///
/// ```
///
/// ```yaml
/// resources:
///   cache:
///     type: azure-native:apimanagement:Cache
///     properties:
///       cacheId: c1
///       connectionString: apim.redis.cache.windows.net:6380,password=xc,ssl=True,abortConnect=False
///       description: Redis cache instances in West India
///       resourceGroupName: rg1
///       resourceId: https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Cache/redis/apimservice1
///       serviceName: apimService1
///       useFromLocation: default
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
/// $ pulumi import azure-native:apimanagement:Cache c1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/caches/{cacheId}
/// ```
class Cache extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Runtime connection string to cache
  late final pulumi.Output<String> connectionString;
  /// Cache description
  late final pulumi.Output<String?> description;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Original uri of entity in external system cache points to
  late final pulumi.Output<String?> resourceId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Location identifier to use cache from (should be either 'default' or valid Azure region identifier)
  late final pulumi.Output<String> useFromLocation;

  /// Creates a new [Cache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cache]. {@macro pulumi_apimanagement_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cache(
    String name, {
    CacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Cache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionString = registerOutput<String>('connectionString');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    resourceId = registerOutput<String?>('resourceId');
    type = registerOutput<String>('type');
    useFromLocation = registerOutput<String>('useFromLocation');
  }
}
