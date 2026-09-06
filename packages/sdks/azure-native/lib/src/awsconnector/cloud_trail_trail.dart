import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_trail_trail_args.dart';
import 'cloud_trail_trail_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CloudTrailTrails_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudTrailTrail = new AzureNative.AwsConnector.CloudTrailTrail("cloudTrailTrail", new()
///     {
///         Location = "lectoohspiqh",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.CloudTrailTrailPropertiesArgs
///         {
///             Arn = "jlwqroammottlyguyzu",
///             AwsAccountId = "mynelopf",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsCloudTrailTrailPropertiesArgs
///             {
///                 AdvancedEventSelectors = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.AdvancedEventSelectorArgs
///                     {
///                         FieldSelectors = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.AdvancedFieldSelectorArgs
///                             {
///                                 EndsWith = new[]
///                                 {
///                                     "xvhm",
///                                 },
///                                 Equals = new[]
///                                 {
///                                     "wxznrgvwsjlxdvssmmse",
///                                 },
///                                 Field = "mq",
///                                 NotEndsWith = new[]
///                                 {
///                                     "x",
///                                 },
///                                 NotEquals = new[]
///                                 {
///                                     "vglmmoivfeqg",
///                                 },
///                                 NotStartsWith = new[]
///                                 {
///                                     "pojptcfcw",
///                                 },
///                                 StartsWith = new[]
///                                 {
///                                     "fvldfltesnmpieljtehsvxudvxdujk",
///                                 },
///                             },
///                         },
///                         Name = "ee",
///                     },
///                 },
///                 Arn = "gbcn",
///                 CloudWatchLogsLogGroupArn = "nznfnuyxarmdmdtgjiougqgq",
///                 CloudWatchLogsRoleArn = "umhmpx",
///                 EnableLogFileValidation = true,
///                 EventSelectors = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.EventSelectorArgs
///                     {
///                         DataResources = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.DataResourceArgs
///                             {
///                                 Type = "txxrjncwohiohorurqdxzabre",
///                                 Values = new[]
///                                 {
///                                     "xhlnkujkbtpptbwchhh",
///                                 },
///                             },
///                         },
///                         ExcludeManagementEventSources = new[]
///                         {
///                             "r",
///                         },
///                         IncludeManagementEvents = true,
///                         ReadWriteType = AzureNative.AwsConnector.EventSelectorReadWriteType.All,
///                     },
///                 },
///                 IncludeGlobalServiceEvents = true,
///                 InsightSelectors = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.InsightSelectorArgs
///                     {
///                         InsightType = "brwlpasadlbwolsysta",
///                     },
///                 },
///                 IsLogging = true,
///                 IsMultiRegionTrail = true,
///                 IsOrganizationTrail = true,
///                 KmsKeyId = "myqwqkkcuyltblpdsbgestqmjs",
///                 S3BucketName = "iknyfgvujttyxsralujehxb",
///                 S3KeyPrefix = "tzkelsqjqfspyoppsbhewvbenpwll",
///                 SnsTopicArn = "owdxqmsrqylekull",
///                 SnsTopicName = "goknthoxfekdccclolilvnyacvcop",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "sytikpggzq",
///                         Value = "vnsgm",
///                     },
///                 },
///                 TrailName = "oawneexezdnuouxdykllsflq",
///             },
///             AwsRegion = "dfvobbnupacpqsgexblxjlw",
///             AwsSourceSchema = "tvnaxpvricaiyoucpeauofeibwrk",
///             AwsTags =
///             {
///                 { "key5810", "tfepsytqwqilahaumarsjj" },
///             },
///             PublicCloudConnectorsResourceId = "i",
///             PublicCloudResourceName = "aidwpmbkjspiucpvmzgg",
///         },
///         ResourceGroupName = "rgcloudTrailTrail",
///         Tags =
///         {
///             { "key8112", "rxvuvmalioxplkvujldcyntebbsmuh" },
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
/// 		_, err := awsconnector.NewCloudTrailTrail(ctx, "cloudTrailTrail", &awsconnector.CloudTrailTrailArgs{
/// 			Location: pulumi.String("lectoohspiqh"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.CloudTrailTrailPropertiesArgs{
/// 				Arn:          pulumi.String("jlwqroammottlyguyzu"),
/// 				AwsAccountId: pulumi.String("mynelopf"),
/// 				AwsProperties: &awsconnector.AwsCloudTrailTrailPropertiesArgs{
/// 					AdvancedEventSelectors: awsconnector.AdvancedEventSelectorArray{
/// 						&awsconnector.AdvancedEventSelectorArgs{
/// 							FieldSelectors: awsconnector.AdvancedFieldSelectorArray{
/// 								&awsconnector.AdvancedFieldSelectorArgs{
/// 									EndsWith: pulumi.StringArray{
/// 										pulumi.String("xvhm"),
/// 									},
/// 									Equals: pulumi.StringArray{
/// 										pulumi.String("wxznrgvwsjlxdvssmmse"),
/// 									},
/// 									Field: pulumi.String("mq"),
/// 									NotEndsWith: pulumi.StringArray{
/// 										pulumi.String("x"),
/// 									},
/// 									NotEquals: pulumi.StringArray{
/// 										pulumi.String("vglmmoivfeqg"),
/// 									},
/// 									NotStartsWith: pulumi.StringArray{
/// 										pulumi.String("pojptcfcw"),
/// 									},
/// 									StartsWith: pulumi.StringArray{
/// 										pulumi.String("fvldfltesnmpieljtehsvxudvxdujk"),
/// 									},
/// 								},
/// 							},
/// 							Name: pulumi.String("ee"),
/// 						},
/// 					},
/// 					Arn:                       pulumi.String("gbcn"),
/// 					CloudWatchLogsLogGroupArn: pulumi.String("nznfnuyxarmdmdtgjiougqgq"),
/// 					CloudWatchLogsRoleArn:     pulumi.String("umhmpx"),
/// 					EnableLogFileValidation:   pulumi.Bool(true),
/// 					EventSelectors: awsconnector.EventSelectorArray{
/// 						&awsconnector.EventSelectorArgs{
/// 							DataResources: awsconnector.DataResourceArray{
/// 								&awsconnector.DataResourceArgs{
/// 									Type: pulumi.String("txxrjncwohiohorurqdxzabre"),
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("xhlnkujkbtpptbwchhh"),
/// 									},
/// 								},
/// 							},
/// 							ExcludeManagementEventSources: pulumi.StringArray{
/// 								pulumi.String("r"),
/// 							},
/// 							IncludeManagementEvents: pulumi.Bool(true),
/// 							ReadWriteType:           pulumi.String(awsconnector.EventSelectorReadWriteTypeAll),
/// 						},
/// 					},
/// 					IncludeGlobalServiceEvents: pulumi.Bool(true),
/// 					InsightSelectors: awsconnector.InsightSelectorArray{
/// 						&awsconnector.InsightSelectorArgs{
/// 							InsightType: pulumi.String("brwlpasadlbwolsysta"),
/// 						},
/// 					},
/// 					IsLogging:           pulumi.Bool(true),
/// 					IsMultiRegionTrail:  pulumi.Bool(true),
/// 					IsOrganizationTrail: pulumi.Bool(true),
/// 					KmsKeyId:            pulumi.String("myqwqkkcuyltblpdsbgestqmjs"),
/// 					S3BucketName:        pulumi.String("iknyfgvujttyxsralujehxb"),
/// 					S3KeyPrefix:         pulumi.String("tzkelsqjqfspyoppsbhewvbenpwll"),
/// 					SnsTopicArn:         pulumi.String("owdxqmsrqylekull"),
/// 					SnsTopicName:        pulumi.String("goknthoxfekdccclolilvnyacvcop"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("sytikpggzq"),
/// 							Value: pulumi.String("vnsgm"),
/// 						},
/// 					},
/// 					TrailName: pulumi.String("oawneexezdnuouxdykllsflq"),
/// 				},
/// 				AwsRegion:       pulumi.String("dfvobbnupacpqsgexblxjlw"),
/// 				AwsSourceSchema: pulumi.String("tvnaxpvricaiyoucpeauofeibwrk"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5810": pulumi.String("tfepsytqwqilahaumarsjj"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("i"),
/// 				PublicCloudResourceName:         pulumi.String("aidwpmbkjspiucpvmzgg"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgcloudTrailTrail"),
/// 			Tags: pulumi.StringMap{
/// 				"key8112": pulumi.String("rxvuvmalioxplkvujldcyntebbsmuh"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_awsconnector_cloudtrailtrail" "cloudTrailTrail" {
///   location = "lectoohspiqh"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "jlwqroammottlyguyzu"
///     aws_account_id = "mynelopf"
///     aws_properties = {
///       advanced_event_selectors = [{
///         "fieldSelectors" = [{
///           "endsWith"      = ["xvhm"]
///           "equals"        = ["wxznrgvwsjlxdvssmmse"]
///           "field"         = "mq"
///           "notEndsWith"   = ["x"]
///           "notEquals"     = ["vglmmoivfeqg"]
///           "notStartsWith" = ["pojptcfcw"]
///           "startsWith"    = ["fvldfltesnmpieljtehsvxudvxdujk"]
///         }]
///         "name" = "ee"
///       }]
///       arn                            = "gbcn"
///       cloud_watch_logs_log_group_arn = "nznfnuyxarmdmdtgjiougqgq"
///       cloud_watch_logs_role_arn      = "umhmpx"
///       enable_log_file_validation     = true
///       event_selectors = [{
///         "dataResources" = [{
///           "type"   = "txxrjncwohiohorurqdxzabre"
///           "values" = ["xhlnkujkbtpptbwchhh"]
///         }]
///         "excludeManagementEventSources" = ["r"]
///         "includeManagementEvents"       = true
///         "readWriteType"                 = "All"
///       }]
///       include_global_service_events = true
///       insight_selectors = [{
///         "insightType" = "brwlpasadlbwolsysta"
///       }]
///       is_logging            = true
///       is_multi_region_trail = true
///       is_organization_trail = true
///       kms_key_id            = "myqwqkkcuyltblpdsbgestqmjs"
///       s3_bucket_name        = "iknyfgvujttyxsralujehxb"
///       s3_key_prefix         = "tzkelsqjqfspyoppsbhewvbenpwll"
///       sns_topic_arn         = "owdxqmsrqylekull"
///       sns_topic_name        = "goknthoxfekdccclolilvnyacvcop"
///       tags = [{
///         "key"   = "sytikpggzq"
///         "value" = "vnsgm"
///       }]
///       trail_name = "oawneexezdnuouxdykllsflq"
///     }
///     aws_region        = "dfvobbnupacpqsgexblxjlw"
///     aws_source_schema = "tvnaxpvricaiyoucpeauofeibwrk"
///     aws_tags = {
///       "key5810" = "tfepsytqwqilahaumarsjj"
///     }
///     public_cloud_connectors_resource_id = "i"
///     public_cloud_resource_name          = "aidwpmbkjspiucpvmzgg"
///   }
///   resource_group_name = "rgcloudTrailTrail"
///   tags = {
///     "key8112" = "rxvuvmalioxplkvujldcyntebbsmuh"
///   }
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
/// import com.pulumi.azurenative.awsconnector.CloudTrailTrail;
/// import com.pulumi.azurenative.awsconnector.CloudTrailTrailArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CloudTrailTrailPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsCloudTrailTrailPropertiesArgs;
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
///         var cloudTrailTrail = new CloudTrailTrail("cloudTrailTrail", CloudTrailTrailArgs.builder()
///             .location("lectoohspiqh")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(CloudTrailTrailPropertiesArgs.builder()
///                 .arn("jlwqroammottlyguyzu")
///                 .awsAccountId("mynelopf")
///                 .awsProperties(AwsCloudTrailTrailPropertiesArgs.builder()
///                     .advancedEventSelectors(AdvancedEventSelectorArgs.builder()
///                         .fieldSelectors(AdvancedFieldSelectorArgs.builder()
///                             .endsWith("xvhm")
///                             .equals("wxznrgvwsjlxdvssmmse")
///                             .field("mq")
///                             .notEndsWith("x")
///                             .notEquals("vglmmoivfeqg")
///                             .notStartsWith("pojptcfcw")
///                             .startsWith("fvldfltesnmpieljtehsvxudvxdujk")
///                             .build())
///                         .name("ee")
///                         .build())
///                     .arn("gbcn")
///                     .cloudWatchLogsLogGroupArn("nznfnuyxarmdmdtgjiougqgq")
///                     .cloudWatchLogsRoleArn("umhmpx")
///                     .enableLogFileValidation(true)
///                     .eventSelectors(EventSelectorArgs.builder()
///                         .dataResources(DataResourceArgs.builder()
///                             .type("txxrjncwohiohorurqdxzabre")
///                             .values("xhlnkujkbtpptbwchhh")
///                             .build())
///                         .excludeManagementEventSources("r")
///                         .includeManagementEvents(true)
///                         .readWriteType("All")
///                         .build())
///                     .includeGlobalServiceEvents(true)
///                     .insightSelectors(InsightSelectorArgs.builder()
///                         .insightType("brwlpasadlbwolsysta")
///                         .build())
///                     .isLogging(true)
///                     .isMultiRegionTrail(true)
///                     .isOrganizationTrail(true)
///                     .kmsKeyId("myqwqkkcuyltblpdsbgestqmjs")
///                     .s3BucketName("iknyfgvujttyxsralujehxb")
///                     .s3KeyPrefix("tzkelsqjqfspyoppsbhewvbenpwll")
///                     .snsTopicArn("owdxqmsrqylekull")
///                     .snsTopicName("goknthoxfekdccclolilvnyacvcop")
///                     .tags(TagArgs.builder()
///                         .key("sytikpggzq")
///                         .value("vnsgm")
///                         .build())
///                     .trailName("oawneexezdnuouxdykllsflq")
///                     .build())
///                 .awsRegion("dfvobbnupacpqsgexblxjlw")
///                 .awsSourceSchema("tvnaxpvricaiyoucpeauofeibwrk")
///                 .awsTags(Map.of("key5810", "tfepsytqwqilahaumarsjj"))
///                 .publicCloudConnectorsResourceId("i")
///                 .publicCloudResourceName("aidwpmbkjspiucpvmzgg")
///                 .build())
///             .resourceGroupName("rgcloudTrailTrail")
///             .tags(Map.of("key8112", "rxvuvmalioxplkvujldcyntebbsmuh"))
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
/// const cloudTrailTrail = new azure_native.awsconnector.CloudTrailTrail("cloudTrailTrail", {
///     location: "lectoohspiqh",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "jlwqroammottlyguyzu",
///         awsAccountId: "mynelopf",
///         awsProperties: {
///             advancedEventSelectors: [{
///                 fieldSelectors: [{
///                     endsWith: ["xvhm"],
///                     equals: ["wxznrgvwsjlxdvssmmse"],
///                     field: "mq",
///                     notEndsWith: ["x"],
///                     notEquals: ["vglmmoivfeqg"],
///                     notStartsWith: ["pojptcfcw"],
///                     startsWith: ["fvldfltesnmpieljtehsvxudvxdujk"],
///                 }],
///                 name: "ee",
///             }],
///             arn: "gbcn",
///             cloudWatchLogsLogGroupArn: "nznfnuyxarmdmdtgjiougqgq",
///             cloudWatchLogsRoleArn: "umhmpx",
///             enableLogFileValidation: true,
///             eventSelectors: [{
///                 dataResources: [{
///                     type: "txxrjncwohiohorurqdxzabre",
///                     values: ["xhlnkujkbtpptbwchhh"],
///                 }],
///                 excludeManagementEventSources: ["r"],
///                 includeManagementEvents: true,
///                 readWriteType: azure_native.awsconnector.EventSelectorReadWriteType.All,
///             }],
///             includeGlobalServiceEvents: true,
///             insightSelectors: [{
///                 insightType: "brwlpasadlbwolsysta",
///             }],
///             isLogging: true,
///             isMultiRegionTrail: true,
///             isOrganizationTrail: true,
///             kmsKeyId: "myqwqkkcuyltblpdsbgestqmjs",
///             s3BucketName: "iknyfgvujttyxsralujehxb",
///             s3KeyPrefix: "tzkelsqjqfspyoppsbhewvbenpwll",
///             snsTopicArn: "owdxqmsrqylekull",
///             snsTopicName: "goknthoxfekdccclolilvnyacvcop",
///             tags: [{
///                 key: "sytikpggzq",
///                 value: "vnsgm",
///             }],
///             trailName: "oawneexezdnuouxdykllsflq",
///         },
///         awsRegion: "dfvobbnupacpqsgexblxjlw",
///         awsSourceSchema: "tvnaxpvricaiyoucpeauofeibwrk",
///         awsTags: {
///             key5810: "tfepsytqwqilahaumarsjj",
///         },
///         publicCloudConnectorsResourceId: "i",
///         publicCloudResourceName: "aidwpmbkjspiucpvmzgg",
///     },
///     resourceGroupName: "rgcloudTrailTrail",
///     tags: {
///         key8112: "rxvuvmalioxplkvujldcyntebbsmuh",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_trail_trail = azure_native.awsconnector.CloudTrailTrail("cloudTrailTrail",
///     location="lectoohspiqh",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "jlwqroammottlyguyzu",
///         "aws_account_id": "mynelopf",
///         "aws_properties": {
///             "advanced_event_selectors": [{
///                 "field_selectors": [{
///                     "ends_with": ["xvhm"],
///                     "equals": ["wxznrgvwsjlxdvssmmse"],
///                     "field": "mq",
///                     "not_ends_with": ["x"],
///                     "not_equals": ["vglmmoivfeqg"],
///                     "not_starts_with": ["pojptcfcw"],
///                     "starts_with": ["fvldfltesnmpieljtehsvxudvxdujk"],
///                 }],
///                 "name": "ee",
///             }],
///             "arn": "gbcn",
///             "cloud_watch_logs_log_group_arn": "nznfnuyxarmdmdtgjiougqgq",
///             "cloud_watch_logs_role_arn": "umhmpx",
///             "enable_log_file_validation": True,
///             "event_selectors": [{
///                 "data_resources": [{
///                     "type": "txxrjncwohiohorurqdxzabre",
///                     "values": ["xhlnkujkbtpptbwchhh"],
///                 }],
///                 "exclude_management_event_sources": ["r"],
///                 "include_management_events": True,
///                 "read_write_type": azure_native.awsconnector.EventSelectorReadWriteType.ALL,
///             }],
///             "include_global_service_events": True,
///             "insight_selectors": [{
///                 "insight_type": "brwlpasadlbwolsysta",
///             }],
///             "is_logging": True,
///             "is_multi_region_trail": True,
///             "is_organization_trail": True,
///             "kms_key_id": "myqwqkkcuyltblpdsbgestqmjs",
///             "s3_bucket_name": "iknyfgvujttyxsralujehxb",
///             "s3_key_prefix": "tzkelsqjqfspyoppsbhewvbenpwll",
///             "sns_topic_arn": "owdxqmsrqylekull",
///             "sns_topic_name": "goknthoxfekdccclolilvnyacvcop",
///             "tags": [{
///                 "key": "sytikpggzq",
///                 "value": "vnsgm",
///             }],
///             "trail_name": "oawneexezdnuouxdykllsflq",
///         },
///         "aws_region": "dfvobbnupacpqsgexblxjlw",
///         "aws_source_schema": "tvnaxpvricaiyoucpeauofeibwrk",
///         "aws_tags": {
///             "key5810": "tfepsytqwqilahaumarsjj",
///         },
///         "public_cloud_connectors_resource_id": "i",
///         "public_cloud_resource_name": "aidwpmbkjspiucpvmzgg",
///     },
///     resource_group_name="rgcloudTrailTrail",
///     tags={
///         "key8112": "rxvuvmalioxplkvujldcyntebbsmuh",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cloudTrailTrail:
///     type: azure-native:awsconnector:CloudTrailTrail
///     properties:
///       location: lectoohspiqh
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: jlwqroammottlyguyzu
///         awsAccountId: mynelopf
///         awsProperties:
///           advancedEventSelectors:
///             - fieldSelectors:
///                 - endsWith:
///                     - xvhm
///                   equals:
///                     - wxznrgvwsjlxdvssmmse
///                   field: mq
///                   notEndsWith:
///                     - x
///                   notEquals:
///                     - vglmmoivfeqg
///                   notStartsWith:
///                     - pojptcfcw
///                   startsWith:
///                     - fvldfltesnmpieljtehsvxudvxdujk
///               name: ee
///           arn: gbcn
///           cloudWatchLogsLogGroupArn: nznfnuyxarmdmdtgjiougqgq
///           cloudWatchLogsRoleArn: umhmpx
///           enableLogFileValidation: true
///           eventSelectors:
///             - dataResources:
///                 - type: txxrjncwohiohorurqdxzabre
///                   values:
///                     - xhlnkujkbtpptbwchhh
///               excludeManagementEventSources:
///                 - r
///               includeManagementEvents: true
///               readWriteType: All
///           includeGlobalServiceEvents: true
///           insightSelectors:
///             - insightType: brwlpasadlbwolsysta
///           isLogging: true
///           isMultiRegionTrail: true
///           isOrganizationTrail: true
///           kmsKeyId: myqwqkkcuyltblpdsbgestqmjs
///           s3BucketName: iknyfgvujttyxsralujehxb
///           s3KeyPrefix: tzkelsqjqfspyoppsbhewvbenpwll
///           snsTopicArn: owdxqmsrqylekull
///           snsTopicName: goknthoxfekdccclolilvnyacvcop
///           tags:
///             - key: sytikpggzq
///               value: vnsgm
///           trailName: oawneexezdnuouxdykllsflq
///         awsRegion: dfvobbnupacpqsgexblxjlw
///         awsSourceSchema: tvnaxpvricaiyoucpeauofeibwrk
///         awsTags:
///           key5810: tfepsytqwqilahaumarsjj
///         publicCloudConnectorsResourceId: i
///         publicCloudResourceName: aidwpmbkjspiucpvmzgg
///       resourceGroupName: rgcloudTrailTrail
///       tags:
///         key8112: rxvuvmalioxplkvujldcyntebbsmuh
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
/// $ pulumi import azure-native:awsconnector:CloudTrailTrail edilbyzlahavvhncoa /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/cloudTrailTrails/{name}
/// ```
class CloudTrailTrail extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<CloudTrailTrailPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CloudTrailTrail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudTrailTrail]. {@macro pulumi_awsconnector_cloud_trail_trail_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudTrailTrail(
    String name, {
    CloudTrailTrailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:CloudTrailTrail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CloudTrailTrailPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudTrailTrailPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CloudTrailTrail] resource.
  CloudTrailTrail.reference(String urn)
    : super(
        'azure-native:awsconnector:CloudTrailTrail',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CloudTrailTrailPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudTrailTrailPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
