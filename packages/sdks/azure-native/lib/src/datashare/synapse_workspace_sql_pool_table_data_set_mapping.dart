import 'package:pulumi/pulumi.dart' as pulumi;
import 'synapse_workspace_sql_pool_table_data_set_mapping_args.dart';
import 'system_data_response.dart';

/// A Synapse Workspace Sql Pool Table data set mapping
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataSetMappings_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var synapseWorkspaceSqlPoolTableDataSetMapping = new AzureNative.DataShare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", new()
///     {
///         AccountName = "Account1",
///         DataSetMappingName = "DatasetMapping1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewSynapseWorkspaceSqlPoolTableDataSetMapping(ctx, "synapseWorkspaceSqlPoolTableDataSetMapping", &datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			DataSetMappingName:    pulumi.String("DatasetMapping1"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
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
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs;
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
///         var synapseWorkspaceSqlPoolTableDataSetMapping = new SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", SynapseWorkspaceSqlPoolTableDataSetMappingArgs.builder()
///             .accountName("Account1")
///             .dataSetMappingName("DatasetMapping1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
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
/// const synapseWorkspaceSqlPoolTableDataSetMapping = new azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", {
///     accountName: "Account1",
///     dataSetMappingName: "DatasetMapping1",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// synapse_workspace_sql_pool_table_data_set_mapping = azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   synapseWorkspaceSqlPoolTableDataSetMapping:
///     type: azure-native:datashare:SynapseWorkspaceSqlPoolTableDataSetMapping
///     properties:
///       accountName: Account1
///       dataSetMappingName: DatasetMapping1
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSetMappings_SqlDB_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var synapseWorkspaceSqlPoolTableDataSetMapping = new AzureNative.DataShare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", new()
///     {
///         AccountName = "Account1",
///         DataSetMappingName = "DatasetMapping1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewSynapseWorkspaceSqlPoolTableDataSetMapping(ctx, "synapseWorkspaceSqlPoolTableDataSetMapping", &datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			DataSetMappingName:    pulumi.String("DatasetMapping1"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
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
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs;
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
///         var synapseWorkspaceSqlPoolTableDataSetMapping = new SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", SynapseWorkspaceSqlPoolTableDataSetMappingArgs.builder()
///             .accountName("Account1")
///             .dataSetMappingName("DatasetMapping1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
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
/// const synapseWorkspaceSqlPoolTableDataSetMapping = new azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", {
///     accountName: "Account1",
///     dataSetMappingName: "DatasetMapping1",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// synapse_workspace_sql_pool_table_data_set_mapping = azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   synapseWorkspaceSqlPoolTableDataSetMapping:
///     type: azure-native:datashare:SynapseWorkspaceSqlPoolTableDataSetMapping
///     properties:
///       accountName: Account1
///       dataSetMappingName: DatasetMapping1
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSetMappings_SqlDWDataSetToAdlsGen2File_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var synapseWorkspaceSqlPoolTableDataSetMapping = new AzureNative.DataShare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", new()
///     {
///         AccountName = "Account1",
///         DataSetMappingName = "DatasetMapping1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewSynapseWorkspaceSqlPoolTableDataSetMapping(ctx, "synapseWorkspaceSqlPoolTableDataSetMapping", &datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			DataSetMappingName:    pulumi.String("DatasetMapping1"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
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
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs;
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
///         var synapseWorkspaceSqlPoolTableDataSetMapping = new SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", SynapseWorkspaceSqlPoolTableDataSetMappingArgs.builder()
///             .accountName("Account1")
///             .dataSetMappingName("DatasetMapping1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
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
/// const synapseWorkspaceSqlPoolTableDataSetMapping = new azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", {
///     accountName: "Account1",
///     dataSetMappingName: "DatasetMapping1",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// synapse_workspace_sql_pool_table_data_set_mapping = azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   synapseWorkspaceSqlPoolTableDataSetMapping:
///     type: azure-native:datashare:SynapseWorkspaceSqlPoolTableDataSetMapping
///     properties:
///       accountName: Account1
///       dataSetMappingName: DatasetMapping1
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSetMappings_SqlDW_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var synapseWorkspaceSqlPoolTableDataSetMapping = new AzureNative.DataShare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", new()
///     {
///         AccountName = "Account1",
///         DataSetMappingName = "DatasetMapping1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewSynapseWorkspaceSqlPoolTableDataSetMapping(ctx, "synapseWorkspaceSqlPoolTableDataSetMapping", &datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			DataSetMappingName:    pulumi.String("DatasetMapping1"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
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
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs;
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
///         var synapseWorkspaceSqlPoolTableDataSetMapping = new SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", SynapseWorkspaceSqlPoolTableDataSetMappingArgs.builder()
///             .accountName("Account1")
///             .dataSetMappingName("DatasetMapping1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
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
/// const synapseWorkspaceSqlPoolTableDataSetMapping = new azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", {
///     accountName: "Account1",
///     dataSetMappingName: "DatasetMapping1",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// synapse_workspace_sql_pool_table_data_set_mapping = azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   synapseWorkspaceSqlPoolTableDataSetMapping:
///     type: azure-native:datashare:SynapseWorkspaceSqlPoolTableDataSetMapping
///     properties:
///       accountName: Account1
///       dataSetMappingName: DatasetMapping1
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSetMappings_SynapseWorkspaceSqlPoolTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var synapseWorkspaceSqlPoolTableDataSetMapping = new AzureNative.DataShare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", new()
///     {
///         AccountName = "consumerAccount",
///         DataSetId = "3dc64e49-1fc3-4186-b3dc-d388c4d3076a",
///         DataSetMappingName = "datasetMappingName1",
///         Kind = "SynapseWorkspaceSqlPoolTable",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
///         SynapseWorkspaceSqlPoolTableResourceId = "/subscriptions/0f3dcfc3-18f8-4099-b381-8353e19d43a7/resourceGroups/SampleResourceGroup/providers/Microsoft.Synapse/workspaces/ExampleWorkspace/sqlPools/ExampleSqlPool/schemas/dbo/tables/table1",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewSynapseWorkspaceSqlPoolTableDataSetMapping(ctx, "synapseWorkspaceSqlPoolTableDataSetMapping", &datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs{
/// 			AccountName:                            pulumi.String("consumerAccount"),
/// 			DataSetId:                              pulumi.String("3dc64e49-1fc3-4186-b3dc-d388c4d3076a"),
/// 			DataSetMappingName:                     pulumi.String("datasetMappingName1"),
/// 			Kind:                                   pulumi.String("SynapseWorkspaceSqlPoolTable"),
/// 			ResourceGroupName:                      pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName:                  pulumi.String("ShareSubscription1"),
/// 			SynapseWorkspaceSqlPoolTableResourceId: pulumi.String("/subscriptions/0f3dcfc3-18f8-4099-b381-8353e19d43a7/resourceGroups/SampleResourceGroup/providers/Microsoft.Synapse/workspaces/ExampleWorkspace/sqlPools/ExampleSqlPool/schemas/dbo/tables/table1"),
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
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SynapseWorkspaceSqlPoolTableDataSetMappingArgs;
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
///         var synapseWorkspaceSqlPoolTableDataSetMapping = new SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", SynapseWorkspaceSqlPoolTableDataSetMappingArgs.builder()
///             .accountName("consumerAccount")
///             .dataSetId("3dc64e49-1fc3-4186-b3dc-d388c4d3076a")
///             .dataSetMappingName("datasetMappingName1")
///             .kind("SynapseWorkspaceSqlPoolTable")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
///             .synapseWorkspaceSqlPoolTableResourceId("/subscriptions/0f3dcfc3-18f8-4099-b381-8353e19d43a7/resourceGroups/SampleResourceGroup/providers/Microsoft.Synapse/workspaces/ExampleWorkspace/sqlPools/ExampleSqlPool/schemas/dbo/tables/table1")
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
/// const synapseWorkspaceSqlPoolTableDataSetMapping = new azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping", {
///     accountName: "consumerAccount",
///     dataSetId: "3dc64e49-1fc3-4186-b3dc-d388c4d3076a",
///     dataSetMappingName: "datasetMappingName1",
///     kind: "SynapseWorkspaceSqlPoolTable",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
///     synapseWorkspaceSqlPoolTableResourceId: "/subscriptions/0f3dcfc3-18f8-4099-b381-8353e19d43a7/resourceGroups/SampleResourceGroup/providers/Microsoft.Synapse/workspaces/ExampleWorkspace/sqlPools/ExampleSqlPool/schemas/dbo/tables/table1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// synapse_workspace_sql_pool_table_data_set_mapping = azure_native.datashare.SynapseWorkspaceSqlPoolTableDataSetMapping("synapseWorkspaceSqlPoolTableDataSetMapping",
///     account_name="consumerAccount",
///     data_set_id="3dc64e49-1fc3-4186-b3dc-d388c4d3076a",
///     data_set_mapping_name="datasetMappingName1",
///     kind="SynapseWorkspaceSqlPoolTable",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1",
///     synapse_workspace_sql_pool_table_resource_id="/subscriptions/0f3dcfc3-18f8-4099-b381-8353e19d43a7/resourceGroups/SampleResourceGroup/providers/Microsoft.Synapse/workspaces/ExampleWorkspace/sqlPools/ExampleSqlPool/schemas/dbo/tables/table1")
///
/// ```
///
/// ```yaml
/// resources:
///   synapseWorkspaceSqlPoolTableDataSetMapping:
///     type: azure-native:datashare:SynapseWorkspaceSqlPoolTableDataSetMapping
///     properties:
///       accountName: consumerAccount
///       dataSetId: 3dc64e49-1fc3-4186-b3dc-d388c4d3076a
///       dataSetMappingName: datasetMappingName1
///       kind: SynapseWorkspaceSqlPoolTable
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///       synapseWorkspaceSqlPoolTableResourceId: /subscriptions/0f3dcfc3-18f8-4099-b381-8353e19d43a7/resourceGroups/SampleResourceGroup/providers/Microsoft.Synapse/workspaces/ExampleWorkspace/sqlPools/ExampleSqlPool/schemas/dbo/tables/table1
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
/// $ pulumi import azure-native:datashare:SynapseWorkspaceSqlPoolTableDataSetMapping datasetMappingName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shareSubscriptions/{shareSubscriptionName}/dataSetMappings/{dataSetMappingName}
/// ```
class SynapseWorkspaceSqlPoolTableDataSetMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The id of the source data set.
  late final pulumi.Output<String> dataSetId;
  /// Gets the status of the data set mapping.
  late final pulumi.Output<String> dataSetMappingStatus;
  /// Kind of data set mapping.
  /// Expected value is 'SynapseWorkspaceSqlPoolTable'.
  late final pulumi.Output<String> kind;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the data set mapping.
  late final pulumi.Output<String> provisioningState;
  /// Resource id of the Synapse Workspace SQL Pool Table
  late final pulumi.Output<String> synapseWorkspaceSqlPoolTableResourceId;
  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the azure resource
  late final pulumi.Output<String> type;

  /// Creates a new [SynapseWorkspaceSqlPoolTableDataSetMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SynapseWorkspaceSqlPoolTableDataSetMapping]. {@macro pulumi_datashare_synapse_workspace_sql_pool_table_data_set_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SynapseWorkspaceSqlPoolTableDataSetMapping(
    String name, {
    SynapseWorkspaceSqlPoolTableDataSetMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:SynapseWorkspaceSqlPoolTableDataSetMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataSetId = registerOutput<String>('dataSetId');
    dataSetMappingStatus = registerOutput<String>('dataSetMappingStatus');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    synapseWorkspaceSqlPoolTableResourceId = registerOutput<String>('synapseWorkspaceSqlPoolTableResourceId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
