import 'package:pulumi/pulumi.dart' as pulumi;
import 'kusto_table_data_set_mapping_args.dart';
import 'system_data_response.dart';

/// A Kusto database data set mapping
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
///     var kustoTableDataSetMapping = new AzureNative.DataShare.KustoTableDataSetMapping("kustoTableDataSetMapping", new()
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
/// 		_, err := datashare.NewKustoTableDataSetMapping(ctx, "kustoTableDataSetMapping", &datashare.KustoTableDataSetMappingArgs{
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMappingArgs;
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
///         var kustoTableDataSetMapping = new KustoTableDataSetMapping("kustoTableDataSetMapping", KustoTableDataSetMappingArgs.builder()
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
/// const kustoTableDataSetMapping = new azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping", {
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
/// kusto_table_data_set_mapping = azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSetMapping:
///     type: azure-native:datashare:KustoTableDataSetMapping
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
///     var kustoTableDataSetMapping = new AzureNative.DataShare.KustoTableDataSetMapping("kustoTableDataSetMapping", new()
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
/// 		_, err := datashare.NewKustoTableDataSetMapping(ctx, "kustoTableDataSetMapping", &datashare.KustoTableDataSetMappingArgs{
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMappingArgs;
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
///         var kustoTableDataSetMapping = new KustoTableDataSetMapping("kustoTableDataSetMapping", KustoTableDataSetMappingArgs.builder()
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
/// const kustoTableDataSetMapping = new azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping", {
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
/// kusto_table_data_set_mapping = azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSetMapping:
///     type: azure-native:datashare:KustoTableDataSetMapping
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
///     var kustoTableDataSetMapping = new AzureNative.DataShare.KustoTableDataSetMapping("kustoTableDataSetMapping", new()
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
/// 		_, err := datashare.NewKustoTableDataSetMapping(ctx, "kustoTableDataSetMapping", &datashare.KustoTableDataSetMappingArgs{
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMappingArgs;
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
///         var kustoTableDataSetMapping = new KustoTableDataSetMapping("kustoTableDataSetMapping", KustoTableDataSetMappingArgs.builder()
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
/// const kustoTableDataSetMapping = new azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping", {
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
/// kusto_table_data_set_mapping = azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSetMapping:
///     type: azure-native:datashare:KustoTableDataSetMapping
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
///     var kustoTableDataSetMapping = new AzureNative.DataShare.KustoTableDataSetMapping("kustoTableDataSetMapping", new()
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
/// 		_, err := datashare.NewKustoTableDataSetMapping(ctx, "kustoTableDataSetMapping", &datashare.KustoTableDataSetMappingArgs{
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMappingArgs;
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
///         var kustoTableDataSetMapping = new KustoTableDataSetMapping("kustoTableDataSetMapping", KustoTableDataSetMappingArgs.builder()
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
/// const kustoTableDataSetMapping = new azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping", {
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
/// kusto_table_data_set_mapping = azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSetMapping:
///     type: azure-native:datashare:KustoTableDataSetMapping
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
///     var kustoTableDataSetMapping = new AzureNative.DataShare.KustoTableDataSetMapping("kustoTableDataSetMapping", new()
///     {
///         AccountName = "consumerAccount",
///         DataSetMappingName = "datasetMappingName1",
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
/// 		_, err := datashare.NewKustoTableDataSetMapping(ctx, "kustoTableDataSetMapping", &datashare.KustoTableDataSetMappingArgs{
/// 			AccountName:           pulumi.String("consumerAccount"),
/// 			DataSetMappingName:    pulumi.String("datasetMappingName1"),
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetMappingArgs;
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
///         var kustoTableDataSetMapping = new KustoTableDataSetMapping("kustoTableDataSetMapping", KustoTableDataSetMappingArgs.builder()
///             .accountName("consumerAccount")
///             .dataSetMappingName("datasetMappingName1")
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
/// const kustoTableDataSetMapping = new azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping", {
///     accountName: "consumerAccount",
///     dataSetMappingName: "datasetMappingName1",
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
/// kusto_table_data_set_mapping = azure_native.datashare.KustoTableDataSetMapping("kustoTableDataSetMapping",
///     account_name="consumerAccount",
///     data_set_mapping_name="datasetMappingName1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSetMapping:
///     type: azure-native:datashare:KustoTableDataSetMapping
///     properties:
///       accountName: consumerAccount
///       dataSetMappingName: datasetMappingName1
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
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
/// $ pulumi import azure-native:datashare:KustoTableDataSetMapping datasetMappingName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shareSubscriptions/{shareSubscriptionName}/dataSetMappings/{dataSetMappingName}
/// ```
class KustoTableDataSetMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The id of the source data set.
  late final pulumi.Output<String> dataSetId;

  /// Gets the status of the data set mapping.
  late final pulumi.Output<String> dataSetMappingStatus;

  /// Kind of data set mapping.
  /// Expected value is 'KustoTable'.
  late final pulumi.Output<String> kind;

  /// Resource id of the sink kusto cluster.
  late final pulumi.Output<String> kustoClusterResourceId;

  /// Location of the sink kusto cluster.
  late final pulumi.Output<String> location;

  /// Name of the azure resource
  late final pulumi.Output<String> name;

  /// Provisioning state of the data set mapping.
  late final pulumi.Output<String> provisioningState;

  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Type of the azure resource
  late final pulumi.Output<String> type;

  /// Creates a new [KustoTableDataSetMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KustoTableDataSetMapping]. {@macro pulumi_datashare_kusto_table_data_set_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KustoTableDataSetMapping(
    String name, {
    KustoTableDataSetMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datashare:KustoTableDataSetMapping',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataSetId = registerOutput<String>('dataSetId');
    dataSetMappingStatus = registerOutput<String>('dataSetMappingStatus');
    kind = registerOutput<String>('kind');
    kustoClusterResourceId = registerOutput<String>('kustoClusterResourceId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
