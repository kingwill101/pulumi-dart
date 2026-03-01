import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamo_db_table_args.dart';
import 'dynamo_dbtable_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DynamoDbTables_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dynamoDbTable = new AzureNative.AwsConnector.DynamoDbTable("dynamoDbTable", new()
///     {
///         Location = "fmkjilswdjyisfuwxuj",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.DynamoDBTablePropertiesArgs
///         {
///             Arn = "gimtbcfiznraniycjyalnwrfstm",
///             AwsAccountId = "dejqcxb",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsDynamoDBTablePropertiesArgs
///             {
///                 Arn = "qbvqgymuxfzuwybdspdhcuvfouwnet",
///                 AttributeDefinitions = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.AttributeDefinitionArgs
///                     {
///                         AttributeName = "caryhpofnkqtoc",
///                         AttributeType = "bcmjgzaljcemcrswr",
///                     },
///                 },
///                 BillingMode = "pwxrsjcybdcidejuhvrckvxyxad",
///                 ContributorInsightsSpecification = new AzureNative.AwsConnector.Inputs.ContributorInsightsSpecificationArgs
///                 {
///                     Enabled = true,
///                 },
///                 DeletionProtectionEnabled = true,
///                 GlobalSecondaryIndexes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.GlobalSecondaryIndexArgs
///                     {
///                         ContributorInsightsSpecification = new AzureNative.AwsConnector.Inputs.ContributorInsightsSpecificationArgs
///                         {
///                             Enabled = true,
///                         },
///                         IndexName = "uqlzacnvsvayrvirrwwttb",
///                         KeySchema = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.KeySchemaArgs
///                             {
///                                 AttributeName = "wisgqkyoouaxivtrtay",
///                                 KeyType = "kwkqgbxrwnoklpgmoypovxe",
///                             },
///                         },
///                         Projection = new AzureNative.AwsConnector.Inputs.ProjectionArgs
///                         {
///                             NonKeyAttributes = new[]
///                             {
///                                 "loqmvohtjsscueegam",
///                             },
///                             ProjectionType = "atbzepkydpgudoaqi",
///                         },
///                         ProvisionedThroughput = new AzureNative.AwsConnector.Inputs.ProvisionedThroughputArgs
///                         {
///                             ReadCapacityUnits = 10,
///                             WriteCapacityUnits = 28,
///                         },
///                     },
///                 },
///                 ImportSourceSpecification = new AzureNative.AwsConnector.Inputs.ImportSourceSpecificationArgs
///                 {
///                     InputCompressionType = "bjswmnwxleqmcth",
///                     InputFormat = "grnhhysgejvbnecrqoynjomz",
///                     InputFormatOptions = new AzureNative.AwsConnector.Inputs.InputFormatOptionsArgs
///                     {
///                         Csv = new AzureNative.AwsConnector.Inputs.CsvArgs
///                         {
///                             Delimiter = "qzowvvpwwhptthlgvrtnpyjszetrt",
///                             HeaderList = new[]
///                             {
///                                 "gminuylhgebpjx",
///                             },
///                         },
///                     },
///                     S3BucketSource = new AzureNative.AwsConnector.Inputs.S3BucketSourceArgs
///                     {
///                         S3Bucket = "exulhkspgmo",
///                         S3BucketOwner = "pyawhaxbwqhgarz",
///                         S3KeyPrefix = "ogjgqdsvu",
///                     },
///                 },
///                 KeySchema = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.KeySchemaArgs
///                     {
///                         AttributeName = "wisgqkyoouaxivtrtay",
///                         KeyType = "kwkqgbxrwnoklpgmoypovxe",
///                     },
///                 },
///                 KinesisStreamSpecification = new AzureNative.AwsConnector.Inputs.KinesisStreamSpecificationArgs
///                 {
///                     ApproximateCreationDateTimePrecision = AzureNative.AwsConnector.KinesisStreamSpecificationApproximateCreationDateTimePrecision.MICROSECOND,
///                     StreamArn = "qldltl",
///                 },
///                 LocalSecondaryIndexes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.LocalSecondaryIndexArgs
///                     {
///                         IndexName = "gintyosxvkjqpe",
///                         KeySchema = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.KeySchemaArgs
///                             {
///                                 AttributeName = "wisgqkyoouaxivtrtay",
///                                 KeyType = "kwkqgbxrwnoklpgmoypovxe",
///                             },
///                         },
///                         Projection = new AzureNative.AwsConnector.Inputs.ProjectionArgs
///                         {
///                             NonKeyAttributes = new[]
///                             {
///                                 "loqmvohtjsscueegam",
///                             },
///                             ProjectionType = "atbzepkydpgudoaqi",
///                         },
///                     },
///                 },
///                 PointInTimeRecoverySpecification = new AzureNative.AwsConnector.Inputs.PointInTimeRecoverySpecificationArgs
///                 {
///                     PointInTimeRecoveryEnabled = true,
///                 },
///                 ProvisionedThroughput = new AzureNative.AwsConnector.Inputs.ProvisionedThroughputArgs
///                 {
///                     ReadCapacityUnits = 10,
///                     WriteCapacityUnits = 28,
///                 },
///                 ResourcePolicy = null,
///                 SseSpecification = new AzureNative.AwsConnector.Inputs.SSESpecificationArgs
///                 {
///                     KmsMasterKeyId = "rvwuejohzknzrntkvprgxt",
///                     SseEnabled = true,
///                     SseType = "osjalywculjbrystezvjojxe",
///                 },
///                 StreamArn = "xvkrzs",
///                 StreamSpecification = new AzureNative.AwsConnector.Inputs.StreamSpecificationArgs
///                 {
///                     ResourcePolicy = null,
///                     StreamViewType = "wemod",
///                 },
///                 TableClass = "tmbfrfbppwhjpm",
///                 TableName = "mqvlcdboopn",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "txipennfw",
///                         Value = "dkgweupnz",
///                     },
///                 },
///                 TimeToLiveSpecification = new AzureNative.AwsConnector.Inputs.TimeToLiveSpecificationArgs
///                 {
///                     AttributeName = "sxbfejubturdtyusqywguqni",
///                     Enabled = true,
///                 },
///             },
///             AwsRegion = "rdzrhtbydhmaxzuwe",
///             AwsSourceSchema = "sqkkuxwamzevkp",
///             AwsTags =
///             {
///                 { "key3791", "iikafuvbjkvnbogujm" },
///             },
///             PublicCloudConnectorsResourceId = "nugnoqcknmrrminwvfvloqsporjd",
///             PublicCloudResourceName = "lkbwyvnzooydbnembmykhmw",
///         },
///         ResourceGroupName = "rgdynamoDBTable",
///         Tags =
///         {
///             { "key2178", "lyeternduvkobwvqhpicnxel" },
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
/// 	awsconnector "github.com/pulumi/pulumi-azure-native-sdk/awsconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := awsconnector.NewDynamoDbTable(ctx, "dynamoDbTable", &awsconnector.DynamoDbTableArgs{
/// 			Location: pulumi.String("fmkjilswdjyisfuwxuj"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.DynamoDBTablePropertiesArgs{
/// 				Arn:          pulumi.String("gimtbcfiznraniycjyalnwrfstm"),
/// 				AwsAccountId: pulumi.String("dejqcxb"),
/// 				AwsProperties: &awsconnector.AwsDynamoDBTablePropertiesArgs{
/// 					Arn: pulumi.String("qbvqgymuxfzuwybdspdhcuvfouwnet"),
/// 					AttributeDefinitions: awsconnector.AttributeDefinitionArray{
/// 						&awsconnector.AttributeDefinitionArgs{
/// 							AttributeName: pulumi.String("caryhpofnkqtoc"),
/// 							AttributeType: pulumi.String("bcmjgzaljcemcrswr"),
/// 						},
/// 					},
/// 					BillingMode: pulumi.String("pwxrsjcybdcidejuhvrckvxyxad"),
/// 					ContributorInsightsSpecification: &awsconnector.ContributorInsightsSpecificationArgs{
/// 						Enabled: pulumi.Bool(true),
/// 					},
/// 					DeletionProtectionEnabled: pulumi.Bool(true),
/// 					GlobalSecondaryIndexes: awsconnector.GlobalSecondaryIndexArray{
/// 						&awsconnector.GlobalSecondaryIndexArgs{
/// 							ContributorInsightsSpecification: &awsconnector.ContributorInsightsSpecificationArgs{
/// 								Enabled: pulumi.Bool(true),
/// 							},
/// 							IndexName: pulumi.String("uqlzacnvsvayrvirrwwttb"),
/// 							KeySchema: awsconnector.KeySchemaArray{
/// 								&awsconnector.KeySchemaArgs{
/// 									AttributeName: pulumi.String("wisgqkyoouaxivtrtay"),
/// 									KeyType:       pulumi.String("kwkqgbxrwnoklpgmoypovxe"),
/// 								},
/// 							},
/// 							Projection: &awsconnector.ProjectionArgs{
/// 								NonKeyAttributes: pulumi.StringArray{
/// 									pulumi.String("loqmvohtjsscueegam"),
/// 								},
/// 								ProjectionType: pulumi.String("atbzepkydpgudoaqi"),
/// 							},
/// 							ProvisionedThroughput: &awsconnector.ProvisionedThroughputArgs{
/// 								ReadCapacityUnits:  pulumi.Int(10),
/// 								WriteCapacityUnits: pulumi.Int(28),
/// 							},
/// 						},
/// 					},
/// 					ImportSourceSpecification: &awsconnector.ImportSourceSpecificationArgs{
/// 						InputCompressionType: pulumi.String("bjswmnwxleqmcth"),
/// 						InputFormat:          pulumi.String("grnhhysgejvbnecrqoynjomz"),
/// 						InputFormatOptions: &awsconnector.InputFormatOptionsArgs{
/// 							Csv: &awsconnector.CsvArgs{
/// 								Delimiter: pulumi.String("qzowvvpwwhptthlgvrtnpyjszetrt"),
/// 								HeaderList: pulumi.StringArray{
/// 									pulumi.String("gminuylhgebpjx"),
/// 								},
/// 							},
/// 						},
/// 						S3BucketSource: &awsconnector.S3BucketSourceArgs{
/// 							S3Bucket:      pulumi.String("exulhkspgmo"),
/// 							S3BucketOwner: pulumi.String("pyawhaxbwqhgarz"),
/// 							S3KeyPrefix:   pulumi.String("ogjgqdsvu"),
/// 						},
/// 					},
/// 					KeySchema: awsconnector.KeySchemaArray{
/// 						&awsconnector.KeySchemaArgs{
/// 							AttributeName: pulumi.String("wisgqkyoouaxivtrtay"),
/// 							KeyType:       pulumi.String("kwkqgbxrwnoklpgmoypovxe"),
/// 						},
/// 					},
/// 					KinesisStreamSpecification: &awsconnector.KinesisStreamSpecificationArgs{
/// 						ApproximateCreationDateTimePrecision: pulumi.String(awsconnector.KinesisStreamSpecificationApproximateCreationDateTimePrecisionMICROSECOND),
/// 						StreamArn:                            pulumi.String("qldltl"),
/// 					},
/// 					LocalSecondaryIndexes: awsconnector.LocalSecondaryIndexArray{
/// 						&awsconnector.LocalSecondaryIndexArgs{
/// 							IndexName: pulumi.String("gintyosxvkjqpe"),
/// 							KeySchema: awsconnector.KeySchemaArray{
/// 								&awsconnector.KeySchemaArgs{
/// 									AttributeName: pulumi.String("wisgqkyoouaxivtrtay"),
/// 									KeyType:       pulumi.String("kwkqgbxrwnoklpgmoypovxe"),
/// 								},
/// 							},
/// 							Projection: &awsconnector.ProjectionArgs{
/// 								NonKeyAttributes: pulumi.StringArray{
/// 									pulumi.String("loqmvohtjsscueegam"),
/// 								},
/// 								ProjectionType: pulumi.String("atbzepkydpgudoaqi"),
/// 							},
/// 						},
/// 					},
/// 					PointInTimeRecoverySpecification: &awsconnector.PointInTimeRecoverySpecificationArgs{
/// 						PointInTimeRecoveryEnabled: pulumi.Bool(true),
/// 					},
/// 					ProvisionedThroughput: &awsconnector.ProvisionedThroughputArgs{
/// 						ReadCapacityUnits:  pulumi.Int(10),
/// 						WriteCapacityUnits: pulumi.Int(28),
/// 					},
/// 					ResourcePolicy: &awsconnector.ResourcePolicyArgs{},
/// 					SseSpecification: &awsconnector.SSESpecificationArgs{
/// 						KmsMasterKeyId: pulumi.String("rvwuejohzknzrntkvprgxt"),
/// 						SseEnabled:     pulumi.Bool(true),
/// 						SseType:        pulumi.String("osjalywculjbrystezvjojxe"),
/// 					},
/// 					StreamArn: pulumi.String("xvkrzs"),
/// 					StreamSpecification: &awsconnector.StreamSpecificationArgs{
/// 						ResourcePolicy: &awsconnector.ResourcePolicyArgs{},
/// 						StreamViewType: pulumi.String("wemod"),
/// 					},
/// 					TableClass: pulumi.String("tmbfrfbppwhjpm"),
/// 					TableName:  pulumi.String("mqvlcdboopn"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("txipennfw"),
/// 							Value: pulumi.String("dkgweupnz"),
/// 						},
/// 					},
/// 					TimeToLiveSpecification: &awsconnector.TimeToLiveSpecificationArgs{
/// 						AttributeName: pulumi.String("sxbfejubturdtyusqywguqni"),
/// 						Enabled:       pulumi.Bool(true),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("rdzrhtbydhmaxzuwe"),
/// 				AwsSourceSchema: pulumi.String("sqkkuxwamzevkp"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3791": pulumi.String("iikafuvbjkvnbogujm"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("nugnoqcknmrrminwvfvloqsporjd"),
/// 				PublicCloudResourceName:         pulumi.String("lkbwyvnzooydbnembmykhmw"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdynamoDBTable"),
/// 			Tags: pulumi.StringMap{
/// 				"key2178": pulumi.String("lyeternduvkobwvqhpicnxel"),
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
/// import com.pulumi.azurenative.awsconnector.DynamoDbTable;
/// import com.pulumi.azurenative.awsconnector.DynamoDbTableArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DynamoDBTablePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsDynamoDBTablePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ContributorInsightsSpecificationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ImportSourceSpecificationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InputFormatOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CsvArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3BucketSourceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.KinesisStreamSpecificationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PointInTimeRecoverySpecificationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProvisionedThroughputArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ResourcePolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SSESpecificationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.StreamSpecificationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TimeToLiveSpecificationArgs;
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
///         var dynamoDbTable = new DynamoDbTable("dynamoDbTable", DynamoDbTableArgs.builder()
///             .location("fmkjilswdjyisfuwxuj")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(DynamoDBTablePropertiesArgs.builder()
///                 .arn("gimtbcfiznraniycjyalnwrfstm")
///                 .awsAccountId("dejqcxb")
///                 .awsProperties(AwsDynamoDBTablePropertiesArgs.builder()
///                     .arn("qbvqgymuxfzuwybdspdhcuvfouwnet")
///                     .attributeDefinitions(AttributeDefinitionArgs.builder()
///                         .attributeName("caryhpofnkqtoc")
///                         .attributeType("bcmjgzaljcemcrswr")
///                         .build())
///                     .billingMode("pwxrsjcybdcidejuhvrckvxyxad")
///                     .contributorInsightsSpecification(ContributorInsightsSpecificationArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .deletionProtectionEnabled(true)
///                     .globalSecondaryIndexes(GlobalSecondaryIndexArgs.builder()
///                         .contributorInsightsSpecification(ContributorInsightsSpecificationArgs.builder()
///                             .enabled(true)
///                             .build())
///                         .indexName("uqlzacnvsvayrvirrwwttb")
///                         .keySchema(KeySchemaArgs.builder()
///                             .attributeName("wisgqkyoouaxivtrtay")
///                             .keyType("kwkqgbxrwnoklpgmoypovxe")
///                             .build())
///                         .projection(ProjectionArgs.builder()
///                             .nonKeyAttributes("loqmvohtjsscueegam")
///                             .projectionType("atbzepkydpgudoaqi")
///                             .build())
///                         .provisionedThroughput(ProvisionedThroughputArgs.builder()
///                             .readCapacityUnits(10)
///                             .writeCapacityUnits(28)
///                             .build())
///                         .build())
///                     .importSourceSpecification(ImportSourceSpecificationArgs.builder()
///                         .inputCompressionType("bjswmnwxleqmcth")
///                         .inputFormat("grnhhysgejvbnecrqoynjomz")
///                         .inputFormatOptions(InputFormatOptionsArgs.builder()
///                             .csv(CsvArgs.builder()
///                                 .delimiter("qzowvvpwwhptthlgvrtnpyjszetrt")
///                                 .headerList("gminuylhgebpjx")
///                                 .build())
///                             .build())
///                         .s3BucketSource(S3BucketSourceArgs.builder()
///                             .s3Bucket("exulhkspgmo")
///                             .s3BucketOwner("pyawhaxbwqhgarz")
///                             .s3KeyPrefix("ogjgqdsvu")
///                             .build())
///                         .build())
///                     .keySchema(KeySchemaArgs.builder()
///                         .attributeName("wisgqkyoouaxivtrtay")
///                         .keyType("kwkqgbxrwnoklpgmoypovxe")
///                         .build())
///                     .kinesisStreamSpecification(KinesisStreamSpecificationArgs.builder()
///                         .approximateCreationDateTimePrecision("MICROSECOND")
///                         .streamArn("qldltl")
///                         .build())
///                     .localSecondaryIndexes(LocalSecondaryIndexArgs.builder()
///                         .indexName("gintyosxvkjqpe")
///                         .keySchema(KeySchemaArgs.builder()
///                             .attributeName("wisgqkyoouaxivtrtay")
///                             .keyType("kwkqgbxrwnoklpgmoypovxe")
///                             .build())
///                         .projection(ProjectionArgs.builder()
///                             .nonKeyAttributes("loqmvohtjsscueegam")
///                             .projectionType("atbzepkydpgudoaqi")
///                             .build())
///                         .build())
///                     .pointInTimeRecoverySpecification(PointInTimeRecoverySpecificationArgs.builder()
///                         .pointInTimeRecoveryEnabled(true)
///                         .build())
///                     .provisionedThroughput(ProvisionedThroughputArgs.builder()
///                         .readCapacityUnits(10)
///                         .writeCapacityUnits(28)
///                         .build())
///                     .resourcePolicy(ResourcePolicyArgs.builder()
///                         .build())
///                     .sseSpecification(SSESpecificationArgs.builder()
///                         .kmsMasterKeyId("rvwuejohzknzrntkvprgxt")
///                         .sseEnabled(true)
///                         .sseType("osjalywculjbrystezvjojxe")
///                         .build())
///                     .streamArn("xvkrzs")
///                     .streamSpecification(StreamSpecificationArgs.builder()
///                         .resourcePolicy(ResourcePolicyArgs.builder()
///                             .build())
///                         .streamViewType("wemod")
///                         .build())
///                     .tableClass("tmbfrfbppwhjpm")
///                     .tableName("mqvlcdboopn")
///                     .tags(TagArgs.builder()
///                         .key("txipennfw")
///                         .value("dkgweupnz")
///                         .build())
///                     .timeToLiveSpecification(TimeToLiveSpecificationArgs.builder()
///                         .attributeName("sxbfejubturdtyusqywguqni")
///                         .enabled(true)
///                         .build())
///                     .build())
///                 .awsRegion("rdzrhtbydhmaxzuwe")
///                 .awsSourceSchema("sqkkuxwamzevkp")
///                 .awsTags(Map.of("key3791", "iikafuvbjkvnbogujm"))
///                 .publicCloudConnectorsResourceId("nugnoqcknmrrminwvfvloqsporjd")
///                 .publicCloudResourceName("lkbwyvnzooydbnembmykhmw")
///                 .build())
///             .resourceGroupName("rgdynamoDBTable")
///             .tags(Map.of("key2178", "lyeternduvkobwvqhpicnxel"))
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
/// const dynamoDbTable = new azure_native.awsconnector.DynamoDbTable("dynamoDbTable", {
///     location: "fmkjilswdjyisfuwxuj",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "gimtbcfiznraniycjyalnwrfstm",
///         awsAccountId: "dejqcxb",
///         awsProperties: {
///             arn: "qbvqgymuxfzuwybdspdhcuvfouwnet",
///             attributeDefinitions: [{
///                 attributeName: "caryhpofnkqtoc",
///                 attributeType: "bcmjgzaljcemcrswr",
///             }],
///             billingMode: "pwxrsjcybdcidejuhvrckvxyxad",
///             contributorInsightsSpecification: {
///                 enabled: true,
///             },
///             deletionProtectionEnabled: true,
///             globalSecondaryIndexes: [{
///                 contributorInsightsSpecification: {
///                     enabled: true,
///                 },
///                 indexName: "uqlzacnvsvayrvirrwwttb",
///                 keySchema: [{
///                     attributeName: "wisgqkyoouaxivtrtay",
///                     keyType: "kwkqgbxrwnoklpgmoypovxe",
///                 }],
///                 projection: {
///                     nonKeyAttributes: ["loqmvohtjsscueegam"],
///                     projectionType: "atbzepkydpgudoaqi",
///                 },
///                 provisionedThroughput: {
///                     readCapacityUnits: 10,
///                     writeCapacityUnits: 28,
///                 },
///             }],
///             importSourceSpecification: {
///                 inputCompressionType: "bjswmnwxleqmcth",
///                 inputFormat: "grnhhysgejvbnecrqoynjomz",
///                 inputFormatOptions: {
///                     csv: {
///                         delimiter: "qzowvvpwwhptthlgvrtnpyjszetrt",
///                         headerList: ["gminuylhgebpjx"],
///                     },
///                 },
///                 s3BucketSource: {
///                     s3Bucket: "exulhkspgmo",
///                     s3BucketOwner: "pyawhaxbwqhgarz",
///                     s3KeyPrefix: "ogjgqdsvu",
///                 },
///             },
///             keySchema: [{
///                 attributeName: "wisgqkyoouaxivtrtay",
///                 keyType: "kwkqgbxrwnoklpgmoypovxe",
///             }],
///             kinesisStreamSpecification: {
///                 approximateCreationDateTimePrecision: azure_native.awsconnector.KinesisStreamSpecificationApproximateCreationDateTimePrecision.MICROSECOND,
///                 streamArn: "qldltl",
///             },
///             localSecondaryIndexes: [{
///                 indexName: "gintyosxvkjqpe",
///                 keySchema: [{
///                     attributeName: "wisgqkyoouaxivtrtay",
///                     keyType: "kwkqgbxrwnoklpgmoypovxe",
///                 }],
///                 projection: {
///                     nonKeyAttributes: ["loqmvohtjsscueegam"],
///                     projectionType: "atbzepkydpgudoaqi",
///                 },
///             }],
///             pointInTimeRecoverySpecification: {
///                 pointInTimeRecoveryEnabled: true,
///             },
///             provisionedThroughput: {
///                 readCapacityUnits: 10,
///                 writeCapacityUnits: 28,
///             },
///             resourcePolicy: {},
///             sseSpecification: {
///                 kmsMasterKeyId: "rvwuejohzknzrntkvprgxt",
///                 sseEnabled: true,
///                 sseType: "osjalywculjbrystezvjojxe",
///             },
///             streamArn: "xvkrzs",
///             streamSpecification: {
///                 resourcePolicy: {},
///                 streamViewType: "wemod",
///             },
///             tableClass: "tmbfrfbppwhjpm",
///             tableName: "mqvlcdboopn",
///             tags: [{
///                 key: "txipennfw",
///                 value: "dkgweupnz",
///             }],
///             timeToLiveSpecification: {
///                 attributeName: "sxbfejubturdtyusqywguqni",
///                 enabled: true,
///             },
///         },
///         awsRegion: "rdzrhtbydhmaxzuwe",
///         awsSourceSchema: "sqkkuxwamzevkp",
///         awsTags: {
///             key3791: "iikafuvbjkvnbogujm",
///         },
///         publicCloudConnectorsResourceId: "nugnoqcknmrrminwvfvloqsporjd",
///         publicCloudResourceName: "lkbwyvnzooydbnembmykhmw",
///     },
///     resourceGroupName: "rgdynamoDBTable",
///     tags: {
///         key2178: "lyeternduvkobwvqhpicnxel",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dynamo_db_table = azure_native.awsconnector.DynamoDbTable("dynamoDbTable",
///     location="fmkjilswdjyisfuwxuj",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "gimtbcfiznraniycjyalnwrfstm",
///         "aws_account_id": "dejqcxb",
///         "aws_properties": {
///             "arn": "qbvqgymuxfzuwybdspdhcuvfouwnet",
///             "attribute_definitions": [{
///                 "attribute_name": "caryhpofnkqtoc",
///                 "attribute_type": "bcmjgzaljcemcrswr",
///             }],
///             "billing_mode": "pwxrsjcybdcidejuhvrckvxyxad",
///             "contributor_insights_specification": {
///                 "enabled": True,
///             },
///             "deletion_protection_enabled": True,
///             "global_secondary_indexes": [{
///                 "contributor_insights_specification": {
///                     "enabled": True,
///                 },
///                 "index_name": "uqlzacnvsvayrvirrwwttb",
///                 "key_schema": [{
///                     "attribute_name": "wisgqkyoouaxivtrtay",
///                     "key_type": "kwkqgbxrwnoklpgmoypovxe",
///                 }],
///                 "projection": {
///                     "non_key_attributes": ["loqmvohtjsscueegam"],
///                     "projection_type": "atbzepkydpgudoaqi",
///                 },
///                 "provisioned_throughput": {
///                     "read_capacity_units": 10,
///                     "write_capacity_units": 28,
///                 },
///             }],
///             "import_source_specification": {
///                 "input_compression_type": "bjswmnwxleqmcth",
///                 "input_format": "grnhhysgejvbnecrqoynjomz",
///                 "input_format_options": {
///                     "csv": {
///                         "delimiter": "qzowvvpwwhptthlgvrtnpyjszetrt",
///                         "header_list": ["gminuylhgebpjx"],
///                     },
///                 },
///                 "s3_bucket_source": {
///                     "s3_bucket": "exulhkspgmo",
///                     "s3_bucket_owner": "pyawhaxbwqhgarz",
///                     "s3_key_prefix": "ogjgqdsvu",
///                 },
///             },
///             "key_schema": [{
///                 "attribute_name": "wisgqkyoouaxivtrtay",
///                 "key_type": "kwkqgbxrwnoklpgmoypovxe",
///             }],
///             "kinesis_stream_specification": {
///                 "approximate_creation_date_time_precision": azure_native.awsconnector.KinesisStreamSpecificationApproximateCreationDateTimePrecision.MICROSECOND,
///                 "stream_arn": "qldltl",
///             },
///             "local_secondary_indexes": [{
///                 "index_name": "gintyosxvkjqpe",
///                 "key_schema": [{
///                     "attribute_name": "wisgqkyoouaxivtrtay",
///                     "key_type": "kwkqgbxrwnoklpgmoypovxe",
///                 }],
///                 "projection": {
///                     "non_key_attributes": ["loqmvohtjsscueegam"],
///                     "projection_type": "atbzepkydpgudoaqi",
///                 },
///             }],
///             "point_in_time_recovery_specification": {
///                 "point_in_time_recovery_enabled": True,
///             },
///             "provisioned_throughput": {
///                 "read_capacity_units": 10,
///                 "write_capacity_units": 28,
///             },
///             "resource_policy": {},
///             "sse_specification": {
///                 "kms_master_key_id": "rvwuejohzknzrntkvprgxt",
///                 "sse_enabled": True,
///                 "sse_type": "osjalywculjbrystezvjojxe",
///             },
///             "stream_arn": "xvkrzs",
///             "stream_specification": {
///                 "resource_policy": {},
///                 "stream_view_type": "wemod",
///             },
///             "table_class": "tmbfrfbppwhjpm",
///             "table_name": "mqvlcdboopn",
///             "tags": [{
///                 "key": "txipennfw",
///                 "value": "dkgweupnz",
///             }],
///             "time_to_live_specification": {
///                 "attribute_name": "sxbfejubturdtyusqywguqni",
///                 "enabled": True,
///             },
///         },
///         "aws_region": "rdzrhtbydhmaxzuwe",
///         "aws_source_schema": "sqkkuxwamzevkp",
///         "aws_tags": {
///             "key3791": "iikafuvbjkvnbogujm",
///         },
///         "public_cloud_connectors_resource_id": "nugnoqcknmrrminwvfvloqsporjd",
///         "public_cloud_resource_name": "lkbwyvnzooydbnembmykhmw",
///     },
///     resource_group_name="rgdynamoDBTable",
///     tags={
///         "key2178": "lyeternduvkobwvqhpicnxel",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dynamoDbTable:
///     type: azure-native:awsconnector:DynamoDbTable
///     properties:
///       location: fmkjilswdjyisfuwxuj
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: gimtbcfiznraniycjyalnwrfstm
///         awsAccountId: dejqcxb
///         awsProperties:
///           arn: qbvqgymuxfzuwybdspdhcuvfouwnet
///           attributeDefinitions:
///             - attributeName: caryhpofnkqtoc
///               attributeType: bcmjgzaljcemcrswr
///           billingMode: pwxrsjcybdcidejuhvrckvxyxad
///           contributorInsightsSpecification:
///             enabled: true
///           deletionProtectionEnabled: true
///           globalSecondaryIndexes:
///             - contributorInsightsSpecification:
///                 enabled: true
///               indexName: uqlzacnvsvayrvirrwwttb
///               keySchema:
///                 - attributeName: wisgqkyoouaxivtrtay
///                   keyType: kwkqgbxrwnoklpgmoypovxe
///               projection:
///                 nonKeyAttributes:
///                   - loqmvohtjsscueegam
///                 projectionType: atbzepkydpgudoaqi
///               provisionedThroughput:
///                 readCapacityUnits: 10
///                 writeCapacityUnits: 28
///           importSourceSpecification:
///             inputCompressionType: bjswmnwxleqmcth
///             inputFormat: grnhhysgejvbnecrqoynjomz
///             inputFormatOptions:
///               csv:
///                 delimiter: qzowvvpwwhptthlgvrtnpyjszetrt
///                 headerList:
///                   - gminuylhgebpjx
///             s3BucketSource:
///               s3Bucket: exulhkspgmo
///               s3BucketOwner: pyawhaxbwqhgarz
///               s3KeyPrefix: ogjgqdsvu
///           keySchema:
///             - attributeName: wisgqkyoouaxivtrtay
///               keyType: kwkqgbxrwnoklpgmoypovxe
///           kinesisStreamSpecification:
///             approximateCreationDateTimePrecision: MICROSECOND
///             streamArn: qldltl
///           localSecondaryIndexes:
///             - indexName: gintyosxvkjqpe
///               keySchema:
///                 - attributeName: wisgqkyoouaxivtrtay
///                   keyType: kwkqgbxrwnoklpgmoypovxe
///               projection:
///                 nonKeyAttributes:
///                   - loqmvohtjsscueegam
///                 projectionType: atbzepkydpgudoaqi
///           pointInTimeRecoverySpecification:
///             pointInTimeRecoveryEnabled: true
///           provisionedThroughput:
///             readCapacityUnits: 10
///             writeCapacityUnits: 28
///           resourcePolicy: {}
///           sseSpecification:
///             kmsMasterKeyId: rvwuejohzknzrntkvprgxt
///             sseEnabled: true
///             sseType: osjalywculjbrystezvjojxe
///           streamArn: xvkrzs
///           streamSpecification:
///             resourcePolicy: {}
///             streamViewType: wemod
///           tableClass: tmbfrfbppwhjpm
///           tableName: mqvlcdboopn
///           tags:
///             - key: txipennfw
///               value: dkgweupnz
///           timeToLiveSpecification:
///             attributeName: sxbfejubturdtyusqywguqni
///             enabled: true
///         awsRegion: rdzrhtbydhmaxzuwe
///         awsSourceSchema: sqkkuxwamzevkp
///         awsTags:
///           key3791: iikafuvbjkvnbogujm
///         publicCloudConnectorsResourceId: nugnoqcknmrrminwvfvloqsporjd
///         publicCloudResourceName: lkbwyvnzooydbnembmykhmw
///       resourceGroupName: rgdynamoDBTable
///       tags:
///         key2178: lyeternduvkobwvqhpicnxel
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
/// $ pulumi import azure-native:awsconnector:DynamoDbTable wjhshaxtpxprmkvirlnkg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/dynamoDBTables/{name}
/// ```
class DynamoDbTable extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DynamoDBTablePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DynamoDbTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DynamoDbTable]. {@macro pulumi_awsconnector_dynamo_db_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DynamoDbTable(
    String name, {
    DynamoDbTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:DynamoDbTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<DynamoDBTablePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
