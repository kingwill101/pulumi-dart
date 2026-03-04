import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_log_group_args.dart';
import 'logs_log_group_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LogsLogGroups_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var logsLogGroup = new AzureNative.AwsConnector.LogsLogGroup("logsLogGroup", new()
///     {
///         Location = "phnyiqu",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.LogsLogGroupPropertiesArgs
///         {
///             Arn = "seajw",
///             AwsAccountId = "jgnahcwppywqceisitgmjsw",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsLogsLogGroupPropertiesArgs
///             {
///                 Arn = "nyrge",
///                 KmsKeyId = "gjzov",
///                 LogGroupClass = AzureNative.AwsConnector.LogGroupClass.INFREQUENT_ACCESS,
///                 LogGroupName = "ekbugjqparpxebzmfaykh",
///                 RetentionInDays = 17,
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "nxdfvdzxuh",
///                         Value = "x",
///                     },
///                 },
///             },
///             AwsRegion = "vejderqihcaeihktrpgsuizcp",
///             AwsSourceSchema = "ryhknij",
///             AwsTags =
///             {
///                 { "key2050", "xjhmqjcueiq" },
///             },
///             PublicCloudConnectorsResourceId = "ascstrkrmxqtxw",
///             PublicCloudResourceName = "ldqwutaylcywem",
///         },
///         ResourceGroupName = "rglogsLogGroup",
///         Tags =
///         {
///             { "key9158", "iflnc" },
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
/// 		_, err := awsconnector.NewLogsLogGroup(ctx, "logsLogGroup", &awsconnector.LogsLogGroupArgs{
/// 			Location: pulumi.String("phnyiqu"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.LogsLogGroupPropertiesArgs{
/// 				Arn:          pulumi.String("seajw"),
/// 				AwsAccountId: pulumi.String("jgnahcwppywqceisitgmjsw"),
/// 				AwsProperties: &awsconnector.AwsLogsLogGroupPropertiesArgs{
/// 					Arn:             pulumi.String("nyrge"),
/// 					KmsKeyId:        pulumi.String("gjzov"),
/// 					LogGroupClass:   pulumi.String(awsconnector.LogGroupClass_INFREQUENT_ACCESS),
/// 					LogGroupName:    pulumi.String("ekbugjqparpxebzmfaykh"),
/// 					RetentionInDays: pulumi.Int(17),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("nxdfvdzxuh"),
/// 							Value: pulumi.String("x"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("vejderqihcaeihktrpgsuizcp"),
/// 				AwsSourceSchema: pulumi.String("ryhknij"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2050": pulumi.String("xjhmqjcueiq"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ascstrkrmxqtxw"),
/// 				PublicCloudResourceName:         pulumi.String("ldqwutaylcywem"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rglogsLogGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key9158": pulumi.String("iflnc"),
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
/// import com.pulumi.azurenative.awsconnector.LogsLogGroup;
/// import com.pulumi.azurenative.awsconnector.LogsLogGroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LogsLogGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsLogsLogGroupPropertiesArgs;
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
///         var logsLogGroup = new LogsLogGroup("logsLogGroup", LogsLogGroupArgs.builder()
///             .location("phnyiqu")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(LogsLogGroupPropertiesArgs.builder()
///                 .arn("seajw")
///                 .awsAccountId("jgnahcwppywqceisitgmjsw")
///                 .awsProperties(AwsLogsLogGroupPropertiesArgs.builder()
///                     .arn("nyrge")
///                     .kmsKeyId("gjzov")
///                     .logGroupClass("INFREQUENT_ACCESS")
///                     .logGroupName("ekbugjqparpxebzmfaykh")
///                     .retentionInDays(17)
///                     .tags(TagArgs.builder()
///                         .key("nxdfvdzxuh")
///                         .value("x")
///                         .build())
///                     .build())
///                 .awsRegion("vejderqihcaeihktrpgsuizcp")
///                 .awsSourceSchema("ryhknij")
///                 .awsTags(Map.of("key2050", "xjhmqjcueiq"))
///                 .publicCloudConnectorsResourceId("ascstrkrmxqtxw")
///                 .publicCloudResourceName("ldqwutaylcywem")
///                 .build())
///             .resourceGroupName("rglogsLogGroup")
///             .tags(Map.of("key9158", "iflnc"))
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
/// const logsLogGroup = new azure_native.awsconnector.LogsLogGroup("logsLogGroup", {
///     location: "phnyiqu",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "seajw",
///         awsAccountId: "jgnahcwppywqceisitgmjsw",
///         awsProperties: {
///             arn: "nyrge",
///             kmsKeyId: "gjzov",
///             logGroupClass: azure_native.awsconnector.LogGroupClass.INFREQUENT_ACCESS,
///             logGroupName: "ekbugjqparpxebzmfaykh",
///             retentionInDays: 17,
///             tags: [{
///                 key: "nxdfvdzxuh",
///                 value: "x",
///             }],
///         },
///         awsRegion: "vejderqihcaeihktrpgsuizcp",
///         awsSourceSchema: "ryhknij",
///         awsTags: {
///             key2050: "xjhmqjcueiq",
///         },
///         publicCloudConnectorsResourceId: "ascstrkrmxqtxw",
///         publicCloudResourceName: "ldqwutaylcywem",
///     },
///     resourceGroupName: "rglogsLogGroup",
///     tags: {
///         key9158: "iflnc",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// logs_log_group = azure_native.awsconnector.LogsLogGroup("logsLogGroup",
///     location="phnyiqu",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "seajw",
///         "aws_account_id": "jgnahcwppywqceisitgmjsw",
///         "aws_properties": {
///             "arn": "nyrge",
///             "kms_key_id": "gjzov",
///             "log_group_class": azure_native.awsconnector.LogGroupClass.INFREQUEN_T_ACCESS,
///             "log_group_name": "ekbugjqparpxebzmfaykh",
///             "retention_in_days": 17,
///             "tags": [{
///                 "key": "nxdfvdzxuh",
///                 "value": "x",
///             }],
///         },
///         "aws_region": "vejderqihcaeihktrpgsuizcp",
///         "aws_source_schema": "ryhknij",
///         "aws_tags": {
///             "key2050": "xjhmqjcueiq",
///         },
///         "public_cloud_connectors_resource_id": "ascstrkrmxqtxw",
///         "public_cloud_resource_name": "ldqwutaylcywem",
///     },
///     resource_group_name="rglogsLogGroup",
///     tags={
///         "key9158": "iflnc",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   logsLogGroup:
///     type: azure-native:awsconnector:LogsLogGroup
///     properties:
///       location: phnyiqu
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: seajw
///         awsAccountId: jgnahcwppywqceisitgmjsw
///         awsProperties:
///           arn: nyrge
///           kmsKeyId: gjzov
///           logGroupClass: INFREQUENT_ACCESS
///           logGroupName: ekbugjqparpxebzmfaykh
///           retentionInDays: 17
///           tags:
///             - key: nxdfvdzxuh
///               value: x
///         awsRegion: vejderqihcaeihktrpgsuizcp
///         awsSourceSchema: ryhknij
///         awsTags:
///           key2050: xjhmqjcueiq
///         publicCloudConnectorsResourceId: ascstrkrmxqtxw
///         publicCloudResourceName: ldqwutaylcywem
///       resourceGroupName: rglogsLogGroup
///       tags:
///         key9158: iflnc
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
/// $ pulumi import azure-native:awsconnector:LogsLogGroup obzggsmladbgadzihofizlyf /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/logsLogGroups/{name}
/// ```
class LogsLogGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<LogsLogGroupPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LogsLogGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogsLogGroup]. {@macro pulumi_awsconnector_logs_log_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogsLogGroup(
    String name, {
    LogsLogGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:LogsLogGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LogsLogGroupPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
