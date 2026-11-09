import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_args.dart';
import 'system_data_response.dart';

/// Linked service resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LinkedServices_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedService = new AzureNative.DataFactory.LinkedService("linkedService", new()
///     {
///         FactoryName = "exampleFactoryName",
///         LinkedServiceName = "exampleLinkedService",
///         Properties = new AzureNative.DataFactory.Inputs.AzureStorageLinkedServiceArgs
///         {
///             ConnectionString = new Dictionary<string, object?>
///             {
///                 ["type"] = "SecureString",
///                 ["value"] = "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///             },
///             Type = "AzureStorage",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewLinkedService(ctx, "linkedService", &datafactory.LinkedServiceArgs{
/// 			FactoryName:       pulumi.String("exampleFactoryName"),
/// 			LinkedServiceName: pulumi.String("exampleLinkedService"),
/// 			Properties: &datafactory.AzureStorageLinkedServiceArgs{
/// 				ConnectionString: pulumi.Any(map[string]interface{}{
/// 					"type":  "SecureString",
/// 					"value": "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
/// 				}),
/// 				Type: pulumi.String("AzureStorage"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datafactory_linked_service" "linkedService" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   factory_name        = "exampleFactoryName"
///   linked_service_name = "exampleLinkedService"
///   properties = {
///     connection_string = {
///       "type"  = "SecureString"
///       "value" = "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>"
///     }
///     type = "AzureStorage"
///   }
///   resource_group_name = "exampleResourceGroup"
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
/// import com.pulumi.azurenative.datafactory.LinkedService;
/// import com.pulumi.azurenative.datafactory.LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonMWSLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonRdsForOracleLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonRdsForSqlServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonRedshiftLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonS3CompatibleLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonS3LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AppFiguresLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AsanaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureBatchLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureBlobFSLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureBlobStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDataExplorerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDataLakeAnalyticsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDataLakeStoreLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDatabricksDeltaLakeLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDatabricksLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureFileStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureFunctionLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureKeyVaultLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureMLLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureMLServiceLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureMariaDBLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureMySqlLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzurePostgreSqlLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSearchLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSqlDWLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSqlDatabaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSqlMILinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSynapseArtifactsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureTableStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CassandraLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CommonDataServiceForAppsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ConcurLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CosmosDbLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CosmosDbMongoDbApiLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CouchbaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CustomDataSourceLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DataworldLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.Db2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DrillLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DynamicsAXLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DynamicsCrmLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DynamicsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.EloquaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.FileServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.FtpServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleAdWordsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleBigQueryLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleBigQueryV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleCloudStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleSheetsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GreenplumLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HBaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HDInsightLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HDInsightOnDemandLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HdfsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HiveLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HttpLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HubspotLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ImpalaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.InformixLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.JiraLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.LakeHouseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MagentoLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MariaDBLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MarketoLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MicrosoftAccessLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MongoDbAtlasLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MongoDbLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MongoDbV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MySqlLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.NetezzaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ODataLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.OdbcLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.Office365LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.OracleCloudStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.OracleLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.OracleServiceCloudLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PaypalLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PhoenixLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PostgreSqlLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PostgreSqlV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PrestoLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.QuickBooksLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.QuickbaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ResponsysLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.RestServiceLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceMarketingCloudLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceServiceCloudLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceServiceCloudV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapBWLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapCloudForCustomerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapEccLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapHanaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapOdpLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapOpenHubLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapTableLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ServiceNowLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ServiceNowV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SftpServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SharePointOnlineListLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ShopifyLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SmartsheetLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SnowflakeLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SnowflakeV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SparkLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SqlServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SquareLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SybaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.TeamDeskLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.TeradataLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.TwilioLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.VerticaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.WarehouseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.WebLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.XeroLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ZendeskLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ZohoLinkedServiceArgs;
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
///         var linkedService = new LinkedService("linkedService", LinkedServiceArgs.builder()
///             .factoryName("exampleFactoryName")
///             .linkedServiceName("exampleLinkedService")
///             .properties(AzureStorageLinkedServiceArgs.builder()
///                 .connectionString(Map.ofEntries(
///                     Map.entry("type", "SecureString"),
///                     Map.entry("value", "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>")
///                 ))
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const linkedService = new azure_native.datafactory.LinkedService("linkedService", {
///     factoryName: "exampleFactoryName",
///     linkedServiceName: "exampleLinkedService",
///     properties: {
///         connectionString: {
///             type: "SecureString",
///             value: "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///         },
///         type: "AzureStorage",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linked_service = azure_native.datafactory.LinkedService("linkedService",
///     factory_name="exampleFactoryName",
///     linked_service_name="exampleLinkedService",
///     properties={
///         "connection_string": {
///             "type": "SecureString",
///             "value": "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///         },
///         "type": "AzureStorage",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   linkedService:
///     type: azure-native:datafactory:LinkedService
///     properties:
///       factoryName: exampleFactoryName
///       linkedServiceName: exampleLinkedService
///       properties:
///         connectionString:
///           type: SecureString
///           value: DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>
///         type: AzureStorage
///       resourceGroupName: exampleResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### LinkedServices_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedService = new AzureNative.DataFactory.LinkedService("linkedService", new()
///     {
///         FactoryName = "exampleFactoryName",
///         LinkedServiceName = "exampleLinkedService",
///         Properties = new AzureNative.DataFactory.Inputs.AzureStorageLinkedServiceArgs
///         {
///             ConnectionString = new Dictionary<string, object?>
///             {
///                 ["type"] = "SecureString",
///                 ["value"] = "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///             },
///             Description = "Example description",
///             Type = "AzureStorage",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewLinkedService(ctx, "linkedService", &datafactory.LinkedServiceArgs{
/// 			FactoryName:       pulumi.String("exampleFactoryName"),
/// 			LinkedServiceName: pulumi.String("exampleLinkedService"),
/// 			Properties: &datafactory.AzureStorageLinkedServiceArgs{
/// 				ConnectionString: pulumi.Any(map[string]interface{}{
/// 					"type":  "SecureString",
/// 					"value": "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
/// 				}),
/// 				Description: pulumi.String("Example description"),
/// 				Type:        pulumi.String("AzureStorage"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_datafactory_linked_service" "linkedService" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   factory_name        = "exampleFactoryName"
///   linked_service_name = "exampleLinkedService"
///   properties = {
///     connection_string = {
///       "type"  = "SecureString"
///       "value" = "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>"
///     }
///     description = "Example description"
///     type        = "AzureStorage"
///   }
///   resource_group_name = "exampleResourceGroup"
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
/// import com.pulumi.azurenative.datafactory.LinkedService;
/// import com.pulumi.azurenative.datafactory.LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonMWSLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonRdsForOracleLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonRdsForSqlServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonRedshiftLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonS3CompatibleLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AmazonS3LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AppFiguresLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AsanaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureBatchLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureBlobFSLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureBlobStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDataExplorerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDataLakeAnalyticsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDataLakeStoreLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDatabricksDeltaLakeLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureDatabricksLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureFileStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureFunctionLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureKeyVaultLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureMLLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureMLServiceLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureMariaDBLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureMySqlLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzurePostgreSqlLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSearchLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSqlDWLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSqlDatabaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSqlMILinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureSynapseArtifactsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.AzureTableStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CassandraLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CommonDataServiceForAppsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ConcurLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CosmosDbLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CosmosDbMongoDbApiLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CouchbaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.CustomDataSourceLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DataworldLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.Db2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DrillLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DynamicsAXLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DynamicsCrmLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.DynamicsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.EloquaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.FileServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.FtpServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleAdWordsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleBigQueryLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleBigQueryV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleCloudStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GoogleSheetsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.GreenplumLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HBaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HDInsightLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HDInsightOnDemandLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HdfsLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HiveLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HttpLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.HubspotLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ImpalaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.InformixLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.JiraLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.LakeHouseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MagentoLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MariaDBLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MarketoLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MicrosoftAccessLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MongoDbAtlasLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MongoDbLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MongoDbV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.MySqlLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.NetezzaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ODataLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.OdbcLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.Office365LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.OracleCloudStorageLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.OracleLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.OracleServiceCloudLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PaypalLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PhoenixLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PostgreSqlLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PostgreSqlV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.PrestoLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.QuickBooksLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.QuickbaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ResponsysLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.RestServiceLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceMarketingCloudLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceServiceCloudLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceServiceCloudV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SalesforceV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapBWLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapCloudForCustomerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapEccLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapHanaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapOdpLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapOpenHubLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SapTableLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ServiceNowLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ServiceNowV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SftpServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SharePointOnlineListLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ShopifyLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SmartsheetLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SnowflakeLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SnowflakeV2LinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SparkLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SqlServerLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SquareLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.SybaseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.TeamDeskLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.TeradataLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.TwilioLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.VerticaLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.WarehouseLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.WebLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.XeroLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ZendeskLinkedServiceArgs;
/// import com.pulumi.azurenative.datafactory.inputs.ZohoLinkedServiceArgs;
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
///         var linkedService = new LinkedService("linkedService", LinkedServiceArgs.builder()
///             .factoryName("exampleFactoryName")
///             .linkedServiceName("exampleLinkedService")
///             .properties(AzureStorageLinkedServiceArgs.builder()
///                 .connectionString(Map.ofEntries(
///                     Map.entry("type", "SecureString"),
///                     Map.entry("value", "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>")
///                 ))
///                 .description("Example description")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const linkedService = new azure_native.datafactory.LinkedService("linkedService", {
///     factoryName: "exampleFactoryName",
///     linkedServiceName: "exampleLinkedService",
///     properties: {
///         connectionString: {
///             type: "SecureString",
///             value: "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///         },
///         description: "Example description",
///         type: "AzureStorage",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linked_service = azure_native.datafactory.LinkedService("linkedService",
///     factory_name="exampleFactoryName",
///     linked_service_name="exampleLinkedService",
///     properties={
///         "connection_string": {
///             "type": "SecureString",
///             "value": "DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>",
///         },
///         "description": "Example description",
///         "type": "AzureStorage",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   linkedService:
///     type: azure-native:datafactory:LinkedService
///     properties:
///       factoryName: exampleFactoryName
///       linkedServiceName: exampleLinkedService
///       properties:
///         connectionString:
///           type: SecureString
///           value: DefaultEndpointsProtocol=https;AccountName=examplestorageaccount;AccountKey=<storage key>
///         description: Example description
///         type: AzureStorage
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:datafactory:LinkedService exampleLinkedService /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/linkedservices/{linkedServiceName}
/// ```
class LinkedService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of linked service.
  late final pulumi.Output<dynamic> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LinkedService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedService]. {@macro pulumi_datafactory_linked_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedService(
    String name, {
    LinkedServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:LinkedService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LinkedService] resource.
  LinkedService.reference(String urn)
    : super(
        'azure-native:datafactory:LinkedService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
