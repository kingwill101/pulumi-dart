import 'package:pulumi/pulumi.dart' as pulumi;
import 'sqs_queue_args.dart';
import 'sqs_queue_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SqsQueues_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqsQueue = new AzureNative.AwsConnector.SqsQueue("sqsQueue", new()
///     {
///         Location = "fqdcgrb",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SqsQueuePropertiesArgs
///         {
///             Arn = "jalxzvcntv",
///             AwsAccountId = "bzpgnzvrnsakbglgcvaalyaiocj",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSqsQueuePropertiesArgs
///             {
///                 Arn = "inbbhuaqgvjzwgepxaejncp",
///                 ContentBasedDeduplication = true,
///                 DeduplicationScope = "chijpjniyonhtrbqaojc",
///                 DelaySeconds = 22,
///                 FifoQueue = true,
///                 FifoThroughputLimit = "vzanxuahrdoqizyblwtvse",
///                 KmsDataKeyReusePeriodSeconds = 1,
///                 KmsMasterKeyId = "qcjgqtmyhiqnbwaevgoeagy",
///                 MaximumMessageSize = 19,
///                 MessageRetentionPeriod = 29,
///                 QueueName = "wfzhdsdzszyxfgptplvduwr",
///                 QueueUrl = "drfgltnvn",
///                 ReceiveMessageWaitTimeSeconds = 4,
///                 RedriveAllowPolicy = null,
///                 RedrivePolicy = null,
///                 SqsManagedSseEnabled = true,
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "xvchjfddrrmpbyizcjxdplxu",
///                         Value = "nxjcfolrd",
///                     },
///                 },
///                 VisibilityTimeout = 2,
///             },
///             AwsRegion = "ffdlbwzdurjlolipnjsycrmeqsg",
///             AwsSourceSchema = "jnthvapvjtoexig",
///             AwsTags =
///             {
///                 { "key9800", "dnaxwo" },
///             },
///             PublicCloudConnectorsResourceId = "uvqyizhqjdsnemqktjsgfmjhyw",
///             PublicCloudResourceName = "izckbeceljsvepm",
///         },
///         ResourceGroupName = "rgsqsQueue",
///         Tags =
///         {
///             { "key7215", "qvolsxokcslzpnq" },
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
/// 		_, err := awsconnector.NewSqsQueue(ctx, "sqsQueue", &awsconnector.SqsQueueArgs{
/// 			Location: pulumi.String("fqdcgrb"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SqsQueuePropertiesArgs{
/// 				Arn:          pulumi.String("jalxzvcntv"),
/// 				AwsAccountId: pulumi.String("bzpgnzvrnsakbglgcvaalyaiocj"),
/// 				AwsProperties: &awsconnector.AwsSqsQueuePropertiesArgs{
/// 					Arn:                           pulumi.String("inbbhuaqgvjzwgepxaejncp"),
/// 					ContentBasedDeduplication:     pulumi.Bool(true),
/// 					DeduplicationScope:            pulumi.String("chijpjniyonhtrbqaojc"),
/// 					DelaySeconds:                  pulumi.Int(22),
/// 					FifoQueue:                     pulumi.Bool(true),
/// 					FifoThroughputLimit:           pulumi.String("vzanxuahrdoqizyblwtvse"),
/// 					KmsDataKeyReusePeriodSeconds:  pulumi.Int(1),
/// 					KmsMasterKeyId:                pulumi.String("qcjgqtmyhiqnbwaevgoeagy"),
/// 					MaximumMessageSize:            pulumi.Int(19),
/// 					MessageRetentionPeriod:        pulumi.Int(29),
/// 					QueueName:                     pulumi.String("wfzhdsdzszyxfgptplvduwr"),
/// 					QueueUrl:                      pulumi.String("drfgltnvn"),
/// 					ReceiveMessageWaitTimeSeconds: pulumi.Int(4),
/// 					RedriveAllowPolicy:            pulumi.Any(map[string]interface{}{}),
/// 					RedrivePolicy:                 pulumi.Any(map[string]interface{}{}),
/// 					SqsManagedSseEnabled:          pulumi.Bool(true),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("xvchjfddrrmpbyizcjxdplxu"),
/// 							Value: pulumi.String("nxjcfolrd"),
/// 						},
/// 					},
/// 					VisibilityTimeout: pulumi.Int(2),
/// 				},
/// 				AwsRegion:       pulumi.String("ffdlbwzdurjlolipnjsycrmeqsg"),
/// 				AwsSourceSchema: pulumi.String("jnthvapvjtoexig"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key9800": pulumi.String("dnaxwo"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("uvqyizhqjdsnemqktjsgfmjhyw"),
/// 				PublicCloudResourceName:         pulumi.String("izckbeceljsvepm"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgsqsQueue"),
/// 			Tags: pulumi.StringMap{
/// 				"key7215": pulumi.String("qvolsxokcslzpnq"),
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
/// resource "azure-native_awsconnector_sqsqueue" "sqsQueue" {
///   location = "fqdcgrb"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "jalxzvcntv"
///     aws_account_id = "bzpgnzvrnsakbglgcvaalyaiocj"
///     aws_properties = {
///       arn                               = "inbbhuaqgvjzwgepxaejncp"
///       content_based_deduplication       = true
///       deduplication_scope               = "chijpjniyonhtrbqaojc"
///       delay_seconds                     = 22
///       fifo_queue                        = true
///       fifo_throughput_limit             = "vzanxuahrdoqizyblwtvse"
///       kms_data_key_reuse_period_seconds = 1
///       kms_master_key_id                 = "qcjgqtmyhiqnbwaevgoeagy"
///       maximum_message_size              = 19
///       message_retention_period          = 29
///       queue_name                        = "wfzhdsdzszyxfgptplvduwr"
///       queue_url                         = "drfgltnvn"
///       receive_message_wait_time_seconds = 4
///       redrive_allow_policy              = {}
///       redrive_policy                    = {}
///       sqs_managed_sse_enabled           = true
///       tags = [{
///         "key"   = "xvchjfddrrmpbyizcjxdplxu"
///         "value" = "nxjcfolrd"
///       }]
///       visibility_timeout = 2
///     }
///     aws_region        = "ffdlbwzdurjlolipnjsycrmeqsg"
///     aws_source_schema = "jnthvapvjtoexig"
///     aws_tags = {
///       "key9800" = "dnaxwo"
///     }
///     public_cloud_connectors_resource_id = "uvqyizhqjdsnemqktjsgfmjhyw"
///     public_cloud_resource_name          = "izckbeceljsvepm"
///   }
///   resource_group_name = "rgsqsQueue"
///   tags = {
///     "key7215" = "qvolsxokcslzpnq"
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
/// import com.pulumi.azurenative.awsconnector.SqsQueue;
/// import com.pulumi.azurenative.awsconnector.SqsQueueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SqsQueuePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSqsQueuePropertiesArgs;
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
///         var sqsQueue = new SqsQueue("sqsQueue", SqsQueueArgs.builder()
///             .location("fqdcgrb")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SqsQueuePropertiesArgs.builder()
///                 .arn("jalxzvcntv")
///                 .awsAccountId("bzpgnzvrnsakbglgcvaalyaiocj")
///                 .awsProperties(AwsSqsQueuePropertiesArgs.builder()
///                     .arn("inbbhuaqgvjzwgepxaejncp")
///                     .contentBasedDeduplication(true)
///                     .deduplicationScope("chijpjniyonhtrbqaojc")
///                     .delaySeconds(22)
///                     .fifoQueue(true)
///                     .fifoThroughputLimit("vzanxuahrdoqizyblwtvse")
///                     .kmsDataKeyReusePeriodSeconds(1)
///                     .kmsMasterKeyId("qcjgqtmyhiqnbwaevgoeagy")
///                     .maximumMessageSize(19)
///                     .messageRetentionPeriod(29)
///                     .queueName("wfzhdsdzszyxfgptplvduwr")
///                     .queueUrl("drfgltnvn")
///                     .receiveMessageWaitTimeSeconds(4)
///                     .redriveAllowPolicy(Map.ofEntries(
///                     ))
///                     .redrivePolicy(Map.ofEntries(
///                     ))
///                     .sqsManagedSseEnabled(true)
///                     .tags(TagArgs.builder()
///                         .key("xvchjfddrrmpbyizcjxdplxu")
///                         .value("nxjcfolrd")
///                         .build())
///                     .visibilityTimeout(2)
///                     .build())
///                 .awsRegion("ffdlbwzdurjlolipnjsycrmeqsg")
///                 .awsSourceSchema("jnthvapvjtoexig")
///                 .awsTags(Map.of("key9800", "dnaxwo"))
///                 .publicCloudConnectorsResourceId("uvqyizhqjdsnemqktjsgfmjhyw")
///                 .publicCloudResourceName("izckbeceljsvepm")
///                 .build())
///             .resourceGroupName("rgsqsQueue")
///             .tags(Map.of("key7215", "qvolsxokcslzpnq"))
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
/// const sqsQueue = new azure_native.awsconnector.SqsQueue("sqsQueue", {
///     location: "fqdcgrb",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "jalxzvcntv",
///         awsAccountId: "bzpgnzvrnsakbglgcvaalyaiocj",
///         awsProperties: {
///             arn: "inbbhuaqgvjzwgepxaejncp",
///             contentBasedDeduplication: true,
///             deduplicationScope: "chijpjniyonhtrbqaojc",
///             delaySeconds: 22,
///             fifoQueue: true,
///             fifoThroughputLimit: "vzanxuahrdoqizyblwtvse",
///             kmsDataKeyReusePeriodSeconds: 1,
///             kmsMasterKeyId: "qcjgqtmyhiqnbwaevgoeagy",
///             maximumMessageSize: 19,
///             messageRetentionPeriod: 29,
///             queueName: "wfzhdsdzszyxfgptplvduwr",
///             queueUrl: "drfgltnvn",
///             receiveMessageWaitTimeSeconds: 4,
///             redriveAllowPolicy: {},
///             redrivePolicy: {},
///             sqsManagedSseEnabled: true,
///             tags: [{
///                 key: "xvchjfddrrmpbyizcjxdplxu",
///                 value: "nxjcfolrd",
///             }],
///             visibilityTimeout: 2,
///         },
///         awsRegion: "ffdlbwzdurjlolipnjsycrmeqsg",
///         awsSourceSchema: "jnthvapvjtoexig",
///         awsTags: {
///             key9800: "dnaxwo",
///         },
///         publicCloudConnectorsResourceId: "uvqyizhqjdsnemqktjsgfmjhyw",
///         publicCloudResourceName: "izckbeceljsvepm",
///     },
///     resourceGroupName: "rgsqsQueue",
///     tags: {
///         key7215: "qvolsxokcslzpnq",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sqs_queue = azure_native.awsconnector.SqsQueue("sqsQueue",
///     location="fqdcgrb",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "jalxzvcntv",
///         "aws_account_id": "bzpgnzvrnsakbglgcvaalyaiocj",
///         "aws_properties": {
///             "arn": "inbbhuaqgvjzwgepxaejncp",
///             "content_based_deduplication": True,
///             "deduplication_scope": "chijpjniyonhtrbqaojc",
///             "delay_seconds": 22,
///             "fifo_queue": True,
///             "fifo_throughput_limit": "vzanxuahrdoqizyblwtvse",
///             "kms_data_key_reuse_period_seconds": 1,
///             "kms_master_key_id": "qcjgqtmyhiqnbwaevgoeagy",
///             "maximum_message_size": 19,
///             "message_retention_period": 29,
///             "queue_name": "wfzhdsdzszyxfgptplvduwr",
///             "queue_url": "drfgltnvn",
///             "receive_message_wait_time_seconds": 4,
///             "redrive_allow_policy": {},
///             "redrive_policy": {},
///             "sqs_managed_sse_enabled": True,
///             "tags": [{
///                 "key": "xvchjfddrrmpbyizcjxdplxu",
///                 "value": "nxjcfolrd",
///             }],
///             "visibility_timeout": 2,
///         },
///         "aws_region": "ffdlbwzdurjlolipnjsycrmeqsg",
///         "aws_source_schema": "jnthvapvjtoexig",
///         "aws_tags": {
///             "key9800": "dnaxwo",
///         },
///         "public_cloud_connectors_resource_id": "uvqyizhqjdsnemqktjsgfmjhyw",
///         "public_cloud_resource_name": "izckbeceljsvepm",
///     },
///     resource_group_name="rgsqsQueue",
///     tags={
///         "key7215": "qvolsxokcslzpnq",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sqsQueue:
///     type: azure-native:awsconnector:SqsQueue
///     properties:
///       location: fqdcgrb
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: jalxzvcntv
///         awsAccountId: bzpgnzvrnsakbglgcvaalyaiocj
///         awsProperties:
///           arn: inbbhuaqgvjzwgepxaejncp
///           contentBasedDeduplication: true
///           deduplicationScope: chijpjniyonhtrbqaojc
///           delaySeconds: 22
///           fifoQueue: true
///           fifoThroughputLimit: vzanxuahrdoqizyblwtvse
///           kmsDataKeyReusePeriodSeconds: 1
///           kmsMasterKeyId: qcjgqtmyhiqnbwaevgoeagy
///           maximumMessageSize: 19
///           messageRetentionPeriod: 29
///           queueName: wfzhdsdzszyxfgptplvduwr
///           queueUrl: drfgltnvn
///           receiveMessageWaitTimeSeconds: 4
///           redriveAllowPolicy: {}
///           redrivePolicy: {}
///           sqsManagedSseEnabled: true
///           tags:
///             - key: xvchjfddrrmpbyizcjxdplxu
///               value: nxjcfolrd
///           visibilityTimeout: 2
///         awsRegion: ffdlbwzdurjlolipnjsycrmeqsg
///         awsSourceSchema: jnthvapvjtoexig
///         awsTags:
///           key9800: dnaxwo
///         publicCloudConnectorsResourceId: uvqyizhqjdsnemqktjsgfmjhyw
///         publicCloudResourceName: izckbeceljsvepm
///       resourceGroupName: rgsqsQueue
///       tags:
///         key7215: qvolsxokcslzpnq
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
/// $ pulumi import azure-native:awsconnector:SqsQueue itprn /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/sqsQueues/{name}
/// ```
class SqsQueue extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SqsQueuePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqsQueue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqsQueue]. {@macro pulumi_awsconnector_sqs_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqsQueue(
    String name, {
    SqsQueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SqsQueue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SqsQueuePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqsQueuePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
