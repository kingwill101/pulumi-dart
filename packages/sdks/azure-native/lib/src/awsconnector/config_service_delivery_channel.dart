import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_service_delivery_channel_args.dart';
import 'config_service_delivery_channel_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigServiceDeliveryChannels_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configServiceDeliveryChannel = new AzureNative.AwsConnector.ConfigServiceDeliveryChannel("configServiceDeliveryChannel", new()
///     {
///         Location = "djcnfaicagptxk",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ConfigServiceDeliveryChannelPropertiesArgs
///         {
///             Arn = "eevsmaokvzzbqwpfm",
///             AwsAccountId = "xiyydxsyykydvymn",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsConfigServiceDeliveryChannelPropertiesArgs
///             {
///                 ConfigSnapshotDeliveryProperties = new AzureNative.AwsConnector.Inputs.ConfigSnapshotDeliveryPropertiesArgs
///                 {
///                     DeliveryFrequency = new AzureNative.AwsConnector.Inputs.MaximumExecutionFrequencyEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.MaximumExecutionFrequency.One_Hour,
///                     },
///                 },
///                 Name = "pfdwjyiaypjjedltuphpz",
///                 S3BucketName = "kcgtpxhibekwygxkybv",
///                 S3KeyPrefix = "eqgzb",
///                 S3KmsKeyArn = "vlnkltfo",
///                 SnsTopicARN = "qsxejnowkzljayrlhzyyppaya",
///             },
///             AwsRegion = "kngfw",
///             AwsSourceSchema = "ged",
///             AwsTags =
///             {
///                 { "key5086", "cnyyij" },
///             },
///             PublicCloudConnectorsResourceId = "kzdkfyjjgkoolslydcmbms",
///             PublicCloudResourceName = "idxxguxjmvrzjnruzz",
///         },
///         ResourceGroupName = "rgconfigServiceDeliveryChannel",
///         Tags =
///         {
///             { "key6889", "bimlpmolvvbwmp" },
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
/// 		_, err := awsconnector.NewConfigServiceDeliveryChannel(ctx, "configServiceDeliveryChannel", &awsconnector.ConfigServiceDeliveryChannelArgs{
/// 			Location: pulumi.String("djcnfaicagptxk"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ConfigServiceDeliveryChannelPropertiesArgs{
/// 				Arn:          pulumi.String("eevsmaokvzzbqwpfm"),
/// 				AwsAccountId: pulumi.String("xiyydxsyykydvymn"),
/// 				AwsProperties: &awsconnector.AwsConfigServiceDeliveryChannelPropertiesArgs{
/// 					ConfigSnapshotDeliveryProperties: &awsconnector.ConfigSnapshotDeliveryPropertiesArgs{
/// 						DeliveryFrequency: &awsconnector.MaximumExecutionFrequencyEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.MaximumExecutionFrequency_One_Hour),
/// 						},
/// 					},
/// 					Name:         pulumi.String("pfdwjyiaypjjedltuphpz"),
/// 					S3BucketName: pulumi.String("kcgtpxhibekwygxkybv"),
/// 					S3KeyPrefix:  pulumi.String("eqgzb"),
/// 					S3KmsKeyArn:  pulumi.String("vlnkltfo"),
/// 					SnsTopicARN:  pulumi.String("qsxejnowkzljayrlhzyyppaya"),
/// 				},
/// 				AwsRegion:       pulumi.String("kngfw"),
/// 				AwsSourceSchema: pulumi.String("ged"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5086": pulumi.String("cnyyij"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("kzdkfyjjgkoolslydcmbms"),
/// 				PublicCloudResourceName:         pulumi.String("idxxguxjmvrzjnruzz"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigServiceDeliveryChannel"),
/// 			Tags: pulumi.StringMap{
/// 				"key6889": pulumi.String("bimlpmolvvbwmp"),
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
/// import com.pulumi.azurenative.awsconnector.ConfigServiceDeliveryChannel;
/// import com.pulumi.azurenative.awsconnector.ConfigServiceDeliveryChannelArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ConfigServiceDeliveryChannelPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsConfigServiceDeliveryChannelPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ConfigSnapshotDeliveryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MaximumExecutionFrequencyEnumValueArgs;
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
///         var configServiceDeliveryChannel = new ConfigServiceDeliveryChannel("configServiceDeliveryChannel", ConfigServiceDeliveryChannelArgs.builder()
///             .location("djcnfaicagptxk")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ConfigServiceDeliveryChannelPropertiesArgs.builder()
///                 .arn("eevsmaokvzzbqwpfm")
///                 .awsAccountId("xiyydxsyykydvymn")
///                 .awsProperties(AwsConfigServiceDeliveryChannelPropertiesArgs.builder()
///                     .configSnapshotDeliveryProperties(ConfigSnapshotDeliveryPropertiesArgs.builder()
///                         .deliveryFrequency(MaximumExecutionFrequencyEnumValueArgs.builder()
///                             .value("One_Hour")
///                             .build())
///                         .build())
///                     .name("pfdwjyiaypjjedltuphpz")
///                     .s3BucketName("kcgtpxhibekwygxkybv")
///                     .s3KeyPrefix("eqgzb")
///                     .s3KmsKeyArn("vlnkltfo")
///                     .snsTopicARN("qsxejnowkzljayrlhzyyppaya")
///                     .build())
///                 .awsRegion("kngfw")
///                 .awsSourceSchema("ged")
///                 .awsTags(Map.of("key5086", "cnyyij"))
///                 .publicCloudConnectorsResourceId("kzdkfyjjgkoolslydcmbms")
///                 .publicCloudResourceName("idxxguxjmvrzjnruzz")
///                 .build())
///             .resourceGroupName("rgconfigServiceDeliveryChannel")
///             .tags(Map.of("key6889", "bimlpmolvvbwmp"))
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
/// const configServiceDeliveryChannel = new azure_native.awsconnector.ConfigServiceDeliveryChannel("configServiceDeliveryChannel", {
///     location: "djcnfaicagptxk",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "eevsmaokvzzbqwpfm",
///         awsAccountId: "xiyydxsyykydvymn",
///         awsProperties: {
///             configSnapshotDeliveryProperties: {
///                 deliveryFrequency: {
///                     value: azure_native.awsconnector.MaximumExecutionFrequency.One_Hour,
///                 },
///             },
///             name: "pfdwjyiaypjjedltuphpz",
///             s3BucketName: "kcgtpxhibekwygxkybv",
///             s3KeyPrefix: "eqgzb",
///             s3KmsKeyArn: "vlnkltfo",
///             snsTopicARN: "qsxejnowkzljayrlhzyyppaya",
///         },
///         awsRegion: "kngfw",
///         awsSourceSchema: "ged",
///         awsTags: {
///             key5086: "cnyyij",
///         },
///         publicCloudConnectorsResourceId: "kzdkfyjjgkoolslydcmbms",
///         publicCloudResourceName: "idxxguxjmvrzjnruzz",
///     },
///     resourceGroupName: "rgconfigServiceDeliveryChannel",
///     tags: {
///         key6889: "bimlpmolvvbwmp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// config_service_delivery_channel = azure_native.awsconnector.ConfigServiceDeliveryChannel("configServiceDeliveryChannel",
///     location="djcnfaicagptxk",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "eevsmaokvzzbqwpfm",
///         "aws_account_id": "xiyydxsyykydvymn",
///         "aws_properties": {
///             "config_snapshot_delivery_properties": {
///                 "delivery_frequency": {
///                     "value": azure_native.awsconnector.MaximumExecutionFrequency.ONE_HOUR,
///                 },
///             },
///             "name": "pfdwjyiaypjjedltuphpz",
///             "s3_bucket_name": "kcgtpxhibekwygxkybv",
///             "s3_key_prefix": "eqgzb",
///             "s3_kms_key_arn": "vlnkltfo",
///             "sns_topic_arn": "qsxejnowkzljayrlhzyyppaya",
///         },
///         "aws_region": "kngfw",
///         "aws_source_schema": "ged",
///         "aws_tags": {
///             "key5086": "cnyyij",
///         },
///         "public_cloud_connectors_resource_id": "kzdkfyjjgkoolslydcmbms",
///         "public_cloud_resource_name": "idxxguxjmvrzjnruzz",
///     },
///     resource_group_name="rgconfigServiceDeliveryChannel",
///     tags={
///         "key6889": "bimlpmolvvbwmp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   configServiceDeliveryChannel:
///     type: azure-native:awsconnector:ConfigServiceDeliveryChannel
///     properties:
///       location: djcnfaicagptxk
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: eevsmaokvzzbqwpfm
///         awsAccountId: xiyydxsyykydvymn
///         awsProperties:
///           configSnapshotDeliveryProperties:
///             deliveryFrequency:
///               value: One_Hour
///           name: pfdwjyiaypjjedltuphpz
///           s3BucketName: kcgtpxhibekwygxkybv
///           s3KeyPrefix: eqgzb
///           s3KmsKeyArn: vlnkltfo
///           snsTopicARN: qsxejnowkzljayrlhzyyppaya
///         awsRegion: kngfw
///         awsSourceSchema: ged
///         awsTags:
///           key5086: cnyyij
///         publicCloudConnectorsResourceId: kzdkfyjjgkoolslydcmbms
///         publicCloudResourceName: idxxguxjmvrzjnruzz
///       resourceGroupName: rgconfigServiceDeliveryChannel
///       tags:
///         key6889: bimlpmolvvbwmp
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
/// $ pulumi import azure-native:awsconnector:ConfigServiceDeliveryChannel nygnhqucwqufwbbhwstvjwf /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/configServiceDeliveryChannels/{name}
/// ```
class ConfigServiceDeliveryChannel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ConfigServiceDeliveryChannelPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigServiceDeliveryChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigServiceDeliveryChannel]. {@macro pulumi_awsconnector_config_service_delivery_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigServiceDeliveryChannel(
    String name, {
    ConfigServiceDeliveryChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:ConfigServiceDeliveryChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ConfigServiceDeliveryChannelPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
