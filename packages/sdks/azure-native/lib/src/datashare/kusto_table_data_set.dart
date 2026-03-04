import 'package:pulumi/pulumi.dart' as pulumi;
import 'kusto_table_data_set_args.dart';
import 'system_data_response.dart';
import 'table_level_sharing_properties_response.dart';

/// A kusto table data set.
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataSets_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoTableDataSet = new AzureNative.DataShare.KustoTableDataSet("kustoTableDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewKustoTableDataSet(ctx, "kustoTableDataSet", &datashare.KustoTableDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSet;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetArgs;
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
///         var kustoTableDataSet = new KustoTableDataSet("kustoTableDataSet", KustoTableDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const kustoTableDataSet = new azure_native.datashare.KustoTableDataSet("kustoTableDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_table_data_set = azure_native.datashare.KustoTableDataSet("kustoTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSet:
///     type: azure-native:datashare:KustoTableDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_KustoCluster_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoTableDataSet = new AzureNative.DataShare.KustoTableDataSet("kustoTableDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewKustoTableDataSet(ctx, "kustoTableDataSet", &datashare.KustoTableDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSet;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetArgs;
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
///         var kustoTableDataSet = new KustoTableDataSet("kustoTableDataSet", KustoTableDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const kustoTableDataSet = new azure_native.datashare.KustoTableDataSet("kustoTableDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_table_data_set = azure_native.datashare.KustoTableDataSet("kustoTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSet:
///     type: azure-native:datashare:KustoTableDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_KustoDatabase_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoTableDataSet = new AzureNative.DataShare.KustoTableDataSet("kustoTableDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewKustoTableDataSet(ctx, "kustoTableDataSet", &datashare.KustoTableDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSet;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetArgs;
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
///         var kustoTableDataSet = new KustoTableDataSet("kustoTableDataSet", KustoTableDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const kustoTableDataSet = new azure_native.datashare.KustoTableDataSet("kustoTableDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_table_data_set = azure_native.datashare.KustoTableDataSet("kustoTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSet:
///     type: azure-native:datashare:KustoTableDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_KustoTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoTableDataSet = new AzureNative.DataShare.KustoTableDataSet("kustoTableDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         Kind = "KustoTable",
///         KustoDatabaseResourceId = "/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Kusto/clusters/Cluster1/databases/Database1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
///         TableLevelSharingProperties = new AzureNative.DataShare.Inputs.TableLevelSharingPropertiesArgs
///         {
///             ExternalTablesToExclude = new[]
///             {
///                 "test11",
///                 "test12",
///             },
///             ExternalTablesToInclude = new[]
///             {
///                 "test9",
///                 "test10",
///             },
///             MaterializedViewsToExclude = new[]
///             {
///                 "test7",
///                 "test8",
///             },
///             MaterializedViewsToInclude = new[]
///             {
///                 "test5",
///                 "test6",
///             },
///             TablesToExclude = new[]
///             {
///                 "test3",
///                 "test4",
///             },
///             TablesToInclude = new[]
///             {
///                 "test1",
///                 "test2",
///             },
///         },
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
/// 		_, err := datashare.NewKustoTableDataSet(ctx, "kustoTableDataSet", &datashare.KustoTableDataSetArgs{
/// 			AccountName:             pulumi.String("Account1"),
/// 			DataSetName:             pulumi.String("Dataset1"),
/// 			Kind:                    pulumi.String("KustoTable"),
/// 			KustoDatabaseResourceId: pulumi.String("/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Kusto/clusters/Cluster1/databases/Database1"),
/// 			ResourceGroupName:       pulumi.String("SampleResourceGroup"),
/// 			ShareName:               pulumi.String("Share1"),
/// 			TableLevelSharingProperties: &datashare.TableLevelSharingPropertiesArgs{
/// 				ExternalTablesToExclude: pulumi.StringArray{
/// 					pulumi.String("test11"),
/// 					pulumi.String("test12"),
/// 				},
/// 				ExternalTablesToInclude: pulumi.StringArray{
/// 					pulumi.String("test9"),
/// 					pulumi.String("test10"),
/// 				},
/// 				MaterializedViewsToExclude: pulumi.StringArray{
/// 					pulumi.String("test7"),
/// 					pulumi.String("test8"),
/// 				},
/// 				MaterializedViewsToInclude: pulumi.StringArray{
/// 					pulumi.String("test5"),
/// 					pulumi.String("test6"),
/// 				},
/// 				TablesToExclude: pulumi.StringArray{
/// 					pulumi.String("test3"),
/// 					pulumi.String("test4"),
/// 				},
/// 				TablesToInclude: pulumi.StringArray{
/// 					pulumi.String("test1"),
/// 					pulumi.String("test2"),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSet;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetArgs;
/// import com.pulumi.azurenative.datashare.inputs.TableLevelSharingPropertiesArgs;
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
///         var kustoTableDataSet = new KustoTableDataSet("kustoTableDataSet", KustoTableDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .kind("KustoTable")
///             .kustoDatabaseResourceId("/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Kusto/clusters/Cluster1/databases/Database1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
///             .tableLevelSharingProperties(TableLevelSharingPropertiesArgs.builder()
///                 .externalTablesToExclude(
///                     "test11",
///                     "test12")
///                 .externalTablesToInclude(
///                     "test9",
///                     "test10")
///                 .materializedViewsToExclude(
///                     "test7",
///                     "test8")
///                 .materializedViewsToInclude(
///                     "test5",
///                     "test6")
///                 .tablesToExclude(
///                     "test3",
///                     "test4")
///                 .tablesToInclude(
///                     "test1",
///                     "test2")
///                 .build())
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
/// const kustoTableDataSet = new azure_native.datashare.KustoTableDataSet("kustoTableDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     kind: "KustoTable",
///     kustoDatabaseResourceId: "/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Kusto/clusters/Cluster1/databases/Database1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
///     tableLevelSharingProperties: {
///         externalTablesToExclude: [
///             "test11",
///             "test12",
///         ],
///         externalTablesToInclude: [
///             "test9",
///             "test10",
///         ],
///         materializedViewsToExclude: [
///             "test7",
///             "test8",
///         ],
///         materializedViewsToInclude: [
///             "test5",
///             "test6",
///         ],
///         tablesToExclude: [
///             "test3",
///             "test4",
///         ],
///         tablesToInclude: [
///             "test1",
///             "test2",
///         ],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_table_data_set = azure_native.datashare.KustoTableDataSet("kustoTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     kind="KustoTable",
///     kusto_database_resource_id="/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Kusto/clusters/Cluster1/databases/Database1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1",
///     table_level_sharing_properties={
///         "external_tables_to_exclude": [
///             "test11",
///             "test12",
///         ],
///         "external_tables_to_include": [
///             "test9",
///             "test10",
///         ],
///         "materialized_views_to_exclude": [
///             "test7",
///             "test8",
///         ],
///         "materialized_views_to_include": [
///             "test5",
///             "test6",
///         ],
///         "tables_to_exclude": [
///             "test3",
///             "test4",
///         ],
///         "tables_to_include": [
///             "test1",
///             "test2",
///         ],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSet:
///     type: azure-native:datashare:KustoTableDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       kind: KustoTable
///       kustoDatabaseResourceId: /subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Kusto/clusters/Cluster1/databases/Database1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///       tableLevelSharingProperties:
///         externalTablesToExclude:
///           - test11
///           - test12
///         externalTablesToInclude:
///           - test9
///           - test10
///         materializedViewsToExclude:
///           - test7
///           - test8
///         materializedViewsToInclude:
///           - test5
///           - test6
///         tablesToExclude:
///           - test3
///           - test4
///         tablesToInclude:
///           - test1
///           - test2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_SqlDBTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoTableDataSet = new AzureNative.DataShare.KustoTableDataSet("kustoTableDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewKustoTableDataSet(ctx, "kustoTableDataSet", &datashare.KustoTableDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSet;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetArgs;
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
///         var kustoTableDataSet = new KustoTableDataSet("kustoTableDataSet", KustoTableDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const kustoTableDataSet = new azure_native.datashare.KustoTableDataSet("kustoTableDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_table_data_set = azure_native.datashare.KustoTableDataSet("kustoTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSet:
///     type: azure-native:datashare:KustoTableDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_SqlDWTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoTableDataSet = new AzureNative.DataShare.KustoTableDataSet("kustoTableDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewKustoTableDataSet(ctx, "kustoTableDataSet", &datashare.KustoTableDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSet;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetArgs;
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
///         var kustoTableDataSet = new KustoTableDataSet("kustoTableDataSet", KustoTableDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const kustoTableDataSet = new azure_native.datashare.KustoTableDataSet("kustoTableDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_table_data_set = azure_native.datashare.KustoTableDataSet("kustoTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSet:
///     type: azure-native:datashare:KustoTableDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_SynapseWorkspaceSqlPoolTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoTableDataSet = new AzureNative.DataShare.KustoTableDataSet("kustoTableDataSet", new()
///     {
///         AccountName = "sourceAccount",
///         DataSetName = "dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "share1",
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
/// 		_, err := datashare.NewKustoTableDataSet(ctx, "kustoTableDataSet", &datashare.KustoTableDataSetArgs{
/// 			AccountName:       pulumi.String("sourceAccount"),
/// 			DataSetName:       pulumi.String("dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("share1"),
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
/// import com.pulumi.azurenative.datashare.KustoTableDataSet;
/// import com.pulumi.azurenative.datashare.KustoTableDataSetArgs;
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
///         var kustoTableDataSet = new KustoTableDataSet("kustoTableDataSet", KustoTableDataSetArgs.builder()
///             .accountName("sourceAccount")
///             .dataSetName("dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("share1")
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
/// const kustoTableDataSet = new azure_native.datashare.KustoTableDataSet("kustoTableDataSet", {
///     accountName: "sourceAccount",
///     dataSetName: "dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_table_data_set = azure_native.datashare.KustoTableDataSet("kustoTableDataSet",
///     account_name="sourceAccount",
///     data_set_name="dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="share1")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoTableDataSet:
///     type: azure-native:datashare:KustoTableDataSet
///     properties:
///       accountName: sourceAccount
///       dataSetName: dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: share1
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
/// $ pulumi import azure-native:datashare:KustoTableDataSet dataset1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}/dataSets/{dataSetName}
/// ```
class KustoTableDataSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Unique id for identifying a data set resource
  late final pulumi.Output<String> dataSetId;

  /// Kind of data set.
  /// Expected value is 'KustoTable'.
  late final pulumi.Output<String> kind;

  /// Resource id of the kusto database.
  late final pulumi.Output<String> kustoDatabaseResourceId;

  /// Location of the kusto cluster.
  late final pulumi.Output<String> location;

  /// Name of the azure resource
  late final pulumi.Output<String> name;

  /// Provisioning state of the kusto table data set.
  late final pulumi.Output<String> provisioningState;

  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Table level sharing properties for kusto database
  late final pulumi.Output<TableLevelSharingPropertiesResponse>
  tableLevelSharingProperties;

  /// Type of the azure resource
  late final pulumi.Output<String> type;

  /// Creates a new [KustoTableDataSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KustoTableDataSet]. {@macro pulumi_datashare_kusto_table_data_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KustoTableDataSet(
    String name, {
    KustoTableDataSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datashare:KustoTableDataSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataSetId = registerOutput<String>('dataSetId');
    kind = registerOutput<String>('kind');
    kustoDatabaseResourceId = registerOutput<String>('kustoDatabaseResourceId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tableLevelSharingProperties =
        registerOutput<TableLevelSharingPropertiesResponse>(
          'tableLevelSharingProperties',
        );
    type = registerOutput<String>('type');
  }
}
