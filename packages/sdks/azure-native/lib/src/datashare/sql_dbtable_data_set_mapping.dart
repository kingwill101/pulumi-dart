import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_dbtable_data_set_mapping_args.dart';
import 'system_data_response.dart';

/// A SQL DB Table data set mapping.
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
///     var sqlDBTableDataSetMapping = new AzureNative.DataShare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSetMapping(ctx, "sqlDBTableDataSetMapping", &datashare.SqlDBTableDataSetMappingArgs{
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMappingArgs;
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
///         var sqlDBTableDataSetMapping = new SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", SqlDBTableDataSetMappingArgs.builder()
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
/// const sqlDBTableDataSetMapping = new azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", {
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
/// sql_db_table_data_set_mapping = azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSetMapping:
///     type: azure-native:datashare:SqlDBTableDataSetMapping
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
///     var sqlDBTableDataSetMapping = new AzureNative.DataShare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", new()
///     {
///         AccountName = "Account1",
///         DataSetId = "a08f184b-0567-4b11-ba22-a1199336d226",
///         DataSetMappingName = "DatasetMapping1",
///         DatabaseName = "Database1",
///         Kind = "SqlDBTable",
///         ResourceGroupName = "SampleResourceGroup",
///         SchemaName = "dbo",
///         ShareSubscriptionName = "ShareSubscription1",
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
/// 		_, err := datashare.NewSqlDBTableDataSetMapping(ctx, "sqlDBTableDataSetMapping", &datashare.SqlDBTableDataSetMappingArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			DataSetId:             pulumi.String("a08f184b-0567-4b11-ba22-a1199336d226"),
/// 			DataSetMappingName:    pulumi.String("DatasetMapping1"),
/// 			DatabaseName:          pulumi.String("Database1"),
/// 			Kind:                  pulumi.String("SqlDBTable"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			SchemaName:            pulumi.String("dbo"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
/// 			SqlServerResourceId:   pulumi.String("/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1"),
/// 			TableName:             pulumi.String("Table1"),
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMappingArgs;
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
///         var sqlDBTableDataSetMapping = new SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", SqlDBTableDataSetMappingArgs.builder()
///             .accountName("Account1")
///             .dataSetId("a08f184b-0567-4b11-ba22-a1199336d226")
///             .dataSetMappingName("DatasetMapping1")
///             .databaseName("Database1")
///             .kind("SqlDBTable")
///             .resourceGroupName("SampleResourceGroup")
///             .schemaName("dbo")
///             .shareSubscriptionName("ShareSubscription1")
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
/// const sqlDBTableDataSetMapping = new azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", {
///     accountName: "Account1",
///     dataSetId: "a08f184b-0567-4b11-ba22-a1199336d226",
///     dataSetMappingName: "DatasetMapping1",
///     databaseName: "Database1",
///     kind: "SqlDBTable",
///     resourceGroupName: "SampleResourceGroup",
///     schemaName: "dbo",
///     shareSubscriptionName: "ShareSubscription1",
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
/// sql_db_table_data_set_mapping = azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping",
///     account_name="Account1",
///     data_set_id="a08f184b-0567-4b11-ba22-a1199336d226",
///     data_set_mapping_name="DatasetMapping1",
///     database_name="Database1",
///     kind="SqlDBTable",
///     resource_group_name="SampleResourceGroup",
///     schema_name="dbo",
///     share_subscription_name="ShareSubscription1",
///     sql_server_resource_id="/subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1",
///     table_name="Table1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSetMapping:
///     type: azure-native:datashare:SqlDBTableDataSetMapping
///     properties:
///       accountName: Account1
///       dataSetId: a08f184b-0567-4b11-ba22-a1199336d226
///       dataSetMappingName: DatasetMapping1
///       databaseName: Database1
///       kind: SqlDBTable
///       resourceGroupName: SampleResourceGroup
///       schemaName: dbo
///       shareSubscriptionName: ShareSubscription1
///       sqlServerResourceId: /subscriptions/433a8dfd-e5d5-4e77-ad86-90acdc75eb1a/resourceGroups/SampleResourceGroup/providers/Microsoft.Sql/servers/Server1
///       tableName: Table1
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
///     var sqlDBTableDataSetMapping = new AzureNative.DataShare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSetMapping(ctx, "sqlDBTableDataSetMapping", &datashare.SqlDBTableDataSetMappingArgs{
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMappingArgs;
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
///         var sqlDBTableDataSetMapping = new SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", SqlDBTableDataSetMappingArgs.builder()
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
/// const sqlDBTableDataSetMapping = new azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", {
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
/// sql_db_table_data_set_mapping = azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSetMapping:
///     type: azure-native:datashare:SqlDBTableDataSetMapping
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
///     var sqlDBTableDataSetMapping = new AzureNative.DataShare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSetMapping(ctx, "sqlDBTableDataSetMapping", &datashare.SqlDBTableDataSetMappingArgs{
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMappingArgs;
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
///         var sqlDBTableDataSetMapping = new SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", SqlDBTableDataSetMappingArgs.builder()
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
/// const sqlDBTableDataSetMapping = new azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", {
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
/// sql_db_table_data_set_mapping = azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSetMapping:
///     type: azure-native:datashare:SqlDBTableDataSetMapping
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
///     var sqlDBTableDataSetMapping = new AzureNative.DataShare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", new()
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
/// 		_, err := datashare.NewSqlDBTableDataSetMapping(ctx, "sqlDBTableDataSetMapping", &datashare.SqlDBTableDataSetMappingArgs{
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
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMapping;
/// import com.pulumi.azurenative.datashare.SqlDBTableDataSetMappingArgs;
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
///         var sqlDBTableDataSetMapping = new SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", SqlDBTableDataSetMappingArgs.builder()
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
/// const sqlDBTableDataSetMapping = new azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping", {
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
/// sql_db_table_data_set_mapping = azure_native.datashare.SqlDBTableDataSetMapping("sqlDBTableDataSetMapping",
///     account_name="consumerAccount",
///     data_set_mapping_name="datasetMappingName1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDBTableDataSetMapping:
///     type: azure-native:datashare:SqlDBTableDataSetMapping
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
/// $ pulumi import azure-native:datashare:SqlDBTableDataSetMapping datasetMappingName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shareSubscriptions/{shareSubscriptionName}/dataSetMappings/{dataSetMappingName}
/// ```
class SqlDBTableDataSetMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The id of the source data set.
  late final pulumi.Output<String> dataSetId;
  /// Gets the status of the data set mapping.
  late final pulumi.Output<String> dataSetMappingStatus;
  /// DatabaseName name of the sink data set
  late final pulumi.Output<String> databaseName;
  /// Kind of data set mapping.
  /// Expected value is 'SqlDBTable'.
  late final pulumi.Output<String> kind;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the data set mapping.
  late final pulumi.Output<String> provisioningState;
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

  /// Creates a new [SqlDBTableDataSetMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlDBTableDataSetMapping]. {@macro pulumi_datashare_sql_dbtable_data_set_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlDBTableDataSetMapping(
    String name, {
    SqlDBTableDataSetMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:SqlDBTableDataSetMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.dataSetId = registerOutput<String>('dataSetId');
    this.dataSetMappingStatus = registerOutput<String>('dataSetMappingStatus');
    this.databaseName = registerOutput<String>('databaseName');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.schemaName = registerOutput<String>('schemaName');
    this.sqlServerResourceId = registerOutput<String>('sqlServerResourceId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tableName = registerOutput<String>('tableName');
    this.type = registerOutput<String>('type');
  }
}
