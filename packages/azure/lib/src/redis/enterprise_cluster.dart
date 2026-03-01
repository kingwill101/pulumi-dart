import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_cluster_args.dart';

/// Manages a Redis Enterprise Cluster.
///
/// > **Note:** This resource has been deprecated in favor of azurerm_managed_redis.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-redisenterprise",
///     location: "West Europe",
/// });
/// const exampleEnterpriseCluster = new azure.redis.EnterpriseCluster("example", {
///     name: "example-redisenterprise",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "EnterpriseFlash_F300-3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-redisenterprise",
///     location="West Europe")
/// example_enterprise_cluster = azure.redis.EnterpriseCluster("example",
///     name="example-redisenterprise",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="EnterpriseFlash_F300-3")
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
///         Name = "example-redisenterprise",
///         Location = "West Europe",
///     });
///
///     var exampleEnterpriseCluster = new Azure.Redis.EnterpriseCluster("example", new()
///     {
///         Name = "example-redisenterprise",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "EnterpriseFlash_F300-3",
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
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-redisenterprise"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewEnterpriseCluster(ctx, "example", &redis.EnterpriseClusterArgs{
/// 			Name:              pulumi.String("example-redisenterprise"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("EnterpriseFlash_F300-3"),
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
/// import com.pulumi.azure.redis.EnterpriseCluster;
/// import com.pulumi.azure.redis.EnterpriseClusterArgs;
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
///             .name("example-redisenterprise")
///             .location("West Europe")
///             .build());
///
///         var exampleEnterpriseCluster = new EnterpriseCluster("exampleEnterpriseCluster", EnterpriseClusterArgs.builder()
///             .name("example-redisenterprise")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("EnterpriseFlash_F300-3")
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
///       name: example-redisenterprise
///       location: West Europe
///   exampleEnterpriseCluster:
///     type: azure:redis:EnterpriseCluster
///     name: example
///     properties:
///       name: example-redisenterprise
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: EnterpriseFlash_F300-3
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2024-10-01
///
/// ## Import
///
/// Redis Enterprise Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:redis/enterpriseCluster:EnterpriseCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redisEnterprise/cluster1
/// ```
class EnterpriseCluster extends pulumi.CustomResource {
  /// DNS name of the cluster endpoint.
  late final pulumi.Output<String> hostname;
  /// The Azure Region where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created.
  late final pulumi.Output<String> location;
  /// The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.2`. Changing this forces a new Redis Enterprise Cluster to be created.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  late final pulumi.Output<String?> minimumTlsVersion;
  /// The name which should be used for this Redis Enterprise Cluster. Changing this forces a new Redis Enterprise Cluster to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The `sku_name` is comprised of two segments separated by a hyphen (e.g. `Enterprise_E10-2`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Enterprise_E5`, `Enterprise_E10`, `Enterprise_E20`, `Enterprise_E50`, `Enterprise_E100`, `Enterprise_E200`, `Enterprise_E400`, `EnterpriseFlash_F300`, `EnterpriseFlash_F700` or `EnterpriseFlash_F1500`. The second segment defines the `capacity` of the `sku_name`, possible values for `Enteprise` SKUs are (`2`, `4`, `6`, ...). Possible values for `EnterpriseFlash` SKUs are (`3`, `9`, `15`, ...). Changing this forces a new Redis Enterprise Cluster to be created.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags which should be assigned to the Redis Enterprise Cluster.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies a list of Availability Zones in which this Redis Enterprise Cluster should be located. Changing this forces a new Redis Enterprise Cluster to be created.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [EnterpriseCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseCluster]. {@macro pulumi_redis_enterprise_cluster_enterprise_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseCluster(
    String name, {
    EnterpriseClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redis/enterpriseCluster:EnterpriseCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hostname = registerOutput<String>('hostname');
    this.location = registerOutput<String>('location');
    this.minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
