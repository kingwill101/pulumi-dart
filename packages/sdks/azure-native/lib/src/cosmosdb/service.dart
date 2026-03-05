import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_transfer_service_resource_properties_response.dart';
import 'service_args.dart';

/// Properties for the database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-04-01-preview, 2021-07-01-preview, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataTransferServiceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.CosmosDB.Service("service", new()
///     {
///         AccountName = "ddb1",
///         Properties = new AzureNative.CosmosDB.Inputs.DataTransferServiceResourceCreateUpdatePropertiesArgs
///         {
///             InstanceCount = 1,
///             InstanceSize = AzureNative.CosmosDB.ServiceSize.Cosmos_D4s,
///             ServiceType = "DataTransfer",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "DataTransfer",
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
/// 		_, err := cosmosdb.NewService(ctx, "service", &cosmosdb.ServiceArgs{
/// 			AccountName: pulumi.String("ddb1"),
/// 			Properties: &cosmosdb.DataTransferServiceResourceCreateUpdatePropertiesArgs{
/// 				InstanceCount: pulumi.Int(1),
/// 				InstanceSize:  pulumi.String(cosmosdb.ServiceSize_Cosmos_D4s),
/// 				ServiceType:   pulumi.String("DataTransfer"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("DataTransfer"),
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
/// import com.pulumi.azurenative.cosmosdb.Service;
/// import com.pulumi.azurenative.cosmosdb.ServiceArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .accountName("ddb1")
///             .properties(DataTransferServiceResourceCreateUpdatePropertiesArgs.builder()
///                 .instanceCount(1)
///                 .instanceSize("Cosmos.D4s")
///                 .serviceType("DataTransfer")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("DataTransfer")
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
/// const service = new azure_native.cosmosdb.Service("service", {
///     accountName: "ddb1",
///     properties: {
///         instanceCount: 1,
///         instanceSize: azure_native.cosmosdb.ServiceSize.Cosmos_D4s,
///         serviceType: "DataTransfer",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "DataTransfer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.cosmosdb.Service("service",
///     account_name="ddb1",
///     properties={
///         "instance_count": 1,
///         "instance_size": azure_native.cosmosdb.ServiceSize.COSMOS_D4S,
///         "service_type": "DataTransfer",
///     },
///     resource_group_name="rg1",
///     service_name="DataTransfer")
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:cosmosdb:Service
///     properties:
///       accountName: ddb1
///       properties:
///         instanceCount: 1
///         instanceSize: Cosmos.D4s
///         serviceType: DataTransfer
///       resourceGroupName: rg1
///       serviceName: DataTransfer
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### GraphAPIComputeServiceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.CosmosDB.Service("service", new()
///     {
///         AccountName = "ddb1",
///         Properties = new AzureNative.CosmosDB.Inputs.GraphAPIComputeServiceResourceCreateUpdatePropertiesArgs
///         {
///             InstanceCount = 1,
///             InstanceSize = AzureNative.CosmosDB.ServiceSize.Cosmos_D4s,
///             ServiceType = "GraphAPICompute",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "GraphAPICompute",
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
/// 		_, err := cosmosdb.NewService(ctx, "service", &cosmosdb.ServiceArgs{
/// 			AccountName: pulumi.String("ddb1"),
/// 			Properties: &cosmosdb.GraphAPIComputeServiceResourceCreateUpdatePropertiesArgs{
/// 				InstanceCount: pulumi.Int(1),
/// 				InstanceSize:  pulumi.String(cosmosdb.ServiceSize_Cosmos_D4s),
/// 				ServiceType:   pulumi.String("GraphAPICompute"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("GraphAPICompute"),
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
/// import com.pulumi.azurenative.cosmosdb.Service;
/// import com.pulumi.azurenative.cosmosdb.ServiceArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .accountName("ddb1")
///             .properties(GraphAPIComputeServiceResourceCreateUpdatePropertiesArgs.builder()
///                 .instanceCount(1)
///                 .instanceSize("Cosmos.D4s")
///                 .serviceType("GraphAPICompute")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("GraphAPICompute")
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
/// const service = new azure_native.cosmosdb.Service("service", {
///     accountName: "ddb1",
///     properties: {
///         instanceCount: 1,
///         instanceSize: azure_native.cosmosdb.ServiceSize.Cosmos_D4s,
///         serviceType: "GraphAPICompute",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "GraphAPICompute",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.cosmosdb.Service("service",
///     account_name="ddb1",
///     properties={
///         "instance_count": 1,
///         "instance_size": azure_native.cosmosdb.ServiceSize.COSMOS_D4S,
///         "service_type": "GraphAPICompute",
///     },
///     resource_group_name="rg1",
///     service_name="GraphAPICompute")
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:cosmosdb:Service
///     properties:
///       accountName: ddb1
///       properties:
///         instanceCount: 1
///         instanceSize: Cosmos.D4s
///         serviceType: GraphAPICompute
///       resourceGroupName: rg1
///       serviceName: GraphAPICompute
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### MaterializedViewsBuilderServiceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.CosmosDB.Service("service", new()
///     {
///         AccountName = "ddb1",
///         Properties = new AzureNative.CosmosDB.Inputs.MaterializedViewsBuilderServiceResourceCreateUpdatePropertiesArgs
///         {
///             InstanceCount = 1,
///             InstanceSize = AzureNative.CosmosDB.ServiceSize.Cosmos_D4s,
///             ServiceType = "MaterializedViewsBuilder",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "MaterializedViewsBuilder",
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
/// 		_, err := cosmosdb.NewService(ctx, "service", &cosmosdb.ServiceArgs{
/// 			AccountName: pulumi.String("ddb1"),
/// 			Properties: &cosmosdb.MaterializedViewsBuilderServiceResourceCreateUpdatePropertiesArgs{
/// 				InstanceCount: pulumi.Int(1),
/// 				InstanceSize:  pulumi.String(cosmosdb.ServiceSize_Cosmos_D4s),
/// 				ServiceType:   pulumi.String("MaterializedViewsBuilder"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("MaterializedViewsBuilder"),
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
/// import com.pulumi.azurenative.cosmosdb.Service;
/// import com.pulumi.azurenative.cosmosdb.ServiceArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .accountName("ddb1")
///             .properties(MaterializedViewsBuilderServiceResourceCreateUpdatePropertiesArgs.builder()
///                 .instanceCount(1)
///                 .instanceSize("Cosmos.D4s")
///                 .serviceType("MaterializedViewsBuilder")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("MaterializedViewsBuilder")
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
/// const service = new azure_native.cosmosdb.Service("service", {
///     accountName: "ddb1",
///     properties: {
///         instanceCount: 1,
///         instanceSize: azure_native.cosmosdb.ServiceSize.Cosmos_D4s,
///         serviceType: "MaterializedViewsBuilder",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "MaterializedViewsBuilder",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.cosmosdb.Service("service",
///     account_name="ddb1",
///     properties={
///         "instance_count": 1,
///         "instance_size": azure_native.cosmosdb.ServiceSize.COSMOS_D4S,
///         "service_type": "MaterializedViewsBuilder",
///     },
///     resource_group_name="rg1",
///     service_name="MaterializedViewsBuilder")
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:cosmosdb:Service
///     properties:
///       accountName: ddb1
///       properties:
///         instanceCount: 1
///         instanceSize: Cosmos.D4s
///         serviceType: MaterializedViewsBuilder
///       resourceGroupName: rg1
///       serviceName: MaterializedViewsBuilder
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SqlDedicatedGatewayServiceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.CosmosDB.Service("service", new()
///     {
///         AccountName = "ddb1",
///         Properties = new AzureNative.CosmosDB.Inputs.SqlDedicatedGatewayServiceResourceCreateUpdatePropertiesArgs
///         {
///             DedicatedGatewayType = AzureNative.CosmosDB.DedicatedGatewayType.IntegratedCache,
///             InstanceCount = 1,
///             InstanceSize = AzureNative.CosmosDB.ServiceSize.Cosmos_D4s,
///             ServiceType = "SqlDedicatedGateway",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "SqlDedicatedGateway",
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
/// 		_, err := cosmosdb.NewService(ctx, "service", &cosmosdb.ServiceArgs{
/// 			AccountName: pulumi.String("ddb1"),
/// 			Properties: &cosmosdb.SqlDedicatedGatewayServiceResourceCreateUpdatePropertiesArgs{
/// 				DedicatedGatewayType: pulumi.String(cosmosdb.DedicatedGatewayTypeIntegratedCache),
/// 				InstanceCount:        pulumi.Int(1),
/// 				InstanceSize:         pulumi.String(cosmosdb.ServiceSize_Cosmos_D4s),
/// 				ServiceType:          pulumi.String("SqlDedicatedGateway"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("SqlDedicatedGateway"),
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
/// import com.pulumi.azurenative.cosmosdb.Service;
/// import com.pulumi.azurenative.cosmosdb.ServiceArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .accountName("ddb1")
///             .properties(SqlDedicatedGatewayServiceResourceCreateUpdatePropertiesArgs.builder()
///                 .dedicatedGatewayType("IntegratedCache")
///                 .instanceCount(1)
///                 .instanceSize("Cosmos.D4s")
///                 .serviceType("SqlDedicatedGateway")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("SqlDedicatedGateway")
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
/// const service = new azure_native.cosmosdb.Service("service", {
///     accountName: "ddb1",
///     properties: {
///         dedicatedGatewayType: azure_native.cosmosdb.DedicatedGatewayType.IntegratedCache,
///         instanceCount: 1,
///         instanceSize: azure_native.cosmosdb.ServiceSize.Cosmos_D4s,
///         serviceType: "SqlDedicatedGateway",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "SqlDedicatedGateway",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.cosmosdb.Service("service",
///     account_name="ddb1",
///     properties={
///         "dedicated_gateway_type": azure_native.cosmosdb.DedicatedGatewayType.INTEGRATED_CACHE,
///         "instance_count": 1,
///         "instance_size": azure_native.cosmosdb.ServiceSize.COSMOS_D4S,
///         "service_type": "SqlDedicatedGateway",
///     },
///     resource_group_name="rg1",
///     service_name="SqlDedicatedGateway")
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:cosmosdb:Service
///     properties:
///       accountName: ddb1
///       properties:
///         dedicatedGatewayType: IntegratedCache
///         instanceCount: 1
///         instanceSize: Cosmos.D4s
///         serviceType: SqlDedicatedGateway
///       resourceGroupName: rg1
///       serviceName: SqlDedicatedGateway
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
/// $ pulumi import azure-native:cosmosdb:Service SqlDedicatedGateway /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/services/{serviceName}
/// ```
class Service extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the database account.
  late final pulumi.Output<String> name;

  /// Services response resource.
  late final pulumi.Output<DataTransferServiceResourcePropertiesResponse>
  properties;

  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_cosmosdb_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:Service',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataTransferServiceResourcePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DataTransferServiceResourcePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
