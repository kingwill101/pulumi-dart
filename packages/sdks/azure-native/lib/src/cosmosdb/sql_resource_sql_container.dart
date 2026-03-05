import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_container_get_properties_response_options.dart';
import 'sql_container_get_properties_response_resource.dart';
import 'sql_resource_sql_container_args.dart';

/// An Azure Cosmos DB container.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBSqlContainerCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlResourceSqlContainer = new AzureNative.CosmosDB.SqlResourceSqlContainer("sqlResourceSqlContainer", new()
///     {
///         AccountName = "ddb1",
///         ContainerName = "containerName",
///         DatabaseName = "databaseName",
///         Location = "West US",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.SqlContainerResourceArgs
///         {
///             ClientEncryptionPolicy = new AzureNative.CosmosDB.Inputs.ClientEncryptionPolicyArgs
///             {
///                 IncludedPaths = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.ClientEncryptionIncludedPathArgs
///                     {
///                         ClientEncryptionKeyId = "keyId",
///                         EncryptionAlgorithm = "AEAD_AES_256_CBC_HMAC_SHA256",
///                         EncryptionType = "Deterministic",
///                         Path = "/path",
///                     },
///                 },
///                 PolicyFormatVersion = 2,
///             },
///             ComputedProperties = new[]
///             {
///                 new AzureNative.CosmosDB.Inputs.ComputedPropertyArgs
///                 {
///                     Name = "cp_lowerName",
///                     Query = "SELECT VALUE LOWER(c.name) FROM c",
///                 },
///             },
///             ConflictResolutionPolicy = new AzureNative.CosmosDB.Inputs.ConflictResolutionPolicyArgs
///             {
///                 ConflictResolutionPath = "/path",
///                 Mode = AzureNative.CosmosDB.ConflictResolutionMode.LastWriterWins,
///             },
///             DefaultTtl = 100,
///             FullTextPolicy = new AzureNative.CosmosDB.Inputs.FullTextPolicyArgs
///             {
///                 DefaultLanguage = "1033",
///                 FullTextPaths = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.FullTextPathArgs
///                     {
///                         Language = "en-US",
///                         Path = "/ftPath1",
///                     },
///                     new AzureNative.CosmosDB.Inputs.FullTextPathArgs
///                     {
///                         Language = "fr-FR",
///                         Path = "/ftPath2",
///                     },
///                     new AzureNative.CosmosDB.Inputs.FullTextPathArgs
///                     {
///                         Language = "de-DE",
///                         Path = "/ftPath3",
///                     },
///                 },
///             },
///             Id = "containerName",
///             IndexingPolicy = new AzureNative.CosmosDB.Inputs.IndexingPolicyArgs
///             {
///                 Automatic = true,
///                 ExcludedPaths = new() { },
///                 FullTextIndexes = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.FullTextIndexPathArgs
///                     {
///                         Path = "/ftPath1",
///                     },
///                     new AzureNative.CosmosDB.Inputs.FullTextIndexPathArgs
///                     {
///                         Path = "/ftPath2",
///                     },
///                     new AzureNative.CosmosDB.Inputs.FullTextIndexPathArgs
///                     {
///                         Path = "/ftPath3",
///                     },
///                 },
///                 IncludedPaths = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.IncludedPathArgs
///                     {
///                         Indexes = new[]
///                         {
///                             new AzureNative.CosmosDB.Inputs.IndexesArgs
///                             {
///                                 DataType = AzureNative.CosmosDB.DataType.String,
///                                 Kind = AzureNative.CosmosDB.IndexKind.Range,
///                                 Precision = -1,
///                             },
///                             new AzureNative.CosmosDB.Inputs.IndexesArgs
///                             {
///                                 DataType = AzureNative.CosmosDB.DataType.Number,
///                                 Kind = AzureNative.CosmosDB.IndexKind.Range,
///                                 Precision = -1,
///                             },
///                         },
///                         Path = "/*",
///                     },
///                 },
///                 IndexingMode = AzureNative.CosmosDB.IndexingMode.Consistent,
///                 VectorIndexes = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.VectorIndexArgs
///                     {
///                         Path = "/vectorPath1",
///                         Type = AzureNative.CosmosDB.VectorIndexType.Flat,
///                     },
///                     new AzureNative.CosmosDB.Inputs.VectorIndexArgs
///                     {
///                         Path = "/vectorPath2",
///                         Type = AzureNative.CosmosDB.VectorIndexType.QuantizedFlat,
///                     },
///                     new AzureNative.CosmosDB.Inputs.VectorIndexArgs
///                     {
///                         Path = "/vectorPath3",
///                         Type = AzureNative.CosmosDB.VectorIndexType.DiskANN,
///                     },
///                 },
///             },
///             PartitionKey = new AzureNative.CosmosDB.Inputs.ContainerPartitionKeyArgs
///             {
///                 Kind = AzureNative.CosmosDB.PartitionKind.Hash,
///                 Paths = new[]
///                 {
///                     "/AccountNumber",
///                 },
///             },
///             UniqueKeyPolicy = new AzureNative.CosmosDB.Inputs.UniqueKeyPolicyArgs
///             {
///                 UniqueKeys = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.UniqueKeyArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/testPath",
///                         },
///                     },
///                 },
///             },
///             VectorEmbeddingPolicy = new AzureNative.CosmosDB.Inputs.VectorEmbeddingPolicyArgs
///             {
///                 VectorEmbeddings = new[]
///                 {
///                     new AzureNative.CosmosDB.Inputs.VectorEmbeddingArgs
///                     {
///                         DataType = AzureNative.CosmosDB.VectorDataType.Float32,
///                         Dimensions = 400,
///                         DistanceFunction = AzureNative.CosmosDB.DistanceFunction.Euclidean,
///                         Path = "/vectorPath1",
///                     },
///                     new AzureNative.CosmosDB.Inputs.VectorEmbeddingArgs
///                     {
///                         DataType = AzureNative.CosmosDB.VectorDataType.Uint8,
///                         Dimensions = 512,
///                         DistanceFunction = AzureNative.CosmosDB.DistanceFunction.Cosine,
///                         Path = "/vectorPath2",
///                     },
///                     new AzureNative.CosmosDB.Inputs.VectorEmbeddingArgs
///                     {
///                         DataType = AzureNative.CosmosDB.VectorDataType.Int8,
///                         Dimensions = 512,
///                         DistanceFunction = AzureNative.CosmosDB.DistanceFunction.Dotproduct,
///                         Path = "/vectorPath3",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Tags = null,
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
/// 		_, err := cosmosdb.NewSqlResourceSqlContainer(ctx, "sqlResourceSqlContainer", &cosmosdb.SqlResourceSqlContainerArgs{
/// 			AccountName:   pulumi.String("ddb1"),
/// 			ContainerName: pulumi.String("containerName"),
/// 			DatabaseName:  pulumi.String("databaseName"),
/// 			Location:      pulumi.String("West US"),
/// 			Options:       &cosmosdb.CreateUpdateOptionsArgs{},
/// 			Resource: &cosmosdb.SqlContainerResourceArgs{
/// 				ClientEncryptionPolicy: &cosmosdb.ClientEncryptionPolicyArgs{
/// 					IncludedPaths: cosmosdb.ClientEncryptionIncludedPathArray{
/// 						&cosmosdb.ClientEncryptionIncludedPathArgs{
/// 							ClientEncryptionKeyId: pulumi.String("keyId"),
/// 							EncryptionAlgorithm:   pulumi.String("AEAD_AES_256_CBC_HMAC_SHA256"),
/// 							EncryptionType:        pulumi.String("Deterministic"),
/// 							Path:                  pulumi.String("/path"),
/// 						},
/// 					},
/// 					PolicyFormatVersion: pulumi.Int(2),
/// 				},
/// 				ComputedProperties: cosmosdb.ComputedPropertyArray{
/// 					&cosmosdb.ComputedPropertyArgs{
/// 						Name:  pulumi.String("cp_lowerName"),
/// 						Query: pulumi.String("SELECT VALUE LOWER(c.name) FROM c"),
/// 					},
/// 				},
/// 				ConflictResolutionPolicy: &cosmosdb.ConflictResolutionPolicyArgs{
/// 					ConflictResolutionPath: pulumi.String("/path"),
/// 					Mode:                   pulumi.String(cosmosdb.ConflictResolutionModeLastWriterWins),
/// 				},
/// 				DefaultTtl: pulumi.Int(100),
/// 				FullTextPolicy: &cosmosdb.FullTextPolicyArgs{
/// 					DefaultLanguage: pulumi.String("1033"),
/// 					FullTextPaths: cosmosdb.FullTextPathArray{
/// 						&cosmosdb.FullTextPathArgs{
/// 							Language: pulumi.String("en-US"),
/// 							Path:     pulumi.String("/ftPath1"),
/// 						},
/// 						&cosmosdb.FullTextPathArgs{
/// 							Language: pulumi.String("fr-FR"),
/// 							Path:     pulumi.String("/ftPath2"),
/// 						},
/// 						&cosmosdb.FullTextPathArgs{
/// 							Language: pulumi.String("de-DE"),
/// 							Path:     pulumi.String("/ftPath3"),
/// 						},
/// 					},
/// 				},
/// 				Id: pulumi.String("containerName"),
/// 				IndexingPolicy: &cosmosdb.IndexingPolicyArgs{
/// 					Automatic:     pulumi.Bool(true),
/// 					ExcludedPaths: cosmosdb.ExcludedPathArray{},
/// 					FullTextIndexes: cosmosdb.FullTextIndexPathArray{
/// 						&cosmosdb.FullTextIndexPathArgs{
/// 							Path: pulumi.String("/ftPath1"),
/// 						},
/// 						&cosmosdb.FullTextIndexPathArgs{
/// 							Path: pulumi.String("/ftPath2"),
/// 						},
/// 						&cosmosdb.FullTextIndexPathArgs{
/// 							Path: pulumi.String("/ftPath3"),
/// 						},
/// 					},
/// 					IncludedPaths: cosmosdb.IncludedPathArray{
/// 						&cosmosdb.IncludedPathArgs{
/// 							Indexes: cosmosdb.IndexesArray{
/// 								&cosmosdb.IndexesArgs{
/// 									DataType:  pulumi.String(cosmosdb.DataTypeString),
/// 									Kind:      pulumi.String(cosmosdb.IndexKindRange),
/// 									Precision: pulumi.Int(-1),
/// 								},
/// 								&cosmosdb.IndexesArgs{
/// 									DataType:  pulumi.String(cosmosdb.DataTypeNumber),
/// 									Kind:      pulumi.String(cosmosdb.IndexKindRange),
/// 									Precision: pulumi.Int(-1),
/// 								},
/// 							},
/// 							Path: pulumi.String("/*"),
/// 						},
/// 					},
/// 					IndexingMode: pulumi.String(cosmosdb.IndexingModeConsistent),
/// 					VectorIndexes: cosmosdb.VectorIndexArray{
/// 						&cosmosdb.VectorIndexArgs{
/// 							Path: pulumi.String("/vectorPath1"),
/// 							Type: pulumi.String(cosmosdb.VectorIndexTypeFlat),
/// 						},
/// 						&cosmosdb.VectorIndexArgs{
/// 							Path: pulumi.String("/vectorPath2"),
/// 							Type: pulumi.String(cosmosdb.VectorIndexTypeQuantizedFlat),
/// 						},
/// 						&cosmosdb.VectorIndexArgs{
/// 							Path: pulumi.String("/vectorPath3"),
/// 							Type: pulumi.String(cosmosdb.VectorIndexTypeDiskANN),
/// 						},
/// 					},
/// 				},
/// 				PartitionKey: &cosmosdb.ContainerPartitionKeyArgs{
/// 					Kind: pulumi.String(cosmosdb.PartitionKindHash),
/// 					Paths: pulumi.StringArray{
/// 						pulumi.String("/AccountNumber"),
/// 					},
/// 				},
/// 				UniqueKeyPolicy: &cosmosdb.UniqueKeyPolicyArgs{
/// 					UniqueKeys: cosmosdb.UniqueKeyArray{
/// 						&cosmosdb.UniqueKeyArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/testPath"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				VectorEmbeddingPolicy: &cosmosdb.VectorEmbeddingPolicyArgs{
/// 					VectorEmbeddings: cosmosdb.VectorEmbeddingArray{
/// 						&cosmosdb.VectorEmbeddingArgs{
/// 							DataType:         pulumi.String(cosmosdb.VectorDataTypeFloat32),
/// 							Dimensions:       pulumi.Int(400),
/// 							DistanceFunction: pulumi.String(cosmosdb.DistanceFunctionEuclidean),
/// 							Path:             pulumi.String("/vectorPath1"),
/// 						},
/// 						&cosmosdb.VectorEmbeddingArgs{
/// 							DataType:         pulumi.String(cosmosdb.VectorDataTypeUint8),
/// 							Dimensions:       pulumi.Int(512),
/// 							DistanceFunction: pulumi.String(cosmosdb.DistanceFunctionCosine),
/// 							Path:             pulumi.String("/vectorPath2"),
/// 						},
/// 						&cosmosdb.VectorEmbeddingArgs{
/// 							DataType:         pulumi.String(cosmosdb.VectorDataTypeInt8),
/// 							Dimensions:       pulumi.Int(512),
/// 							DistanceFunction: pulumi.String(cosmosdb.DistanceFunctionDotproduct),
/// 							Path:             pulumi.String("/vectorPath3"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.cosmosdb.SqlResourceSqlContainer;
/// import com.pulumi.azurenative.cosmosdb.SqlResourceSqlContainerArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CreateUpdateOptionsArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.SqlContainerResourceArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.ClientEncryptionPolicyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.ConflictResolutionPolicyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.FullTextPolicyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.IndexingPolicyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.ContainerPartitionKeyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.UniqueKeyPolicyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.VectorEmbeddingPolicyArgs;
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
///         var sqlResourceSqlContainer = new SqlResourceSqlContainer("sqlResourceSqlContainer", SqlResourceSqlContainerArgs.builder()
///             .accountName("ddb1")
///             .containerName("containerName")
///             .databaseName("databaseName")
///             .location("West US")
///             .options(CreateUpdateOptionsArgs.builder()
///                 .build())
///             .resource(SqlContainerResourceArgs.builder()
///                 .clientEncryptionPolicy(ClientEncryptionPolicyArgs.builder()
///                     .includedPaths(ClientEncryptionIncludedPathArgs.builder()
///                         .clientEncryptionKeyId("keyId")
///                         .encryptionAlgorithm("AEAD_AES_256_CBC_HMAC_SHA256")
///                         .encryptionType("Deterministic")
///                         .path("/path")
///                         .build())
///                     .policyFormatVersion(2)
///                     .build())
///                 .computedProperties(ComputedPropertyArgs.builder()
///                     .name("cp_lowerName")
///                     .query("SELECT VALUE LOWER(c.name) FROM c")
///                     .build())
///                 .conflictResolutionPolicy(ConflictResolutionPolicyArgs.builder()
///                     .conflictResolutionPath("/path")
///                     .mode("LastWriterWins")
///                     .build())
///                 .defaultTtl(100)
///                 .fullTextPolicy(FullTextPolicyArgs.builder()
///                     .defaultLanguage("1033")
///                     .fullTextPaths(
///                         FullTextPathArgs.builder()
///                             .language("en-US")
///                             .path("/ftPath1")
///                             .build(),
///                         FullTextPathArgs.builder()
///                             .language("fr-FR")
///                             .path("/ftPath2")
///                             .build(),
///                         FullTextPathArgs.builder()
///                             .language("de-DE")
///                             .path("/ftPath3")
///                             .build())
///                     .build())
///                 .id("containerName")
///                 .indexingPolicy(IndexingPolicyArgs.builder()
///                     .automatic(true)
///                     .excludedPaths()
///                     .fullTextIndexes(
///                         FullTextIndexPathArgs.builder()
///                             .path("/ftPath1")
///                             .build(),
///                         FullTextIndexPathArgs.builder()
///                             .path("/ftPath2")
///                             .build(),
///                         FullTextIndexPathArgs.builder()
///                             .path("/ftPath3")
///                             .build())
///                     .includedPaths(IncludedPathArgs.builder()
///                         .indexes(
///                             IndexesArgs.builder()
///                                 .dataType("String")
///                                 .kind("Range")
///                                 .precision(-1)
///                                 .build(),
///                             IndexesArgs.builder()
///                                 .dataType("Number")
///                                 .kind("Range")
///                                 .precision(-1)
///                                 .build())
///                         .path("/*")
///                         .build())
///                     .indexingMode("consistent")
///                     .vectorIndexes(
///                         VectorIndexArgs.builder()
///                             .path("/vectorPath1")
///                             .type("flat")
///                             .build(),
///                         VectorIndexArgs.builder()
///                             .path("/vectorPath2")
///                             .type("quantizedFlat")
///                             .build(),
///                         VectorIndexArgs.builder()
///                             .path("/vectorPath3")
///                             .type("diskANN")
///                             .build())
///                     .build())
///                 .partitionKey(ContainerPartitionKeyArgs.builder()
///                     .kind("Hash")
///                     .paths("/AccountNumber")
///                     .build())
///                 .uniqueKeyPolicy(UniqueKeyPolicyArgs.builder()
///                     .uniqueKeys(UniqueKeyArgs.builder()
///                         .paths("/testPath")
///                         .build())
///                     .build())
///                 .vectorEmbeddingPolicy(VectorEmbeddingPolicyArgs.builder()
///                     .vectorEmbeddings(
///                         VectorEmbeddingArgs.builder()
///                             .dataType("float32")
///                             .dimensions(400)
///                             .distanceFunction("euclidean")
///                             .path("/vectorPath1")
///                             .build(),
///                         VectorEmbeddingArgs.builder()
///                             .dataType("uint8")
///                             .dimensions(512)
///                             .distanceFunction("cosine")
///                             .path("/vectorPath2")
///                             .build(),
///                         VectorEmbeddingArgs.builder()
///                             .dataType("int8")
///                             .dimensions(512)
///                             .distanceFunction("dotproduct")
///                             .path("/vectorPath3")
///                             .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
///             ))
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
/// const sqlResourceSqlContainer = new azure_native.cosmosdb.SqlResourceSqlContainer("sqlResourceSqlContainer", {
///     accountName: "ddb1",
///     containerName: "containerName",
///     databaseName: "databaseName",
///     location: "West US",
///     options: {},
///     resource: {
///         clientEncryptionPolicy: {
///             includedPaths: [{
///                 clientEncryptionKeyId: "keyId",
///                 encryptionAlgorithm: "AEAD_AES_256_CBC_HMAC_SHA256",
///                 encryptionType: "Deterministic",
///                 path: "/path",
///             }],
///             policyFormatVersion: 2,
///         },
///         computedProperties: [{
///             name: "cp_lowerName",
///             query: "SELECT VALUE LOWER(c.name) FROM c",
///         }],
///         conflictResolutionPolicy: {
///             conflictResolutionPath: "/path",
///             mode: azure_native.cosmosdb.ConflictResolutionMode.LastWriterWins,
///         },
///         defaultTtl: 100,
///         fullTextPolicy: {
///             defaultLanguage: "1033",
///             fullTextPaths: [
///                 {
///                     language: "en-US",
///                     path: "/ftPath1",
///                 },
///                 {
///                     language: "fr-FR",
///                     path: "/ftPath2",
///                 },
///                 {
///                     language: "de-DE",
///                     path: "/ftPath3",
///                 },
///             ],
///         },
///         id: "containerName",
///         indexingPolicy: {
///             automatic: true,
///             excludedPaths: [],
///             fullTextIndexes: [
///                 {
///                     path: "/ftPath1",
///                 },
///                 {
///                     path: "/ftPath2",
///                 },
///                 {
///                     path: "/ftPath3",
///                 },
///             ],
///             includedPaths: [{
///                 indexes: [
///                     {
///                         dataType: azure_native.cosmosdb.DataType.String,
///                         kind: azure_native.cosmosdb.IndexKind.Range,
///                         precision: -1,
///                     },
///                     {
///                         dataType: azure_native.cosmosdb.DataType.Number,
///                         kind: azure_native.cosmosdb.IndexKind.Range,
///                         precision: -1,
///                     },
///                 ],
///                 path: "/*",
///             }],
///             indexingMode: azure_native.cosmosdb.IndexingMode.Consistent,
///             vectorIndexes: [
///                 {
///                     path: "/vectorPath1",
///                     type: azure_native.cosmosdb.VectorIndexType.Flat,
///                 },
///                 {
///                     path: "/vectorPath2",
///                     type: azure_native.cosmosdb.VectorIndexType.QuantizedFlat,
///                 },
///                 {
///                     path: "/vectorPath3",
///                     type: azure_native.cosmosdb.VectorIndexType.DiskANN,
///                 },
///             ],
///         },
///         partitionKey: {
///             kind: azure_native.cosmosdb.PartitionKind.Hash,
///             paths: ["/AccountNumber"],
///         },
///         uniqueKeyPolicy: {
///             uniqueKeys: [{
///                 paths: ["/testPath"],
///             }],
///         },
///         vectorEmbeddingPolicy: {
///             vectorEmbeddings: [
///                 {
///                     dataType: azure_native.cosmosdb.VectorDataType.Float32,
///                     dimensions: 400,
///                     distanceFunction: azure_native.cosmosdb.DistanceFunction.Euclidean,
///                     path: "/vectorPath1",
///                 },
///                 {
///                     dataType: azure_native.cosmosdb.VectorDataType.Uint8,
///                     dimensions: 512,
///                     distanceFunction: azure_native.cosmosdb.DistanceFunction.Cosine,
///                     path: "/vectorPath2",
///                 },
///                 {
///                     dataType: azure_native.cosmosdb.VectorDataType.Int8,
///                     dimensions: 512,
///                     distanceFunction: azure_native.cosmosdb.DistanceFunction.Dotproduct,
///                     path: "/vectorPath3",
///                 },
///             ],
///         },
///     },
///     resourceGroupName: "rg1",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_resource_sql_container = azure_native.cosmosdb.SqlResourceSqlContainer("sqlResourceSqlContainer",
///     account_name="ddb1",
///     container_name="containerName",
///     database_name="databaseName",
///     location="West US",
///     options={},
///     resource={
///         "client_encryption_policy": {
///             "included_paths": [{
///                 "client_encryption_key_id": "keyId",
///                 "encryption_algorithm": "AEAD_AES_256_CBC_HMAC_SHA256",
///                 "encryption_type": "Deterministic",
///                 "path": "/path",
///             }],
///             "policy_format_version": 2,
///         },
///         "computed_properties": [{
///             "name": "cp_lowerName",
///             "query": "SELECT VALUE LOWER(c.name) FROM c",
///         }],
///         "conflict_resolution_policy": {
///             "conflict_resolution_path": "/path",
///             "mode": azure_native.cosmosdb.ConflictResolutionMode.LAST_WRITER_WINS,
///         },
///         "default_ttl": 100,
///         "full_text_policy": {
///             "default_language": "1033",
///             "full_text_paths": [
///                 {
///                     "language": "en-US",
///                     "path": "/ftPath1",
///                 },
///                 {
///                     "language": "fr-FR",
///                     "path": "/ftPath2",
///                 },
///                 {
///                     "language": "de-DE",
///                     "path": "/ftPath3",
///                 },
///             ],
///         },
///         "id": "containerName",
///         "indexing_policy": {
///             "automatic": True,
///             "excluded_paths": [],
///             "full_text_indexes": [
///                 {
///                     "path": "/ftPath1",
///                 },
///                 {
///                     "path": "/ftPath2",
///                 },
///                 {
///                     "path": "/ftPath3",
///                 },
///             ],
///             "included_paths": [{
///                 "indexes": [
///                     {
///                         "data_type": azure_native.cosmosdb.DataType.STRING,
///                         "kind": azure_native.cosmosdb.IndexKind.RANGE,
///                         "precision": -1,
///                     },
///                     {
///                         "data_type": azure_native.cosmosdb.DataType.NUMBER,
///                         "kind": azure_native.cosmosdb.IndexKind.RANGE,
///                         "precision": -1,
///                     },
///                 ],
///                 "path": "/*",
///             }],
///             "indexing_mode": azure_native.cosmosdb.IndexingMode.CONSISTENT,
///             "vector_indexes": [
///                 {
///                     "path": "/vectorPath1",
///                     "type": azure_native.cosmosdb.VectorIndexType.FLAT,
///                 },
///                 {
///                     "path": "/vectorPath2",
///                     "type": azure_native.cosmosdb.VectorIndexType.QUANTIZED_FLAT,
///                 },
///                 {
///                     "path": "/vectorPath3",
///                     "type": azure_native.cosmosdb.VectorIndexType.DISK_ANN,
///                 },
///             ],
///         },
///         "partition_key": {
///             "kind": azure_native.cosmosdb.PartitionKind.HASH,
///             "paths": ["/AccountNumber"],
///         },
///         "unique_key_policy": {
///             "unique_keys": [{
///                 "paths": ["/testPath"],
///             }],
///         },
///         "vector_embedding_policy": {
///             "vector_embeddings": [
///                 {
///                     "data_type": azure_native.cosmosdb.VectorDataType.FLOAT32,
///                     "dimensions": 400,
///                     "distance_function": azure_native.cosmosdb.DistanceFunction.EUCLIDEAN,
///                     "path": "/vectorPath1",
///                 },
///                 {
///                     "data_type": azure_native.cosmosdb.VectorDataType.UINT8,
///                     "dimensions": 512,
///                     "distance_function": azure_native.cosmosdb.DistanceFunction.COSINE,
///                     "path": "/vectorPath2",
///                 },
///                 {
///                     "data_type": azure_native.cosmosdb.VectorDataType.INT8,
///                     "dimensions": 512,
///                     "distance_function": azure_native.cosmosdb.DistanceFunction.DOTPRODUCT,
///                     "path": "/vectorPath3",
///                 },
///             ],
///         },
///     },
///     resource_group_name="rg1",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sqlResourceSqlContainer:
///     type: azure-native:cosmosdb:SqlResourceSqlContainer
///     properties:
///       accountName: ddb1
///       containerName: containerName
///       databaseName: databaseName
///       location: West US
///       options: {}
///       resource:
///         clientEncryptionPolicy:
///           includedPaths:
///             - clientEncryptionKeyId: keyId
///               encryptionAlgorithm: AEAD_AES_256_CBC_HMAC_SHA256
///               encryptionType: Deterministic
///               path: /path
///           policyFormatVersion: 2
///         computedProperties:
///           - name: cp_lowerName
///             query: SELECT VALUE LOWER(c.name) FROM c
///         conflictResolutionPolicy:
///           conflictResolutionPath: /path
///           mode: LastWriterWins
///         defaultTtl: 100
///         fullTextPolicy:
///           defaultLanguage: '1033'
///           fullTextPaths:
///             - language: en-US
///               path: /ftPath1
///             - language: fr-FR
///               path: /ftPath2
///             - language: de-DE
///               path: /ftPath3
///         id: containerName
///         indexingPolicy:
///           automatic: true
///           excludedPaths: []
///           fullTextIndexes:
///             - path: /ftPath1
///             - path: /ftPath2
///             - path: /ftPath3
///           includedPaths:
///             - indexes:
///                 - dataType: String
///                   kind: Range
///                   precision: -1
///                 - dataType: Number
///                   kind: Range
///                   precision: -1
///               path: /*
///           indexingMode: consistent
///           vectorIndexes:
///             - path: /vectorPath1
///               type: flat
///             - path: /vectorPath2
///               type: quantizedFlat
///             - path: /vectorPath3
///               type: diskANN
///         partitionKey:
///           kind: Hash
///           paths:
///             - /AccountNumber
///         uniqueKeyPolicy:
///           uniqueKeys:
///             - paths:
///                 - /testPath
///         vectorEmbeddingPolicy:
///           vectorEmbeddings:
///             - dataType: float32
///               dimensions: 400
///               distanceFunction: euclidean
///               path: /vectorPath1
///             - dataType: uint8
///               dimensions: 512
///               distanceFunction: cosine
///               path: /vectorPath2
///             - dataType: int8
///               dimensions: 512
///               distanceFunction: dotproduct
///               path: /vectorPath3
///       resourceGroupName: rg1
///       tags: {}
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
/// $ pulumi import azure-native:cosmosdb:SqlResourceSqlContainer containerName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/sqlDatabases/{databaseName}/containers/{containerName}
/// ```
class SqlResourceSqlContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;
  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<SqlContainerGetPropertiesResponseOptions?> options;
  late final pulumi.Output<SqlContainerGetPropertiesResponseResource?> resource;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [SqlResourceSqlContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlResourceSqlContainer]. {@macro pulumi_cosmosdb_sql_resource_sql_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlResourceSqlContainer(
    String name, {
    SqlResourceSqlContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:SqlResourceSqlContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<SqlContainerGetPropertiesResponseOptions?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerGetPropertiesResponseOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resource = registerOutput<SqlContainerGetPropertiesResponseResource?>('resource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlContainerGetPropertiesResponseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
