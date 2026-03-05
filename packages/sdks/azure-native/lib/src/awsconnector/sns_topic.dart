import 'package:pulumi/pulumi.dart' as pulumi;
import 'sns_topic_args.dart';
import 'sns_topic_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SnsTopics_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snsTopic = new AzureNative.AwsConnector.SnsTopic("snsTopic", new()
///     {
///         Location = "vzzjtyjhqbty",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SnsTopicPropertiesArgs
///         {
///             Arn = "jjhuxiyhej",
///             AwsAccountId = "wndmunvvkmoyxlrbsnowo",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSnsTopicPropertiesArgs
///             {
///                 ContentBasedDeduplication = true,
///                 DeliveryStatusLogging = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.LoggingConfigArgs
///                     {
///                         FailureFeedbackRoleArn = "ygtlmetldtzqhoasmdit",
///                         Protocol = AzureNative.AwsConnector.LoggingConfigProtocol.Application,
///                         SuccessFeedbackRoleArn = "ersgnxrmfnrqhmyilsomcxxlza",
///                         SuccessFeedbackSampleRate = "iudedzrjawqzroytyyonpydzjzzmlj",
///                     },
///                 },
///                 DisplayName = "sanmplpvkvcorlhraijepxftlyeqwj",
///                 FifoTopic = true,
///                 KmsMasterKeyId = "nioyrfbmzmfdvakoenyodtjgzaxuw",
///                 SignatureVersion = "lpfgizlw",
///                 Subscription = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.SubscriptionArgs
///                     {
///                         Endpoint = "yuvwciasnlpnswnynse",
///                         Protocol = "zohpkxrrouufioztdmkw",
///                     },
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "daicnimeizenloocglfwacmcp",
///                         Value = "bxdamnevuybindqttmfvzotzqboj",
///                     },
///                 },
///                 TopicArn = "owersxkcdlhhnawxkmqlcjlzqlxtmj",
///                 TopicName = "lijmdexuvnfby",
///                 TracingConfig = "yrpvxmefnaexobhqvtdrj",
///             },
///             AwsRegion = "qbpwpfnzmmkh",
///             AwsSourceSchema = "sxholwzdshjzccfoioytctdmjrmlpo",
///             AwsTags =
///             {
///                 { "key2577", "tygcrksvujusefiivyigtch" },
///             },
///             PublicCloudConnectorsResourceId = "didnyoylzwmnsjudmfwojgtjqsuypn",
///             PublicCloudResourceName = "vwncs",
///         },
///         ResourceGroupName = "rgsnsTopic",
///         Tags =
///         {
///             { "key5456", "eqraeavtnbspitsdlpmv" },
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
/// 		_, err := awsconnector.NewSnsTopic(ctx, "snsTopic", &awsconnector.SnsTopicArgs{
/// 			Location: pulumi.String("vzzjtyjhqbty"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SnsTopicPropertiesArgs{
/// 				Arn:          pulumi.String("jjhuxiyhej"),
/// 				AwsAccountId: pulumi.String("wndmunvvkmoyxlrbsnowo"),
/// 				AwsProperties: &awsconnector.AwsSnsTopicPropertiesArgs{
/// 					ContentBasedDeduplication: pulumi.Bool(true),
/// 					DeliveryStatusLogging: awsconnector.LoggingConfigArray{
/// 						&awsconnector.LoggingConfigArgs{
/// 							FailureFeedbackRoleArn:    pulumi.String("ygtlmetldtzqhoasmdit"),
/// 							Protocol:                  pulumi.String(awsconnector.LoggingConfigProtocolApplication),
/// 							SuccessFeedbackRoleArn:    pulumi.String("ersgnxrmfnrqhmyilsomcxxlza"),
/// 							SuccessFeedbackSampleRate: pulumi.String("iudedzrjawqzroytyyonpydzjzzmlj"),
/// 						},
/// 					},
/// 					DisplayName:      pulumi.String("sanmplpvkvcorlhraijepxftlyeqwj"),
/// 					FifoTopic:        pulumi.Bool(true),
/// 					KmsMasterKeyId:   pulumi.String("nioyrfbmzmfdvakoenyodtjgzaxuw"),
/// 					SignatureVersion: pulumi.String("lpfgizlw"),
/// 					Subscription: awsconnector.SubscriptionArray{
/// 						&awsconnector.SubscriptionArgs{
/// 							Endpoint: pulumi.String("yuvwciasnlpnswnynse"),
/// 							Protocol: pulumi.String("zohpkxrrouufioztdmkw"),
/// 						},
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("daicnimeizenloocglfwacmcp"),
/// 							Value: pulumi.String("bxdamnevuybindqttmfvzotzqboj"),
/// 						},
/// 					},
/// 					TopicArn:      pulumi.String("owersxkcdlhhnawxkmqlcjlzqlxtmj"),
/// 					TopicName:     pulumi.String("lijmdexuvnfby"),
/// 					TracingConfig: pulumi.String("yrpvxmefnaexobhqvtdrj"),
/// 				},
/// 				AwsRegion:       pulumi.String("qbpwpfnzmmkh"),
/// 				AwsSourceSchema: pulumi.String("sxholwzdshjzccfoioytctdmjrmlpo"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2577": pulumi.String("tygcrksvujusefiivyigtch"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("didnyoylzwmnsjudmfwojgtjqsuypn"),
/// 				PublicCloudResourceName:         pulumi.String("vwncs"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgsnsTopic"),
/// 			Tags: pulumi.StringMap{
/// 				"key5456": pulumi.String("eqraeavtnbspitsdlpmv"),
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
/// import com.pulumi.azurenative.awsconnector.SnsTopic;
/// import com.pulumi.azurenative.awsconnector.SnsTopicArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SnsTopicPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSnsTopicPropertiesArgs;
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
///         var snsTopic = new SnsTopic("snsTopic", SnsTopicArgs.builder()
///             .location("vzzjtyjhqbty")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SnsTopicPropertiesArgs.builder()
///                 .arn("jjhuxiyhej")
///                 .awsAccountId("wndmunvvkmoyxlrbsnowo")
///                 .awsProperties(AwsSnsTopicPropertiesArgs.builder()
///                     .contentBasedDeduplication(true)
///                     .deliveryStatusLogging(LoggingConfigArgs.builder()
///                         .failureFeedbackRoleArn("ygtlmetldtzqhoasmdit")
///                         .protocol("application")
///                         .successFeedbackRoleArn("ersgnxrmfnrqhmyilsomcxxlza")
///                         .successFeedbackSampleRate("iudedzrjawqzroytyyonpydzjzzmlj")
///                         .build())
///                     .displayName("sanmplpvkvcorlhraijepxftlyeqwj")
///                     .fifoTopic(true)
///                     .kmsMasterKeyId("nioyrfbmzmfdvakoenyodtjgzaxuw")
///                     .signatureVersion("lpfgizlw")
///                     .subscription(SubscriptionArgs.builder()
///                         .endpoint("yuvwciasnlpnswnynse")
///                         .protocol("zohpkxrrouufioztdmkw")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("daicnimeizenloocglfwacmcp")
///                         .value("bxdamnevuybindqttmfvzotzqboj")
///                         .build())
///                     .topicArn("owersxkcdlhhnawxkmqlcjlzqlxtmj")
///                     .topicName("lijmdexuvnfby")
///                     .tracingConfig("yrpvxmefnaexobhqvtdrj")
///                     .build())
///                 .awsRegion("qbpwpfnzmmkh")
///                 .awsSourceSchema("sxholwzdshjzccfoioytctdmjrmlpo")
///                 .awsTags(Map.of("key2577", "tygcrksvujusefiivyigtch"))
///                 .publicCloudConnectorsResourceId("didnyoylzwmnsjudmfwojgtjqsuypn")
///                 .publicCloudResourceName("vwncs")
///                 .build())
///             .resourceGroupName("rgsnsTopic")
///             .tags(Map.of("key5456", "eqraeavtnbspitsdlpmv"))
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
/// const snsTopic = new azure_native.awsconnector.SnsTopic("snsTopic", {
///     location: "vzzjtyjhqbty",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "jjhuxiyhej",
///         awsAccountId: "wndmunvvkmoyxlrbsnowo",
///         awsProperties: {
///             contentBasedDeduplication: true,
///             deliveryStatusLogging: [{
///                 failureFeedbackRoleArn: "ygtlmetldtzqhoasmdit",
///                 protocol: azure_native.awsconnector.LoggingConfigProtocol.Application,
///                 successFeedbackRoleArn: "ersgnxrmfnrqhmyilsomcxxlza",
///                 successFeedbackSampleRate: "iudedzrjawqzroytyyonpydzjzzmlj",
///             }],
///             displayName: "sanmplpvkvcorlhraijepxftlyeqwj",
///             fifoTopic: true,
///             kmsMasterKeyId: "nioyrfbmzmfdvakoenyodtjgzaxuw",
///             signatureVersion: "lpfgizlw",
///             subscription: [{
///                 endpoint: "yuvwciasnlpnswnynse",
///                 protocol: "zohpkxrrouufioztdmkw",
///             }],
///             tags: [{
///                 key: "daicnimeizenloocglfwacmcp",
///                 value: "bxdamnevuybindqttmfvzotzqboj",
///             }],
///             topicArn: "owersxkcdlhhnawxkmqlcjlzqlxtmj",
///             topicName: "lijmdexuvnfby",
///             tracingConfig: "yrpvxmefnaexobhqvtdrj",
///         },
///         awsRegion: "qbpwpfnzmmkh",
///         awsSourceSchema: "sxholwzdshjzccfoioytctdmjrmlpo",
///         awsTags: {
///             key2577: "tygcrksvujusefiivyigtch",
///         },
///         publicCloudConnectorsResourceId: "didnyoylzwmnsjudmfwojgtjqsuypn",
///         publicCloudResourceName: "vwncs",
///     },
///     resourceGroupName: "rgsnsTopic",
///     tags: {
///         key5456: "eqraeavtnbspitsdlpmv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sns_topic = azure_native.awsconnector.SnsTopic("snsTopic",
///     location="vzzjtyjhqbty",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "jjhuxiyhej",
///         "aws_account_id": "wndmunvvkmoyxlrbsnowo",
///         "aws_properties": {
///             "content_based_deduplication": True,
///             "delivery_status_logging": [{
///                 "failure_feedback_role_arn": "ygtlmetldtzqhoasmdit",
///                 "protocol": azure_native.awsconnector.LoggingConfigProtocol.APPLICATION,
///                 "success_feedback_role_arn": "ersgnxrmfnrqhmyilsomcxxlza",
///                 "success_feedback_sample_rate": "iudedzrjawqzroytyyonpydzjzzmlj",
///             }],
///             "display_name": "sanmplpvkvcorlhraijepxftlyeqwj",
///             "fifo_topic": True,
///             "kms_master_key_id": "nioyrfbmzmfdvakoenyodtjgzaxuw",
///             "signature_version": "lpfgizlw",
///             "subscription": [{
///                 "endpoint": "yuvwciasnlpnswnynse",
///                 "protocol": "zohpkxrrouufioztdmkw",
///             }],
///             "tags": [{
///                 "key": "daicnimeizenloocglfwacmcp",
///                 "value": "bxdamnevuybindqttmfvzotzqboj",
///             }],
///             "topic_arn": "owersxkcdlhhnawxkmqlcjlzqlxtmj",
///             "topic_name": "lijmdexuvnfby",
///             "tracing_config": "yrpvxmefnaexobhqvtdrj",
///         },
///         "aws_region": "qbpwpfnzmmkh",
///         "aws_source_schema": "sxholwzdshjzccfoioytctdmjrmlpo",
///         "aws_tags": {
///             "key2577": "tygcrksvujusefiivyigtch",
///         },
///         "public_cloud_connectors_resource_id": "didnyoylzwmnsjudmfwojgtjqsuypn",
///         "public_cloud_resource_name": "vwncs",
///     },
///     resource_group_name="rgsnsTopic",
///     tags={
///         "key5456": "eqraeavtnbspitsdlpmv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   snsTopic:
///     type: azure-native:awsconnector:SnsTopic
///     properties:
///       location: vzzjtyjhqbty
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: jjhuxiyhej
///         awsAccountId: wndmunvvkmoyxlrbsnowo
///         awsProperties:
///           contentBasedDeduplication: true
///           deliveryStatusLogging:
///             - failureFeedbackRoleArn: ygtlmetldtzqhoasmdit
///               protocol: application
///               successFeedbackRoleArn: ersgnxrmfnrqhmyilsomcxxlza
///               successFeedbackSampleRate: iudedzrjawqzroytyyonpydzjzzmlj
///           displayName: sanmplpvkvcorlhraijepxftlyeqwj
///           fifoTopic: true
///           kmsMasterKeyId: nioyrfbmzmfdvakoenyodtjgzaxuw
///           signatureVersion: lpfgizlw
///           subscription:
///             - endpoint: yuvwciasnlpnswnynse
///               protocol: zohpkxrrouufioztdmkw
///           tags:
///             - key: daicnimeizenloocglfwacmcp
///               value: bxdamnevuybindqttmfvzotzqboj
///           topicArn: owersxkcdlhhnawxkmqlcjlzqlxtmj
///           topicName: lijmdexuvnfby
///           tracingConfig: yrpvxmefnaexobhqvtdrj
///         awsRegion: qbpwpfnzmmkh
///         awsSourceSchema: sxholwzdshjzccfoioytctdmjrmlpo
///         awsTags:
///           key2577: tygcrksvujusefiivyigtch
///         publicCloudConnectorsResourceId: didnyoylzwmnsjudmfwojgtjqsuypn
///         publicCloudResourceName: vwncs
///       resourceGroupName: rgsnsTopic
///       tags:
///         key5456: eqraeavtnbspitsdlpmv
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
/// $ pulumi import azure-native:awsconnector:SnsTopic hsdynqpvalkbhp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/snsTopics/{name}
/// ```
class SnsTopic extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SnsTopicPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SnsTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnsTopic]. {@macro pulumi_awsconnector_sns_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnsTopic(
    String name, {
    SnsTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SnsTopic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SnsTopicPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnsTopicPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
