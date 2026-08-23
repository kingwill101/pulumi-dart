import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_instance_status_args.dart';
import 'ec2_instance_status_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2InstanceStatuses_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2InstanceStatus = new AzureNative.AwsConnector.Ec2InstanceStatus("ec2InstanceStatus", new()
///     {
///         Location = "pgcnqdiaetxhtdrimhlcwthap",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2InstanceStatusPropertiesArgs
///         {
///             Arn = "nnkvtshcitbzvtrcwybizpxfznrsyg",
///             AwsAccountId = "pjfvkzfpdqdiweudknutyey",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2InstanceStatusPropertiesArgs
///             {
///                 AvailabilityZone = "ytnhdkisucgzas",
///                 Events = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.InstanceStatusEventArgs
///                     {
///                         Code = new AzureNative.AwsConnector.Inputs.EventCodeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.EventCode.InstanceReboot,
///                         },
///                         Description = "hgvqagwss",
///                         InstanceEventId = "rnbshnkjo",
///                         NotAfter = "2024-10-08T03:53:26.681Z",
///                         NotBefore = "2024-10-08T03:53:26.681Z",
///                         NotBeforeDeadline = "2024-10-08T03:53:26.681Z",
///                     },
///                 },
///                 InstanceId = "aoffpxifvwnouuzzpkqc",
///                 InstanceState = new AzureNative.AwsConnector.Inputs.InstanceStateArgs
///                 {
///                     Code = 9,
///                     Name = new AzureNative.AwsConnector.Inputs.InstanceStateNameEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.InstanceStateName.Pending,
///                     },
///                 },
///                 InstanceStatus = new AzureNative.AwsConnector.Inputs.InstanceStatusSummaryArgs
///                 {
///                     Details = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.InstanceStatusDetailsArgs
///                         {
///                             ImpairedSince = "2024-10-08T03:53:26.682Z",
///                             Name = new AzureNative.AwsConnector.Inputs.StatusNameEnumValueArgs
///                             {
///                                 Value = AzureNative.AwsConnector.StatusName.Reachability,
///                             },
///                             Status = new AzureNative.AwsConnector.Inputs.StatusTypeEnumValueArgs
///                             {
///                                 Value = "failed",
///                             },
///                         },
///                     },
///                     Status = new AzureNative.AwsConnector.Inputs.SummaryStatusEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.SummaryStatus.Impaired,
///                     },
///                 },
///                 OutpostArn = "pprqpuqeokryiz",
///                 SystemStatus = new AzureNative.AwsConnector.Inputs.InstanceStatusSummaryArgs
///                 {
///                     Details = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.InstanceStatusDetailsArgs
///                         {
///                             ImpairedSince = "2024-10-08T03:53:26.682Z",
///                             Name = new AzureNative.AwsConnector.Inputs.StatusNameEnumValueArgs
///                             {
///                                 Value = AzureNative.AwsConnector.StatusName.Reachability,
///                             },
///                             Status = new AzureNative.AwsConnector.Inputs.StatusTypeEnumValueArgs
///                             {
///                                 Value = "failed",
///                             },
///                         },
///                     },
///                     Status = new AzureNative.AwsConnector.Inputs.SummaryStatusEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.SummaryStatus.Impaired,
///                     },
///                 },
///             },
///             AwsRegion = "uxchexljsahdlvcecpckwevokhvd",
///             AwsSourceSchema = "zvcrlmc",
///             AwsTags =
///             {
///                 { "key8745", "rebvfwuycmmclbkwmnnslwgaispvw" },
///             },
///             PublicCloudConnectorsResourceId = "ouhnawwxmqjpfsmz",
///             PublicCloudResourceName = "mqygrsmavjlivhliidvrmopovsba",
///         },
///         ResourceGroupName = "rgec2InstanceStatus",
///         Tags =
///         {
///             { "key1363", "rvbvinbkmuoftqnsbj" },
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
/// 		_, err := awsconnector.NewEc2InstanceStatus(ctx, "ec2InstanceStatus", &awsconnector.Ec2InstanceStatusArgs{
/// 			Location: pulumi.String("pgcnqdiaetxhtdrimhlcwthap"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2InstanceStatusPropertiesArgs{
/// 				Arn:          pulumi.String("nnkvtshcitbzvtrcwybizpxfznrsyg"),
/// 				AwsAccountId: pulumi.String("pjfvkzfpdqdiweudknutyey"),
/// 				AwsProperties: &awsconnector.AwsEc2InstanceStatusPropertiesArgs{
/// 					AvailabilityZone: pulumi.String("ytnhdkisucgzas"),
/// 					Events: awsconnector.InstanceStatusEventArray{
/// 						&awsconnector.InstanceStatusEventArgs{
/// 							Code: &awsconnector.EventCodeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.EventCodeInstanceReboot),
/// 							},
/// 							Description:       pulumi.String("hgvqagwss"),
/// 							InstanceEventId:   pulumi.String("rnbshnkjo"),
/// 							NotAfter:          pulumi.String("2024-10-08T03:53:26.681Z"),
/// 							NotBefore:         pulumi.String("2024-10-08T03:53:26.681Z"),
/// 							NotBeforeDeadline: pulumi.String("2024-10-08T03:53:26.681Z"),
/// 						},
/// 					},
/// 					InstanceId: pulumi.String("aoffpxifvwnouuzzpkqc"),
/// 					InstanceState: &awsconnector.InstanceStateArgs{
/// 						Code: pulumi.Int(9),
/// 						Name: &awsconnector.InstanceStateNameEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.InstanceStateNamePending),
/// 						},
/// 					},
/// 					InstanceStatus: &awsconnector.InstanceStatusSummaryArgs{
/// 						Details: awsconnector.InstanceStatusDetailsArray{
/// 							&awsconnector.InstanceStatusDetailsArgs{
/// 								ImpairedSince: pulumi.String("2024-10-08T03:53:26.682Z"),
/// 								Name: &awsconnector.StatusNameEnumValueArgs{
/// 									Value: pulumi.String(awsconnector.StatusNameReachability),
/// 								},
/// 								Status: &awsconnector.StatusTypeEnumValueArgs{
/// 									Value: pulumi.String("failed"),
/// 								},
/// 							},
/// 						},
/// 						Status: &awsconnector.SummaryStatusEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.SummaryStatusImpaired),
/// 						},
/// 					},
/// 					OutpostArn: pulumi.String("pprqpuqeokryiz"),
/// 					SystemStatus: &awsconnector.InstanceStatusSummaryArgs{
/// 						Details: awsconnector.InstanceStatusDetailsArray{
/// 							&awsconnector.InstanceStatusDetailsArgs{
/// 								ImpairedSince: pulumi.String("2024-10-08T03:53:26.682Z"),
/// 								Name: &awsconnector.StatusNameEnumValueArgs{
/// 									Value: pulumi.String(awsconnector.StatusNameReachability),
/// 								},
/// 								Status: &awsconnector.StatusTypeEnumValueArgs{
/// 									Value: pulumi.String("failed"),
/// 								},
/// 							},
/// 						},
/// 						Status: &awsconnector.SummaryStatusEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.SummaryStatusImpaired),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("uxchexljsahdlvcecpckwevokhvd"),
/// 				AwsSourceSchema: pulumi.String("zvcrlmc"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8745": pulumi.String("rebvfwuycmmclbkwmnnslwgaispvw"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ouhnawwxmqjpfsmz"),
/// 				PublicCloudResourceName:         pulumi.String("mqygrsmavjlivhliidvrmopovsba"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2InstanceStatus"),
/// 			Tags: pulumi.StringMap{
/// 				"key1363": pulumi.String("rvbvinbkmuoftqnsbj"),
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
/// resource "azure-native_awsconnector_ec2instancestatus" "ec2InstanceStatus" {
///   location = "pgcnqdiaetxhtdrimhlcwthap"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "nnkvtshcitbzvtrcwybizpxfznrsyg"
///     aws_account_id = "pjfvkzfpdqdiweudknutyey"
///     aws_properties = {
///       availability_zone = "ytnhdkisucgzas"
///       events = [{
///         "code" = {
///           "value" = "instance-reboot"
///         }
///         "description"       = "hgvqagwss"
///         "instanceEventId"   = "rnbshnkjo"
///         "notAfter"          = "2024-10-08T03:53:26.681Z"
///         "notBefore"         = "2024-10-08T03:53:26.681Z"
///         "notBeforeDeadline" = "2024-10-08T03:53:26.681Z"
///       }]
///       instance_id = "aoffpxifvwnouuzzpkqc"
///       instance_state = {
///         code = 9
///         name = {
///           value = "pending"
///         }
///       }
///       instance_status = {
///         details = [{
///           "impairedSince" = "2024-10-08T03:53:26.682Z"
///           "name" = {
///             "value" = "reachability"
///           }
///           "status" = {
///             "value" = "failed"
///           }
///         }]
///         status = {
///           value = "impaired"
///         }
///       }
///       outpost_arn = "pprqpuqeokryiz"
///       system_status = {
///         details = [{
///           "impairedSince" = "2024-10-08T03:53:26.682Z"
///           "name" = {
///             "value" = "reachability"
///           }
///           "status" = {
///             "value" = "failed"
///           }
///         }]
///         status = {
///           value = "impaired"
///         }
///       }
///     }
///     aws_region        = "uxchexljsahdlvcecpckwevokhvd"
///     aws_source_schema = "zvcrlmc"
///     aws_tags = {
///       "key8745" = "rebvfwuycmmclbkwmnnslwgaispvw"
///     }
///     public_cloud_connectors_resource_id = "ouhnawwxmqjpfsmz"
///     public_cloud_resource_name          = "mqygrsmavjlivhliidvrmopovsba"
///   }
///   resource_group_name = "rgec2InstanceStatus"
///   tags = {
///     "key1363" = "rvbvinbkmuoftqnsbj"
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
/// import com.pulumi.azurenative.awsconnector.Ec2InstanceStatus;
/// import com.pulumi.azurenative.awsconnector.Ec2InstanceStatusArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2InstanceStatusPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2InstanceStatusPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceStateArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceStateNameEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceStatusSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SummaryStatusEnumValueArgs;
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
///         var ec2InstanceStatus = new Ec2InstanceStatus("ec2InstanceStatus", Ec2InstanceStatusArgs.builder()
///             .location("pgcnqdiaetxhtdrimhlcwthap")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2InstanceStatusPropertiesArgs.builder()
///                 .arn("nnkvtshcitbzvtrcwybizpxfznrsyg")
///                 .awsAccountId("pjfvkzfpdqdiweudknutyey")
///                 .awsProperties(AwsEc2InstanceStatusPropertiesArgs.builder()
///                     .availabilityZone("ytnhdkisucgzas")
///                     .events(InstanceStatusEventArgs.builder()
///                         .code(EventCodeEnumValueArgs.builder()
///                             .value("instance-reboot")
///                             .build())
///                         .description("hgvqagwss")
///                         .instanceEventId("rnbshnkjo")
///                         .notAfter("2024-10-08T03:53:26.681Z")
///                         .notBefore("2024-10-08T03:53:26.681Z")
///                         .notBeforeDeadline("2024-10-08T03:53:26.681Z")
///                         .build())
///                     .instanceId("aoffpxifvwnouuzzpkqc")
///                     .instanceState(InstanceStateArgs.builder()
///                         .code(9)
///                         .name(InstanceStateNameEnumValueArgs.builder()
///                             .value("pending")
///                             .build())
///                         .build())
///                     .instanceStatus(InstanceStatusSummaryArgs.builder()
///                         .details(InstanceStatusDetailsArgs.builder()
///                             .impairedSince("2024-10-08T03:53:26.682Z")
///                             .name(StatusNameEnumValueArgs.builder()
///                                 .value("reachability")
///                                 .build())
///                             .status(StatusTypeEnumValueArgs.builder()
///                                 .value("failed")
///                                 .build())
///                             .build())
///                         .status(SummaryStatusEnumValueArgs.builder()
///                             .value("impaired")
///                             .build())
///                         .build())
///                     .outpostArn("pprqpuqeokryiz")
///                     .systemStatus(InstanceStatusSummaryArgs.builder()
///                         .details(InstanceStatusDetailsArgs.builder()
///                             .impairedSince("2024-10-08T03:53:26.682Z")
///                             .name(StatusNameEnumValueArgs.builder()
///                                 .value("reachability")
///                                 .build())
///                             .status(StatusTypeEnumValueArgs.builder()
///                                 .value("failed")
///                                 .build())
///                             .build())
///                         .status(SummaryStatusEnumValueArgs.builder()
///                             .value("impaired")
///                             .build())
///                         .build())
///                     .build())
///                 .awsRegion("uxchexljsahdlvcecpckwevokhvd")
///                 .awsSourceSchema("zvcrlmc")
///                 .awsTags(Map.of("key8745", "rebvfwuycmmclbkwmnnslwgaispvw"))
///                 .publicCloudConnectorsResourceId("ouhnawwxmqjpfsmz")
///                 .publicCloudResourceName("mqygrsmavjlivhliidvrmopovsba")
///                 .build())
///             .resourceGroupName("rgec2InstanceStatus")
///             .tags(Map.of("key1363", "rvbvinbkmuoftqnsbj"))
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
/// const ec2InstanceStatus = new azure_native.awsconnector.Ec2InstanceStatus("ec2InstanceStatus", {
///     location: "pgcnqdiaetxhtdrimhlcwthap",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "nnkvtshcitbzvtrcwybizpxfznrsyg",
///         awsAccountId: "pjfvkzfpdqdiweudknutyey",
///         awsProperties: {
///             availabilityZone: "ytnhdkisucgzas",
///             events: [{
///                 code: {
///                     value: azure_native.awsconnector.EventCode.InstanceReboot,
///                 },
///                 description: "hgvqagwss",
///                 instanceEventId: "rnbshnkjo",
///                 notAfter: "2024-10-08T03:53:26.681Z",
///                 notBefore: "2024-10-08T03:53:26.681Z",
///                 notBeforeDeadline: "2024-10-08T03:53:26.681Z",
///             }],
///             instanceId: "aoffpxifvwnouuzzpkqc",
///             instanceState: {
///                 code: 9,
///                 name: {
///                     value: azure_native.awsconnector.InstanceStateName.Pending,
///                 },
///             },
///             instanceStatus: {
///                 details: [{
///                     impairedSince: "2024-10-08T03:53:26.682Z",
///                     name: {
///                         value: azure_native.awsconnector.StatusName.Reachability,
///                     },
///                     status: {
///                         value: "failed",
///                     },
///                 }],
///                 status: {
///                     value: azure_native.awsconnector.SummaryStatus.Impaired,
///                 },
///             },
///             outpostArn: "pprqpuqeokryiz",
///             systemStatus: {
///                 details: [{
///                     impairedSince: "2024-10-08T03:53:26.682Z",
///                     name: {
///                         value: azure_native.awsconnector.StatusName.Reachability,
///                     },
///                     status: {
///                         value: "failed",
///                     },
///                 }],
///                 status: {
///                     value: azure_native.awsconnector.SummaryStatus.Impaired,
///                 },
///             },
///         },
///         awsRegion: "uxchexljsahdlvcecpckwevokhvd",
///         awsSourceSchema: "zvcrlmc",
///         awsTags: {
///             key8745: "rebvfwuycmmclbkwmnnslwgaispvw",
///         },
///         publicCloudConnectorsResourceId: "ouhnawwxmqjpfsmz",
///         publicCloudResourceName: "mqygrsmavjlivhliidvrmopovsba",
///     },
///     resourceGroupName: "rgec2InstanceStatus",
///     tags: {
///         key1363: "rvbvinbkmuoftqnsbj",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_instance_status = azure_native.awsconnector.Ec2InstanceStatus("ec2InstanceStatus",
///     location="pgcnqdiaetxhtdrimhlcwthap",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "nnkvtshcitbzvtrcwybizpxfznrsyg",
///         "aws_account_id": "pjfvkzfpdqdiweudknutyey",
///         "aws_properties": {
///             "availability_zone": "ytnhdkisucgzas",
///             "events": [{
///                 "code": {
///                     "value": azure_native.awsconnector.EventCode.INSTANCE_REBOOT,
///                 },
///                 "description": "hgvqagwss",
///                 "instance_event_id": "rnbshnkjo",
///                 "not_after": "2024-10-08T03:53:26.681Z",
///                 "not_before": "2024-10-08T03:53:26.681Z",
///                 "not_before_deadline": "2024-10-08T03:53:26.681Z",
///             }],
///             "instance_id": "aoffpxifvwnouuzzpkqc",
///             "instance_state": {
///                 "code": 9,
///                 "name": {
///                     "value": azure_native.awsconnector.InstanceStateName.PENDING,
///                 },
///             },
///             "instance_status": {
///                 "details": [{
///                     "impaired_since": "2024-10-08T03:53:26.682Z",
///                     "name": {
///                         "value": azure_native.awsconnector.StatusName.REACHABILITY,
///                     },
///                     "status": {
///                         "value": "failed",
///                     },
///                 }],
///                 "status": {
///                     "value": azure_native.awsconnector.SummaryStatus.IMPAIRED,
///                 },
///             },
///             "outpost_arn": "pprqpuqeokryiz",
///             "system_status": {
///                 "details": [{
///                     "impaired_since": "2024-10-08T03:53:26.682Z",
///                     "name": {
///                         "value": azure_native.awsconnector.StatusName.REACHABILITY,
///                     },
///                     "status": {
///                         "value": "failed",
///                     },
///                 }],
///                 "status": {
///                     "value": azure_native.awsconnector.SummaryStatus.IMPAIRED,
///                 },
///             },
///         },
///         "aws_region": "uxchexljsahdlvcecpckwevokhvd",
///         "aws_source_schema": "zvcrlmc",
///         "aws_tags": {
///             "key8745": "rebvfwuycmmclbkwmnnslwgaispvw",
///         },
///         "public_cloud_connectors_resource_id": "ouhnawwxmqjpfsmz",
///         "public_cloud_resource_name": "mqygrsmavjlivhliidvrmopovsba",
///     },
///     resource_group_name="rgec2InstanceStatus",
///     tags={
///         "key1363": "rvbvinbkmuoftqnsbj",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2InstanceStatus:
///     type: azure-native:awsconnector:Ec2InstanceStatus
///     properties:
///       location: pgcnqdiaetxhtdrimhlcwthap
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: nnkvtshcitbzvtrcwybizpxfznrsyg
///         awsAccountId: pjfvkzfpdqdiweudknutyey
///         awsProperties:
///           availabilityZone: ytnhdkisucgzas
///           events:
///             - code:
///                 value: instance-reboot
///               description: hgvqagwss
///               instanceEventId: rnbshnkjo
///               notAfter: 2024-10-08T03:53:26.681Z
///               notBefore: 2024-10-08T03:53:26.681Z
///               notBeforeDeadline: 2024-10-08T03:53:26.681Z
///           instanceId: aoffpxifvwnouuzzpkqc
///           instanceState:
///             code: 9
///             name:
///               value: pending
///           instanceStatus:
///             details:
///               - impairedSince: 2024-10-08T03:53:26.682Z
///                 name:
///                   value: reachability
///                 status:
///                   value: failed
///             status:
///               value: impaired
///           outpostArn: pprqpuqeokryiz
///           systemStatus:
///             details:
///               - impairedSince: 2024-10-08T03:53:26.682Z
///                 name:
///                   value: reachability
///                 status:
///                   value: failed
///             status:
///               value: impaired
///         awsRegion: uxchexljsahdlvcecpckwevokhvd
///         awsSourceSchema: zvcrlmc
///         awsTags:
///           key8745: rebvfwuycmmclbkwmnnslwgaispvw
///         publicCloudConnectorsResourceId: ouhnawwxmqjpfsmz
///         publicCloudResourceName: mqygrsmavjlivhliidvrmopovsba
///       resourceGroupName: rgec2InstanceStatus
///       tags:
///         key1363: rvbvinbkmuoftqnsbj
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
/// $ pulumi import azure-native:awsconnector:Ec2InstanceStatus fxielgkexujsnpbsv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2InstanceStatuses/{name}
/// ```
class Ec2InstanceStatus extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2InstanceStatusPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2InstanceStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2InstanceStatus]. {@macro pulumi_awsconnector_ec2_instance_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2InstanceStatus(
    String name, {
    Ec2InstanceStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2InstanceStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2InstanceStatusPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2InstanceStatusPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
