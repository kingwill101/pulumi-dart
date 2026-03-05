import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'throughput_pool_args.dart';

/// An Azure Cosmos DB Throughputpool.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDB ThroughputPool Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var throughputPool = new AzureNative.CosmosDB.ThroughputPool("throughputPool", new()
///     {
///         Location = "westus2",
///         MaxThroughput = 10000,
///         ResourceGroupName = "rg1",
///         Tags = null,
///         ThroughputPoolName = "tp1",
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewThroughputPool(ctx, "throughputPool", &cosmosdb.ThroughputPoolArgs{
/// 			Location:           pulumi.String("westus2"),
/// 			MaxThroughput:      pulumi.Int(10000),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			Tags:               pulumi.StringMap{},
/// 			ThroughputPoolName: pulumi.String("tp1"),
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
/// import com.pulumi.azurenative.cosmosdb.ThroughputPool;
/// import com.pulumi.azurenative.cosmosdb.ThroughputPoolArgs;
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
///         var throughputPool = new ThroughputPool("throughputPool", ThroughputPoolArgs.builder()
///             .location("westus2")
///             .maxThroughput(10000)
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
///             ))
///             .throughputPoolName("tp1")
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
/// const throughputPool = new azure_native.cosmosdb.ThroughputPool("throughputPool", {
///     location: "westus2",
///     maxThroughput: 10000,
///     resourceGroupName: "rg1",
///     tags: {},
///     throughputPoolName: "tp1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// throughput_pool = azure_native.cosmosdb.ThroughputPool("throughputPool",
///     location="westus2",
///     max_throughput=10000,
///     resource_group_name="rg1",
///     tags={},
///     throughput_pool_name="tp1")
///
/// ```
///
/// ```yaml
/// resources:
///   throughputPool:
///     type: azure-native:cosmosdb:ThroughputPool
///     properties:
///       location: westus2
///       maxThroughput: 10000
///       resourceGroupName: rg1
///       tags: {}
///       throughputPoolName: tp1
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
/// $ pulumi import azure-native:cosmosdb:ThroughputPool tp1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/throughputPools/{throughputPoolName}
/// ```
class ThroughputPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Value for throughput to be shared among CosmosDB resources in the pool.
  late final pulumi.Output<int?> maxThroughput;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// A provisioning state of the ThroughputPool.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ThroughputPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThroughputPool]. {@macro pulumi_cosmosdb_throughput_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThroughputPool(
    String name, {
    ThroughputPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:ThroughputPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    maxThroughput = registerOutput<int?>('maxThroughput');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
