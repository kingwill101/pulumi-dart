import 'package:pulumi/pulumi.dart' as pulumi;
import 'cosmos_db_data_connection_args.dart';

/// Class representing a CosmosDb data connection.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoDataConnectionsCosmosDbCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cosmosDbDataConnection = new AzureNative.Kusto.CosmosDbDataConnection("cosmosDbDataConnection", new()
///     {
///         ClusterName = "kustoCluster",
///         CosmosDbAccountResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.DocumentDb/databaseAccounts/cosmosDbAccountTest1",
///         CosmosDbContainer = "cosmosDbContainerTest",
///         CosmosDbDatabase = "cosmosDbDatabaseTest",
///         DataConnectionName = "dataConnectionTest",
///         DatabaseName = "KustoDatabase1",
///         Kind = "CosmosDb",
///         Location = "westus",
///         ManagedIdentityResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1",
///         MappingRuleName = "TestMapping",
///         ResourceGroupName = "kustorptest",
///         RetrievalStartDate = "2022-07-29T12:00:00.6554616Z",
///         TableName = "TestTable",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewCosmosDbDataConnection(ctx, "cosmosDbDataConnection", &kusto.CosmosDbDataConnectionArgs{
/// 			ClusterName:               pulumi.String("kustoCluster"),
/// 			CosmosDbAccountResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.DocumentDb/databaseAccounts/cosmosDbAccountTest1"),
/// 			CosmosDbContainer:         pulumi.String("cosmosDbContainerTest"),
/// 			CosmosDbDatabase:          pulumi.String("cosmosDbDatabaseTest"),
/// 			DataConnectionName:        pulumi.String("dataConnectionTest"),
/// 			DatabaseName:              pulumi.String("KustoDatabase1"),
/// 			Kind:                      pulumi.String("CosmosDb"),
/// 			Location:                  pulumi.String("westus"),
/// 			ManagedIdentityResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1"),
/// 			MappingRuleName:           pulumi.String("TestMapping"),
/// 			ResourceGroupName:         pulumi.String("kustorptest"),
/// 			RetrievalStartDate:        pulumi.String("2022-07-29T12:00:00.6554616Z"),
/// 			TableName:                 pulumi.String("TestTable"),
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
/// import com.pulumi.azurenative.kusto.CosmosDbDataConnection;
/// import com.pulumi.azurenative.kusto.CosmosDbDataConnectionArgs;
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
///         var cosmosDbDataConnection = new CosmosDbDataConnection("cosmosDbDataConnection", CosmosDbDataConnectionArgs.builder()
///             .clusterName("kustoCluster")
///             .cosmosDbAccountResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.DocumentDb/databaseAccounts/cosmosDbAccountTest1")
///             .cosmosDbContainer("cosmosDbContainerTest")
///             .cosmosDbDatabase("cosmosDbDatabaseTest")
///             .dataConnectionName("dataConnectionTest")
///             .databaseName("KustoDatabase1")
///             .kind("CosmosDb")
///             .location("westus")
///             .managedIdentityResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1")
///             .mappingRuleName("TestMapping")
///             .resourceGroupName("kustorptest")
///             .retrievalStartDate("2022-07-29T12:00:00.6554616Z")
///             .tableName("TestTable")
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
/// const cosmosDbDataConnection = new azure_native.kusto.CosmosDbDataConnection("cosmosDbDataConnection", {
///     clusterName: "kustoCluster",
///     cosmosDbAccountResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.DocumentDb/databaseAccounts/cosmosDbAccountTest1",
///     cosmosDbContainer: "cosmosDbContainerTest",
///     cosmosDbDatabase: "cosmosDbDatabaseTest",
///     dataConnectionName: "dataConnectionTest",
///     databaseName: "KustoDatabase1",
///     kind: "CosmosDb",
///     location: "westus",
///     managedIdentityResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1",
///     mappingRuleName: "TestMapping",
///     resourceGroupName: "kustorptest",
///     retrievalStartDate: "2022-07-29T12:00:00.6554616Z",
///     tableName: "TestTable",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cosmos_db_data_connection = azure_native.kusto.CosmosDbDataConnection("cosmosDbDataConnection",
///     cluster_name="kustoCluster",
///     cosmos_db_account_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.DocumentDb/databaseAccounts/cosmosDbAccountTest1",
///     cosmos_db_container="cosmosDbContainerTest",
///     cosmos_db_database="cosmosDbDatabaseTest",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase1",
///     kind="CosmosDb",
///     location="westus",
///     managed_identity_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1",
///     mapping_rule_name="TestMapping",
///     resource_group_name="kustorptest",
///     retrieval_start_date="2022-07-29T12:00:00.6554616Z",
///     table_name="TestTable")
///
/// ```
///
/// ```yaml
/// resources:
///   cosmosDbDataConnection:
///     type: azure-native:kusto:CosmosDbDataConnection
///     properties:
///       clusterName: kustoCluster
///       cosmosDbAccountResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.DocumentDb/databaseAccounts/cosmosDbAccountTest1
///       cosmosDbContainer: cosmosDbContainerTest
///       cosmosDbDatabase: cosmosDbDatabaseTest
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase1
///       kind: CosmosDb
///       location: westus
///       managedIdentityResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1
///       mappingRuleName: TestMapping
///       resourceGroupName: kustorptest
///       retrievalStartDate: 2022-07-29T12:00:00.6554616Z
///       tableName: TestTable
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### KustoDataConnectionsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cosmosDbDataConnection = new AzureNative.Kusto.CosmosDbDataConnection("cosmosDbDataConnection", new()
///     {
///         ClusterName = "kustoCluster",
///         DataConnectionName = "dataConnectionTest",
///         DatabaseName = "KustoDatabase8",
///         ResourceGroupName = "kustorptest",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewCosmosDbDataConnection(ctx, "cosmosDbDataConnection", &kusto.CosmosDbDataConnectionArgs{
/// 			ClusterName:        pulumi.String("kustoCluster"),
/// 			DataConnectionName: pulumi.String("dataConnectionTest"),
/// 			DatabaseName:       pulumi.String("KustoDatabase8"),
/// 			ResourceGroupName:  pulumi.String("kustorptest"),
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
/// import com.pulumi.azurenative.kusto.CosmosDbDataConnection;
/// import com.pulumi.azurenative.kusto.CosmosDbDataConnectionArgs;
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
///         var cosmosDbDataConnection = new CosmosDbDataConnection("cosmosDbDataConnection", CosmosDbDataConnectionArgs.builder()
///             .clusterName("kustoCluster")
///             .dataConnectionName("dataConnectionTest")
///             .databaseName("KustoDatabase8")
///             .resourceGroupName("kustorptest")
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
/// const cosmosDbDataConnection = new azure_native.kusto.CosmosDbDataConnection("cosmosDbDataConnection", {
///     clusterName: "kustoCluster",
///     dataConnectionName: "dataConnectionTest",
///     databaseName: "KustoDatabase8",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cosmos_db_data_connection = azure_native.kusto.CosmosDbDataConnection("cosmosDbDataConnection",
///     cluster_name="kustoCluster",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase8",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   cosmosDbDataConnection:
///     type: azure-native:kusto:CosmosDbDataConnection
///     properties:
///       clusterName: kustoCluster
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase8
///       resourceGroupName: kustorptest
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### KustoDataConnectionsEventGridCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cosmosDbDataConnection = new AzureNative.Kusto.CosmosDbDataConnection("cosmosDbDataConnection", new()
///     {
///         ClusterName = "kustoCluster",
///         DataConnectionName = "dataConnectionTest",
///         DatabaseName = "KustoDatabase8",
///         ResourceGroupName = "kustorptest",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewCosmosDbDataConnection(ctx, "cosmosDbDataConnection", &kusto.CosmosDbDataConnectionArgs{
/// 			ClusterName:        pulumi.String("kustoCluster"),
/// 			DataConnectionName: pulumi.String("dataConnectionTest"),
/// 			DatabaseName:       pulumi.String("KustoDatabase8"),
/// 			ResourceGroupName:  pulumi.String("kustorptest"),
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
/// import com.pulumi.azurenative.kusto.CosmosDbDataConnection;
/// import com.pulumi.azurenative.kusto.CosmosDbDataConnectionArgs;
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
///         var cosmosDbDataConnection = new CosmosDbDataConnection("cosmosDbDataConnection", CosmosDbDataConnectionArgs.builder()
///             .clusterName("kustoCluster")
///             .dataConnectionName("dataConnectionTest")
///             .databaseName("KustoDatabase8")
///             .resourceGroupName("kustorptest")
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
/// const cosmosDbDataConnection = new azure_native.kusto.CosmosDbDataConnection("cosmosDbDataConnection", {
///     clusterName: "kustoCluster",
///     dataConnectionName: "dataConnectionTest",
///     databaseName: "KustoDatabase8",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cosmos_db_data_connection = azure_native.kusto.CosmosDbDataConnection("cosmosDbDataConnection",
///     cluster_name="kustoCluster",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase8",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   cosmosDbDataConnection:
///     type: azure-native:kusto:CosmosDbDataConnection
///     properties:
///       clusterName: kustoCluster
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase8
///       resourceGroupName: kustorptest
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
/// $ pulumi import azure-native:kusto:CosmosDbDataConnection kustoCluster/KustoDatabase8/dataConnectionTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/databases/{databaseName}/dataConnections/{dataConnectionName}
/// ```
class CosmosDbDataConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource ID of the Cosmos DB account used to create the data connection.
  late final pulumi.Output<String> cosmosDbAccountResourceId;
  /// The name of an existing container in the Cosmos DB database.
  late final pulumi.Output<String> cosmosDbContainer;
  /// The name of an existing database in the Cosmos DB account.
  late final pulumi.Output<String> cosmosDbDatabase;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'CosmosDb'.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The object ID of the managed identity resource.
  late final pulumi.Output<String> managedIdentityObjectId;
  /// The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB.
  late final pulumi.Output<String> managedIdentityResourceId;
  /// The name of an existing mapping rule to use when ingesting the retrieved data.
  late final pulumi.Output<String?> mappingRuleName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Optional. If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date.
  late final pulumi.Output<String?> retrievalStartDate;
  /// The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table.
  late final pulumi.Output<String> tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CosmosDbDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CosmosDbDataConnection]. {@macro pulumi_kusto_cosmos_db_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CosmosDbDataConnection(
    String name, {
    CosmosDbDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:CosmosDbDataConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cosmosDbAccountResourceId = registerOutput<String>('cosmosDbAccountResourceId');
    cosmosDbContainer = registerOutput<String>('cosmosDbContainer');
    cosmosDbDatabase = registerOutput<String>('cosmosDbDatabase');
    kind = registerOutput<String>('kind');
    location = registerOutput<String?>('location');
    managedIdentityObjectId = registerOutput<String>('managedIdentityObjectId');
    managedIdentityResourceId = registerOutput<String>('managedIdentityResourceId');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    retrievalStartDate = registerOutput<String?>('retrievalStartDate');
    tableName = registerOutput<String>('tableName');
    type = registerOutput<String>('type');
  }
}
