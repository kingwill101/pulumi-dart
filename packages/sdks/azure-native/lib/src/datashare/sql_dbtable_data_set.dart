import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_dbtable_data_set_args.dart';
import 'system_data_response.dart';

/// A SQL DB table data set.
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
///     var sqlDBTableDataSet = new AzureNative.DataShare.SqlDBTableDataSet("sqlDBTableDataSet", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSet(ctx, "sqlDBTableDataSet", &datashare.SqlDBTableDataSetArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datashare_sqldbtabledataset" "sqlDBTableDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSet;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetArgs;
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
///         var sqlDBTableDataSet = new SqlDBTableDataSet("sqlDBTableDataSet", SqlDBTableDataSetArgs.builder()
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
/// const sqlDBTableDataSet = new azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet", {
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
/// sql_db_table_data_set = azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSet:
///     type: azure-native:datashare:SqlDBTableDataSet
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
///     var sqlDBTableDataSet = new AzureNative.DataShare.SqlDBTableDataSet("sqlDBTableDataSet", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSet(ctx, "sqlDBTableDataSet", &datashare.SqlDBTableDataSetArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datashare_sqldbtabledataset" "sqlDBTableDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSet;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetArgs;
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
///         var sqlDBTableDataSet = new SqlDBTableDataSet("sqlDBTableDataSet", SqlDBTableDataSetArgs.builder()
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
/// const sqlDBTableDataSet = new azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet", {
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
/// sql_db_table_data_set = azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSet:
///     type: azure-native:datashare:SqlDBTableDataSet
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
///     var sqlDBTableDataSet = new AzureNative.DataShare.SqlDBTableDataSet("sqlDBTableDataSet", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSet(ctx, "sqlDBTableDataSet", &datashare.SqlDBTableDataSetArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datashare_sqldbtabledataset" "sqlDBTableDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSet;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetArgs;
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
///         var sqlDBTableDataSet = new SqlDBTableDataSet("sqlDBTableDataSet", SqlDBTableDataSetArgs.builder()
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
/// const sqlDBTableDataSet = new azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet", {
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
/// sql_db_table_data_set = azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSet:
///     type: azure-native:datashare:SqlDBTableDataSet
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
///     var sqlDBTableDataSet = new AzureNative.DataShare.SqlDBTableDataSet("sqlDBTableDataSet", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSet(ctx, "sqlDBTableDataSet", &datashare.SqlDBTableDataSetArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datashare_sqldbtabledataset" "sqlDBTableDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSet;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetArgs;
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
///         var sqlDBTableDataSet = new SqlDBTableDataSet("sqlDBTableDataSet", SqlDBTableDataSetArgs.builder()
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
/// const sqlDBTableDataSet = new azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet", {
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
/// sql_db_table_data_set = azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSet:
///     type: azure-native:datashare:SqlDBTableDataSet
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
/// ### DataSets_SqlDBTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlDBTableDataSet = new AzureNative.DataShare.SqlDBTableDataSet("sqlDBTableDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         DatabaseName = "SqlDB1",
///         Kind = "SqlDBTable",
///         ResourceGroupName = "SampleResourceGroup",
///         SchemaName = "dbo",
///         ShareName = "Share1",
///         SqlServerResourceId = "/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1",
///         TableName = "Table1",
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
/// 		_, err := datashare.NewSqlDBTableDataSet(ctx, "sqlDBTableDataSet", &datashare.SqlDBTableDataSetArgs{
/// 			AccountName:         pulumi.String("Account1"),
/// 			DataSetName:         pulumi.String("Dataset1"),
/// 			DatabaseName:        pulumi.String("SqlDB1"),
/// 			Kind:                pulumi.String("SqlDBTable"),
/// 			ResourceGroupName:   pulumi.String("SampleResourceGroup"),
/// 			SchemaName:          pulumi.String("dbo"),
/// 			ShareName:           pulumi.String("Share1"),
/// 			SqlServerResourceId: pulumi.String("/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1"),
/// 			TableName:           pulumi.String("Table1"),
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
/// resource "azure-native_datashare_sqldbtabledataset" "sqlDBTableDataSet" {
///   account_name           = "Account1"
///   data_set_name          = "Dataset1"
///   database_name          = "SqlDB1"
///   kind                   = "SqlDBTable"
///   resource_group_name    = "SampleResourceGroup"
///   schema_name            = "dbo"
///   share_name             = "Share1"
///   sql_server_resource_id = "/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1"
///   table_name             = "Table1"
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSet;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetArgs;
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
///         var sqlDBTableDataSet = new SqlDBTableDataSet("sqlDBTableDataSet", SqlDBTableDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .databaseName("SqlDB1")
///             .kind("SqlDBTable")
///             .resourceGroupName("SampleResourceGroup")
///             .schemaName("dbo")
///             .shareName("Share1")
///             .sqlServerResourceId("/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1")
///             .tableName("Table1")
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
/// const sqlDBTableDataSet = new azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     databaseName: "SqlDB1",
///     kind: "SqlDBTable",
///     resourceGroupName: "SampleResourceGroup",
///     schemaName: "dbo",
///     shareName: "Share1",
///     sqlServerResourceId: "/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1",
///     tableName: "Table1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_db_table_data_set = azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     database_name="SqlDB1",
///     kind="SqlDBTable",
///     resource_group_name="SampleResourceGroup",
///     schema_name="dbo",
///     share_name="Share1",
///     sql_server_resource_id="/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1",
///     table_name="Table1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSet:
///     type: azure-native:datashare:SqlDBTableDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       databaseName: SqlDB1
///       kind: SqlDBTable
///       resourceGroupName: SampleResourceGroup
///       schemaName: dbo
///       shareName: Share1
///       sqlServerResourceId: /subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1
///       tableName: Table1
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
///     var sqlDBTableDataSet = new AzureNative.DataShare.SqlDBTableDataSet("sqlDBTableDataSet", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSet(ctx, "sqlDBTableDataSet", &datashare.SqlDBTableDataSetArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datashare_sqldbtabledataset" "sqlDBTableDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSet;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetArgs;
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
///         var sqlDBTableDataSet = new SqlDBTableDataSet("sqlDBTableDataSet", SqlDBTableDataSetArgs.builder()
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
/// const sqlDBTableDataSet = new azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet", {
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
/// sql_db_table_data_set = azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSet:
///     type: azure-native:datashare:SqlDBTableDataSet
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
///     var sqlDBTableDataSet = new AzureNative.DataShare.SqlDBTableDataSet("sqlDBTableDataSet", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSet(ctx, "sqlDBTableDataSet", &datashare.SqlDBTableDataSetArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datashare_sqldbtabledataset" "sqlDBTableDataSet" {
///   account_name        = "sourceAccount"
///   data_set_name       = "dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "share1"
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSet;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetArgs;
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
///         var sqlDBTableDataSet = new SqlDBTableDataSet("sqlDBTableDataSet", SqlDBTableDataSetArgs.builder()
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
/// const sqlDBTableDataSet = new azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet", {
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
/// sql_db_table_data_set = azure_native.datashare.SqlDBTableDataSet("sqlDBTableDataSet",
///     account_name="sourceAccount",
///     data_set_name="dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="share1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSet:
///     type: azure-native:datashare:SqlDBTableDataSet
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
/// $ pulumi import azure-native:datashare:SqlDBTableDataSet dataset1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}/dataSets/{dataSetName}
/// ```
class SqlDBTableDataSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Unique id for identifying a data set resource
  late final pulumi.Output<String> dataSetId;
  /// Database name of the source data set
  late final pulumi.Output<String> databaseName;
  /// Kind of data set.
  /// Expected value is 'SqlDBTable'.
  late final pulumi.Output<String> kind;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// Schema of the table. Default value is dbo.
  late final pulumi.Output<String> schemaName;
  /// Resource id of SQL server
  late final pulumi.Output<String> sqlServerResourceId;
  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// SQL DB table name.
  late final pulumi.Output<String> tableName;
  /// Type of the azure resource
  late final pulumi.Output<String> type;

  /// Creates a new [SqlDBTableDataSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlDBTableDataSet]. {@macro pulumi_datashare_sql_dbtable_data_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlDBTableDataSet(
    String name, {
    SqlDBTableDataSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:SqlDBTableDataSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataSetId = registerOutput<String>('dataSetId');
    databaseName = registerOutput<String>('databaseName');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    schemaName = registerOutput<String>('schemaName');
    sqlServerResourceId = registerOutput<String>('sqlServerResourceId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableName = registerOutput<String>('tableName');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SqlDBTableDataSet] resource.
  SqlDBTableDataSet.reference(String urn)
    : super(
        'azure-native:datashare:SqlDBTableDataSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataSetId = registerOutput<String>('dataSetId');
    databaseName = registerOutput<String>('databaseName');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    schemaName = registerOutput<String>('schemaName');
    sqlServerResourceId = registerOutput<String>('sqlServerResourceId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableName = registerOutput<String>('tableName');
    type = registerOutput<String>('type');
  }
}
