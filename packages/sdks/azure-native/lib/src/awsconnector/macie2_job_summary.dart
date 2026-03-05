import 'package:pulumi/pulumi.dart' as pulumi;
import 'macie2_job_summary_args.dart';
import 'macie2_job_summary_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Macie2JobSummaries_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var macie2JobSummary = new AzureNative.AwsConnector.Macie2JobSummary("macie2JobSummary", new()
///     {
///         Location = "sxbjamusvyf",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Macie2JobSummaryPropertiesArgs
///         {
///             Arn = "gdmxefbzkonlgcinjivhec",
///             AwsAccountId = "foqcspfycfsvpqbfbcjutxvsaswla",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsMacie2JobSummaryPropertiesArgs
///             {
///                 BucketCriteria = new AzureNative.AwsConnector.Inputs.S3BucketCriteriaForJobArgs
///                 {
///                     Excludes = new AzureNative.AwsConnector.Inputs.CriteriaBlockForJobArgs
///                     {
///                         And = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.CriteriaForJobArgs
///                             {
///                                 SimpleCriterion = new AzureNative.AwsConnector.Inputs.SimpleCriterionForJobArgs
///                                 {
///                                     Comparator = new AzureNative.AwsConnector.Inputs.JobComparatorEnumValueArgs
///                                     {
///                                         Value = AzureNative.AwsConnector.JobComparator.CONTAINS,
///                                     },
///                                     Key = new AzureNative.AwsConnector.Inputs.SimpleCriterionKeyForJobEnumValueArgs
///                                     {
///                                         Value = AzureNative.AwsConnector.SimpleCriterionKeyForJob.ACCOUNT_ID,
///                                     },
///                                     Values = new[]
///                                     {
///                                         "jtymirlxjxhaohkasaozlwag",
///                                     },
///                                 },
///                                 TagCriterion = new AzureNative.AwsConnector.Inputs.TagCriterionForJobArgs
///                                 {
///                                     Comparator = new AzureNative.AwsConnector.Inputs.JobComparatorEnumValueArgs
///                                     {
///                                         Value = AzureNative.AwsConnector.JobComparator.CONTAINS,
///                                     },
///                                     TagValues = new[]
///                                     {
///                                         new AzureNative.AwsConnector.Inputs.TagCriterionPairForJobArgs
///                                         {
///                                             Key = "gygqhiagsveuxhrughhbddqpmufuwb",
///                                             Value = "yfiitptbkmgpsdnnhvfc",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     Includes = new AzureNative.AwsConnector.Inputs.CriteriaBlockForJobArgs
///                     {
///                         And = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.CriteriaForJobArgs
///                             {
///                                 SimpleCriterion = new AzureNative.AwsConnector.Inputs.SimpleCriterionForJobArgs
///                                 {
///                                     Comparator = new AzureNative.AwsConnector.Inputs.JobComparatorEnumValueArgs
///                                     {
///                                         Value = AzureNative.AwsConnector.JobComparator.CONTAINS,
///                                     },
///                                     Key = new AzureNative.AwsConnector.Inputs.SimpleCriterionKeyForJobEnumValueArgs
///                                     {
///                                         Value = AzureNative.AwsConnector.SimpleCriterionKeyForJob.ACCOUNT_ID,
///                                     },
///                                     Values = new[]
///                                     {
///                                         "jtymirlxjxhaohkasaozlwag",
///                                     },
///                                 },
///                                 TagCriterion = new AzureNative.AwsConnector.Inputs.TagCriterionForJobArgs
///                                 {
///                                     Comparator = new AzureNative.AwsConnector.Inputs.JobComparatorEnumValueArgs
///                                     {
///                                         Value = AzureNative.AwsConnector.JobComparator.CONTAINS,
///                                     },
///                                     TagValues = new[]
///                                     {
///                                         new AzureNative.AwsConnector.Inputs.TagCriterionPairForJobArgs
///                                         {
///                                             Key = "gygqhiagsveuxhrughhbddqpmufuwb",
///                                             Value = "yfiitptbkmgpsdnnhvfc",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 BucketDefinitions = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.S3BucketDefinitionForJobArgs
///                     {
///                         AccountId = "eprxunabacgebqtyyff",
///                         Buckets = new[]
///                         {
///                             "nxnhxjevimwkagh",
///                         },
///                     },
///                 },
///                 CreatedAt = "2024-10-08T03:51:31.106Z",
///                 JobId = "jtjrvg",
///                 JobStatus = new AzureNative.AwsConnector.Inputs.JobStatusEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.JobStatus.CANCELLED,
///                 },
///                 JobType = new AzureNative.AwsConnector.Inputs.JobTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.JobType.ONE_TIME,
///                 },
///                 LastRunErrorStatus = new AzureNative.AwsConnector.Inputs.LastRunErrorStatusArgs
///                 {
///                     Code = new AzureNative.AwsConnector.Inputs.LastRunErrorStatusCodeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.LastRunErrorStatusCode.ERROR,
///                     },
///                 },
///                 Name = "hjsakzgyfymsxrppmgaqz",
///                 UserPausedDetails = new AzureNative.AwsConnector.Inputs.UserPausedDetailsArgs
///                 {
///                     JobExpiresAt = "2024-10-08T03:51:31.107Z",
///                     JobImminentExpirationHealthEventArn = "tildeulhgl",
///                     JobPausedAt = "2024-10-08T03:51:31.107Z",
///                 },
///             },
///             AwsRegion = "lvgptsi",
///             AwsSourceSchema = "ucjahtqlqosuutn",
///             AwsTags =
///             {
///                 { "key5346", "hygpr" },
///             },
///             PublicCloudConnectorsResourceId = "pwacjrxitwye",
///             PublicCloudResourceName = "xxlvdlekmm",
///         },
///         ResourceGroupName = "rgmacie2JobSummary",
///         Tags =
///         {
///             { "key7937", "ksoxoxkqu" },
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
/// 		_, err := awsconnector.NewMacie2JobSummary(ctx, "macie2JobSummary", &awsconnector.Macie2JobSummaryArgs{
/// 			Location: pulumi.String("sxbjamusvyf"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Macie2JobSummaryPropertiesArgs{
/// 				Arn:          pulumi.String("gdmxefbzkonlgcinjivhec"),
/// 				AwsAccountId: pulumi.String("foqcspfycfsvpqbfbcjutxvsaswla"),
/// 				AwsProperties: &awsconnector.AwsMacie2JobSummaryPropertiesArgs{
/// 					BucketCriteria: &awsconnector.S3BucketCriteriaForJobArgs{
/// 						Excludes: &awsconnector.CriteriaBlockForJobArgs{
/// 							And: awsconnector.CriteriaForJobArray{
/// 								&awsconnector.CriteriaForJobArgs{
/// 									SimpleCriterion: &awsconnector.SimpleCriterionForJobArgs{
/// 										Comparator: &awsconnector.JobComparatorEnumValueArgs{
/// 											Value: pulumi.String(awsconnector.JobComparatorCONTAINS),
/// 										},
/// 										Key: &awsconnector.SimpleCriterionKeyForJobEnumValueArgs{
/// 											Value: pulumi.String(awsconnector.SimpleCriterionKeyForJob_ACCOUNT_ID),
/// 										},
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("jtymirlxjxhaohkasaozlwag"),
/// 										},
/// 									},
/// 									TagCriterion: &awsconnector.TagCriterionForJobArgs{
/// 										Comparator: &awsconnector.JobComparatorEnumValueArgs{
/// 											Value: pulumi.String(awsconnector.JobComparatorCONTAINS),
/// 										},
/// 										TagValues: awsconnector.TagCriterionPairForJobArray{
/// 											&awsconnector.TagCriterionPairForJobArgs{
/// 												Key:   pulumi.String("gygqhiagsveuxhrughhbddqpmufuwb"),
/// 												Value: pulumi.String("yfiitptbkmgpsdnnhvfc"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Includes: &awsconnector.CriteriaBlockForJobArgs{
/// 							And: awsconnector.CriteriaForJobArray{
/// 								&awsconnector.CriteriaForJobArgs{
/// 									SimpleCriterion: &awsconnector.SimpleCriterionForJobArgs{
/// 										Comparator: &awsconnector.JobComparatorEnumValueArgs{
/// 											Value: pulumi.String(awsconnector.JobComparatorCONTAINS),
/// 										},
/// 										Key: &awsconnector.SimpleCriterionKeyForJobEnumValueArgs{
/// 											Value: pulumi.String(awsconnector.SimpleCriterionKeyForJob_ACCOUNT_ID),
/// 										},
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("jtymirlxjxhaohkasaozlwag"),
/// 										},
/// 									},
/// 									TagCriterion: &awsconnector.TagCriterionForJobArgs{
/// 										Comparator: &awsconnector.JobComparatorEnumValueArgs{
/// 											Value: pulumi.String(awsconnector.JobComparatorCONTAINS),
/// 										},
/// 										TagValues: awsconnector.TagCriterionPairForJobArray{
/// 											&awsconnector.TagCriterionPairForJobArgs{
/// 												Key:   pulumi.String("gygqhiagsveuxhrughhbddqpmufuwb"),
/// 												Value: pulumi.String("yfiitptbkmgpsdnnhvfc"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					BucketDefinitions: awsconnector.S3BucketDefinitionForJobArray{
/// 						&awsconnector.S3BucketDefinitionForJobArgs{
/// 							AccountId: pulumi.String("eprxunabacgebqtyyff"),
/// 							Buckets: pulumi.StringArray{
/// 								pulumi.String("nxnhxjevimwkagh"),
/// 							},
/// 						},
/// 					},
/// 					CreatedAt: pulumi.String("2024-10-08T03:51:31.106Z"),
/// 					JobId:     pulumi.String("jtjrvg"),
/// 					JobStatus: &awsconnector.JobStatusEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.JobStatusCANCELLED),
/// 					},
/// 					JobType: &awsconnector.JobTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.JobType_ONE_TIME),
/// 					},
/// 					LastRunErrorStatus: &awsconnector.LastRunErrorStatusArgs{
/// 						Code: &awsconnector.LastRunErrorStatusCodeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.LastRunErrorStatusCodeERROR),
/// 						},
/// 					},
/// 					Name: pulumi.String("hjsakzgyfymsxrppmgaqz"),
/// 					UserPausedDetails: &awsconnector.UserPausedDetailsArgs{
/// 						JobExpiresAt:                        pulumi.String("2024-10-08T03:51:31.107Z"),
/// 						JobImminentExpirationHealthEventArn: pulumi.String("tildeulhgl"),
/// 						JobPausedAt:                         pulumi.String("2024-10-08T03:51:31.107Z"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("lvgptsi"),
/// 				AwsSourceSchema: pulumi.String("ucjahtqlqosuutn"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5346": pulumi.String("hygpr"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("pwacjrxitwye"),
/// 				PublicCloudResourceName:         pulumi.String("xxlvdlekmm"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgmacie2JobSummary"),
/// 			Tags: pulumi.StringMap{
/// 				"key7937": pulumi.String("ksoxoxkqu"),
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
/// import com.pulumi.azurenative.awsconnector.Macie2JobSummary;
/// import com.pulumi.azurenative.awsconnector.Macie2JobSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Macie2JobSummaryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsMacie2JobSummaryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3BucketCriteriaForJobArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CriteriaBlockForJobArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.JobStatusEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.JobTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LastRunErrorStatusArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LastRunErrorStatusCodeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.UserPausedDetailsArgs;
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
///         var macie2JobSummary = new Macie2JobSummary("macie2JobSummary", Macie2JobSummaryArgs.builder()
///             .location("sxbjamusvyf")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Macie2JobSummaryPropertiesArgs.builder()
///                 .arn("gdmxefbzkonlgcinjivhec")
///                 .awsAccountId("foqcspfycfsvpqbfbcjutxvsaswla")
///                 .awsProperties(AwsMacie2JobSummaryPropertiesArgs.builder()
///                     .bucketCriteria(S3BucketCriteriaForJobArgs.builder()
///                         .excludes(CriteriaBlockForJobArgs.builder()
///                             .and(CriteriaForJobArgs.builder()
///                                 .simpleCriterion(SimpleCriterionForJobArgs.builder()
///                                     .comparator(JobComparatorEnumValueArgs.builder()
///                                         .value("CONTAINS")
///                                         .build())
///                                     .key(SimpleCriterionKeyForJobEnumValueArgs.builder()
///                                         .value("ACCOUNT_ID")
///                                         .build())
///                                     .values("jtymirlxjxhaohkasaozlwag")
///                                     .build())
///                                 .tagCriterion(TagCriterionForJobArgs.builder()
///                                     .comparator(JobComparatorEnumValueArgs.builder()
///                                         .value("CONTAINS")
///                                         .build())
///                                     .tagValues(TagCriterionPairForJobArgs.builder()
///                                         .key("gygqhiagsveuxhrughhbddqpmufuwb")
///                                         .value("yfiitptbkmgpsdnnhvfc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .includes(CriteriaBlockForJobArgs.builder()
///                             .and(CriteriaForJobArgs.builder()
///                                 .simpleCriterion(SimpleCriterionForJobArgs.builder()
///                                     .comparator(JobComparatorEnumValueArgs.builder()
///                                         .value("CONTAINS")
///                                         .build())
///                                     .key(SimpleCriterionKeyForJobEnumValueArgs.builder()
///                                         .value("ACCOUNT_ID")
///                                         .build())
///                                     .values("jtymirlxjxhaohkasaozlwag")
///                                     .build())
///                                 .tagCriterion(TagCriterionForJobArgs.builder()
///                                     .comparator(JobComparatorEnumValueArgs.builder()
///                                         .value("CONTAINS")
///                                         .build())
///                                     .tagValues(TagCriterionPairForJobArgs.builder()
///                                         .key("gygqhiagsveuxhrughhbddqpmufuwb")
///                                         .value("yfiitptbkmgpsdnnhvfc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .bucketDefinitions(S3BucketDefinitionForJobArgs.builder()
///                         .accountId("eprxunabacgebqtyyff")
///                         .buckets("nxnhxjevimwkagh")
///                         .build())
///                     .createdAt("2024-10-08T03:51:31.106Z")
///                     .jobId("jtjrvg")
///                     .jobStatus(JobStatusEnumValueArgs.builder()
///                         .value("CANCELLED")
///                         .build())
///                     .jobType(JobTypeEnumValueArgs.builder()
///                         .value("ONE_TIME")
///                         .build())
///                     .lastRunErrorStatus(LastRunErrorStatusArgs.builder()
///                         .code(LastRunErrorStatusCodeEnumValueArgs.builder()
///                             .value("ERROR")
///                             .build())
///                         .build())
///                     .name("hjsakzgyfymsxrppmgaqz")
///                     .userPausedDetails(UserPausedDetailsArgs.builder()
///                         .jobExpiresAt("2024-10-08T03:51:31.107Z")
///                         .jobImminentExpirationHealthEventArn("tildeulhgl")
///                         .jobPausedAt("2024-10-08T03:51:31.107Z")
///                         .build())
///                     .build())
///                 .awsRegion("lvgptsi")
///                 .awsSourceSchema("ucjahtqlqosuutn")
///                 .awsTags(Map.of("key5346", "hygpr"))
///                 .publicCloudConnectorsResourceId("pwacjrxitwye")
///                 .publicCloudResourceName("xxlvdlekmm")
///                 .build())
///             .resourceGroupName("rgmacie2JobSummary")
///             .tags(Map.of("key7937", "ksoxoxkqu"))
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
/// const macie2JobSummary = new azure_native.awsconnector.Macie2JobSummary("macie2JobSummary", {
///     location: "sxbjamusvyf",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "gdmxefbzkonlgcinjivhec",
///         awsAccountId: "foqcspfycfsvpqbfbcjutxvsaswla",
///         awsProperties: {
///             bucketCriteria: {
///                 excludes: {
///                     and: [{
///                         simpleCriterion: {
///                             comparator: {
///                                 value: azure_native.awsconnector.JobComparator.CONTAINS,
///                             },
///                             key: {
///                                 value: azure_native.awsconnector.SimpleCriterionKeyForJob.ACCOUNT_ID,
///                             },
///                             values: ["jtymirlxjxhaohkasaozlwag"],
///                         },
///                         tagCriterion: {
///                             comparator: {
///                                 value: azure_native.awsconnector.JobComparator.CONTAINS,
///                             },
///                             tagValues: [{
///                                 key: "gygqhiagsveuxhrughhbddqpmufuwb",
///                                 value: "yfiitptbkmgpsdnnhvfc",
///                             }],
///                         },
///                     }],
///                 },
///                 includes: {
///                     and: [{
///                         simpleCriterion: {
///                             comparator: {
///                                 value: azure_native.awsconnector.JobComparator.CONTAINS,
///                             },
///                             key: {
///                                 value: azure_native.awsconnector.SimpleCriterionKeyForJob.ACCOUNT_ID,
///                             },
///                             values: ["jtymirlxjxhaohkasaozlwag"],
///                         },
///                         tagCriterion: {
///                             comparator: {
///                                 value: azure_native.awsconnector.JobComparator.CONTAINS,
///                             },
///                             tagValues: [{
///                                 key: "gygqhiagsveuxhrughhbddqpmufuwb",
///                                 value: "yfiitptbkmgpsdnnhvfc",
///                             }],
///                         },
///                     }],
///                 },
///             },
///             bucketDefinitions: [{
///                 accountId: "eprxunabacgebqtyyff",
///                 buckets: ["nxnhxjevimwkagh"],
///             }],
///             createdAt: "2024-10-08T03:51:31.106Z",
///             jobId: "jtjrvg",
///             jobStatus: {
///                 value: azure_native.awsconnector.JobStatus.CANCELLED,
///             },
///             jobType: {
///                 value: azure_native.awsconnector.JobType.ONE_TIME,
///             },
///             lastRunErrorStatus: {
///                 code: {
///                     value: azure_native.awsconnector.LastRunErrorStatusCode.ERROR,
///                 },
///             },
///             name: "hjsakzgyfymsxrppmgaqz",
///             userPausedDetails: {
///                 jobExpiresAt: "2024-10-08T03:51:31.107Z",
///                 jobImminentExpirationHealthEventArn: "tildeulhgl",
///                 jobPausedAt: "2024-10-08T03:51:31.107Z",
///             },
///         },
///         awsRegion: "lvgptsi",
///         awsSourceSchema: "ucjahtqlqosuutn",
///         awsTags: {
///             key5346: "hygpr",
///         },
///         publicCloudConnectorsResourceId: "pwacjrxitwye",
///         publicCloudResourceName: "xxlvdlekmm",
///     },
///     resourceGroupName: "rgmacie2JobSummary",
///     tags: {
///         key7937: "ksoxoxkqu",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// macie2_job_summary = azure_native.awsconnector.Macie2JobSummary("macie2JobSummary",
///     location="sxbjamusvyf",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "gdmxefbzkonlgcinjivhec",
///         "aws_account_id": "foqcspfycfsvpqbfbcjutxvsaswla",
///         "aws_properties": {
///             "bucket_criteria": {
///                 "excludes": {
///                     "and_": [{
///                         "simple_criterion": {
///                             "comparator": {
///                                 "value": azure_native.awsconnector.JobComparator.CONTAINS,
///                             },
///                             "key": {
///                                 "value": azure_native.awsconnector.SimpleCriterionKeyForJob.ACCOUN_T_ID,
///                             },
///                             "values": ["jtymirlxjxhaohkasaozlwag"],
///                         },
///                         "tag_criterion": {
///                             "comparator": {
///                                 "value": azure_native.awsconnector.JobComparator.CONTAINS,
///                             },
///                             "tag_values": [{
///                                 "key": "gygqhiagsveuxhrughhbddqpmufuwb",
///                                 "value": "yfiitptbkmgpsdnnhvfc",
///                             }],
///                         },
///                     }],
///                 },
///                 "includes": {
///                     "and_": [{
///                         "simple_criterion": {
///                             "comparator": {
///                                 "value": azure_native.awsconnector.JobComparator.CONTAINS,
///                             },
///                             "key": {
///                                 "value": azure_native.awsconnector.SimpleCriterionKeyForJob.ACCOUN_T_ID,
///                             },
///                             "values": ["jtymirlxjxhaohkasaozlwag"],
///                         },
///                         "tag_criterion": {
///                             "comparator": {
///                                 "value": azure_native.awsconnector.JobComparator.CONTAINS,
///                             },
///                             "tag_values": [{
///                                 "key": "gygqhiagsveuxhrughhbddqpmufuwb",
///                                 "value": "yfiitptbkmgpsdnnhvfc",
///                             }],
///                         },
///                     }],
///                 },
///             },
///             "bucket_definitions": [{
///                 "account_id": "eprxunabacgebqtyyff",
///                 "buckets": ["nxnhxjevimwkagh"],
///             }],
///             "created_at": "2024-10-08T03:51:31.106Z",
///             "job_id": "jtjrvg",
///             "job_status": {
///                 "value": azure_native.awsconnector.JobStatus.CANCELLED,
///             },
///             "job_type": {
///                 "value": azure_native.awsconnector.JobType.ON_E_TIME,
///             },
///             "last_run_error_status": {
///                 "code": {
///                     "value": azure_native.awsconnector.LastRunErrorStatusCode.ERROR,
///                 },
///             },
///             "name": "hjsakzgyfymsxrppmgaqz",
///             "user_paused_details": {
///                 "job_expires_at": "2024-10-08T03:51:31.107Z",
///                 "job_imminent_expiration_health_event_arn": "tildeulhgl",
///                 "job_paused_at": "2024-10-08T03:51:31.107Z",
///             },
///         },
///         "aws_region": "lvgptsi",
///         "aws_source_schema": "ucjahtqlqosuutn",
///         "aws_tags": {
///             "key5346": "hygpr",
///         },
///         "public_cloud_connectors_resource_id": "pwacjrxitwye",
///         "public_cloud_resource_name": "xxlvdlekmm",
///     },
///     resource_group_name="rgmacie2JobSummary",
///     tags={
///         "key7937": "ksoxoxkqu",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   macie2JobSummary:
///     type: azure-native:awsconnector:Macie2JobSummary
///     properties:
///       location: sxbjamusvyf
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: gdmxefbzkonlgcinjivhec
///         awsAccountId: foqcspfycfsvpqbfbcjutxvsaswla
///         awsProperties:
///           bucketCriteria:
///             excludes:
///               and:
///                 - simpleCriterion:
///                     comparator:
///                       value: CONTAINS
///                     key:
///                       value: ACCOUNT_ID
///                     values:
///                       - jtymirlxjxhaohkasaozlwag
///                   tagCriterion:
///                     comparator:
///                       value: CONTAINS
///                     tagValues:
///                       - key: gygqhiagsveuxhrughhbddqpmufuwb
///                         value: yfiitptbkmgpsdnnhvfc
///             includes:
///               and:
///                 - simpleCriterion:
///                     comparator:
///                       value: CONTAINS
///                     key:
///                       value: ACCOUNT_ID
///                     values:
///                       - jtymirlxjxhaohkasaozlwag
///                   tagCriterion:
///                     comparator:
///                       value: CONTAINS
///                     tagValues:
///                       - key: gygqhiagsveuxhrughhbddqpmufuwb
///                         value: yfiitptbkmgpsdnnhvfc
///           bucketDefinitions:
///             - accountId: eprxunabacgebqtyyff
///               buckets:
///                 - nxnhxjevimwkagh
///           createdAt: 2024-10-08T03:51:31.106Z
///           jobId: jtjrvg
///           jobStatus:
///             value: CANCELLED
///           jobType:
///             value: ONE_TIME
///           lastRunErrorStatus:
///             code:
///               value: ERROR
///           name: hjsakzgyfymsxrppmgaqz
///           userPausedDetails:
///             jobExpiresAt: 2024-10-08T03:51:31.107Z
///             jobImminentExpirationHealthEventArn: tildeulhgl
///             jobPausedAt: 2024-10-08T03:51:31.107Z
///         awsRegion: lvgptsi
///         awsSourceSchema: ucjahtqlqosuutn
///         awsTags:
///           key5346: hygpr
///         publicCloudConnectorsResourceId: pwacjrxitwye
///         publicCloudResourceName: xxlvdlekmm
///       resourceGroupName: rgmacie2JobSummary
///       tags:
///         key7937: ksoxoxkqu
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
/// $ pulumi import azure-native:awsconnector:Macie2JobSummary qudjxsijrxroghlueytcvgjxcqmz /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/macie2JobSummaries/{name}
/// ```
class Macie2JobSummary extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Macie2JobSummaryPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Macie2JobSummary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Macie2JobSummary]. {@macro pulumi_awsconnector_macie2_job_summary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Macie2JobSummary(
    String name, {
    Macie2JobSummaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Macie2JobSummary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Macie2JobSummaryPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Macie2JobSummaryPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
