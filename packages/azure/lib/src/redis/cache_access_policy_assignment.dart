import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_access_policy_assignment_args.dart';

/// Manages a Redis Cache Access Policy Assignment
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "East US",
/// });
/// const exampleCache = new azure.redis.Cache("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     capacity: 1,
///     family: "P",
///     skuName: "Premium",
///     enableNonSslPort: false,
///     redisConfiguration: {
///         maxmemoryReserved: 2,
///         maxmemoryDelta: 2,
///         maxmemoryPolicy: "allkeys-lru",
///     },
/// });
/// const exampleCacheAccessPolicyAssignment = new azure.redis.CacheAccessPolicyAssignment("example", {
///     name: "example",
///     redisCacheId: exampleCache.id,
///     accessPolicyName: "Data Contributor",
///     objectId: test.then(test => test.objectId),
///     objectIdAlias: "ServicePrincipal",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="East US")
/// example_cache = azure.redis.Cache("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     capacity=1,
///     family="P",
///     sku_name="Premium",
///     enable_non_ssl_port=False,
///     redis_configuration={
///         "maxmemory_reserved": 2,
///         "maxmemory_delta": 2,
///         "maxmemory_policy": "allkeys-lru",
///     })
/// example_cache_access_policy_assignment = azure.redis.CacheAccessPolicyAssignment("example",
///     name="example",
///     redis_cache_id=example_cache.id,
///     access_policy_name="Data Contributor",
///     object_id=test.object_id,
///     object_id_alias="ServicePrincipal")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "East US",
///     });
///
///     var exampleCache = new Azure.Redis.Cache("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Capacity = 1,
///         Family = "P",
///         SkuName = "Premium",
///         EnableNonSslPort = false,
///         RedisConfiguration = new Azure.Redis.Inputs.CacheRedisConfigurationArgs
///         {
///             MaxmemoryReserved = 2,
///             MaxmemoryDelta = 2,
///             MaxmemoryPolicy = "allkeys-lru",
///         },
///     });
///
///     var exampleCacheAccessPolicyAssignment = new Azure.Redis.CacheAccessPolicyAssignment("example", new()
///     {
///         Name = "example",
///         RedisCacheId = exampleCache.Id,
///         AccessPolicyName = "Data Contributor",
///         ObjectId = test.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         ObjectIdAlias = "ServicePrincipal",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCache, err := redis.NewCache(ctx, "example", &redis.CacheArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Capacity:          pulumi.Int(1),
/// 			Family:            pulumi.String("P"),
/// 			SkuName:           pulumi.String("Premium"),
/// 			EnableNonSslPort:  false,
/// 			RedisConfiguration: &redis.CacheRedisConfigurationArgs{
/// 				MaxmemoryReserved: pulumi.Int(2),
/// 				MaxmemoryDelta:    pulumi.Int(2),
/// 				MaxmemoryPolicy:   pulumi.String("allkeys-lru"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewCacheAccessPolicyAssignment(ctx, "example", &redis.CacheAccessPolicyAssignmentArgs{
/// 			Name:             pulumi.String("example"),
/// 			RedisCacheId:     exampleCache.ID(),
/// 			AccessPolicyName: pulumi.String("Data Contributor"),
/// 			ObjectId:         pulumi.String(test.ObjectId),
/// 			ObjectIdAlias:    pulumi.String("ServicePrincipal"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.redis.Cache;
/// import com.pulumi.azure.redis.CacheArgs;
/// import com.pulumi.azure.redis.inputs.CacheRedisConfigurationArgs;
/// import com.pulumi.azure.redis.CacheAccessPolicyAssignment;
/// import com.pulumi.azure.redis.CacheAccessPolicyAssignmentArgs;
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
///         final var test = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("East US")
///             .build());
///
///         var exampleCache = new Cache("exampleCache", CacheArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .capacity(1)
///             .family("P")
///             .skuName("Premium")
///             .enableNonSslPort(false)
///             .redisConfiguration(CacheRedisConfigurationArgs.builder()
///                 .maxmemoryReserved(2)
///                 .maxmemoryDelta(2)
///                 .maxmemoryPolicy("allkeys-lru")
///                 .build())
///             .build());
///
///         var exampleCacheAccessPolicyAssignment = new CacheAccessPolicyAssignment("exampleCacheAccessPolicyAssignment", CacheAccessPolicyAssignmentArgs.builder()
///             .name("example")
///             .redisCacheId(exampleCache.id())
///             .accessPolicyName("Data Contributor")
///             .objectId(test.objectId())
///             .objectIdAlias("ServicePrincipal")
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
///       location: East US
///   exampleCache:
///     type: azure:redis:Cache
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       capacity: 1
///       family: P
///       skuName: Premium
///       enableNonSslPort: false
///       redisConfiguration:
///         maxmemoryReserved: 2
///         maxmemoryDelta: 2
///         maxmemoryPolicy: allkeys-lru
///   exampleCacheAccessPolicyAssignment:
///     type: azure:redis:CacheAccessPolicyAssignment
///     name: example
///     properties:
///       name: example
///       redisCacheId: ${exampleCache.id}
///       accessPolicyName: Data Contributor
///       objectId: ${test.objectId}
///       objectIdAlias: ServicePrincipal
/// variables:
///   test:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2024-11-01
///
/// ## Import
///
/// Redis Cache Policy Assignment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:redis/cacheAccessPolicyAssignment:CacheAccessPolicyAssignment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redis/cache1/accessPolicyAssignments/assignment1
/// ```
class CacheAccessPolicyAssignment extends pulumi.CustomResource {
  /// The name of the Access Policy to be assigned. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  late final pulumi.Output<String> accessPolicyName;
  /// The name of the Redis Cache Access Policy Assignment. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  late final pulumi.Output<String> name;
  /// The principal ID to be assigned the Access Policy. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  late final pulumi.Output<String> objectId;
  /// The alias of the principal ID. User-friendly name for object ID. Also represents username for token based authentication. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  late final pulumi.Output<String> objectIdAlias;
  /// The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy Assignment to be created.
  late final pulumi.Output<String> redisCacheId;

  /// Creates a new [CacheAccessPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheAccessPolicyAssignment]. {@macro pulumi_redis_cache_access_policy_assignment_cache_access_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheAccessPolicyAssignment(
    String name, {
    CacheAccessPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/cacheAccessPolicyAssignment:CacheAccessPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicyName = registerOutput<String>('accessPolicyName');
    this.name = registerOutput<String>('name');
    this.objectId = registerOutput<String>('objectId');
    this.objectIdAlias = registerOutput<String>('objectIdAlias');
    this.redisCacheId = registerOutput<String>('redisCacheId');
  }
}
