import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_log_stream_args.dart';
import 'logs_log_stream_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LogsLogStreams_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var logsLogStream = new AzureNative.AwsConnector.LogsLogStream("logsLogStream", new()
///     {
///         Location = "kptftndcymfuhgrknmxtkeqwlpjun",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.LogsLogStreamPropertiesArgs
///         {
///             Arn = "lzfqztmbbgeu",
///             AwsAccountId = "wdatjpiqtspvmqdqquuhipephuthnh",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsLogsLogStreamPropertiesArgs
///             {
///                 LogGroupName = "bfwnrdojlqlwrmih",
///                 LogStreamName = "pbtlxfgftiixnduazjvqezmnpwbr",
///             },
///             AwsRegion = "dzyiblunsedfhiq",
///             AwsSourceSchema = "ffgsbwzxveleoxawcyogkiigworq",
///             AwsTags =
///             {
///                 { "key9843", "dbwvhopavlbkhbaofrgwznkwoj" },
///             },
///             PublicCloudConnectorsResourceId = "lihllkk",
///             PublicCloudResourceName = "wftlmsgyanjghqoyfkzoqgqxrcdkq",
///         },
///         ResourceGroupName = "rglogsLogStream",
///         Tags =
///         {
///             { "key6354", "a" },
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
/// 		_, err := awsconnector.NewLogsLogStream(ctx, "logsLogStream", &awsconnector.LogsLogStreamArgs{
/// 			Location: pulumi.String("kptftndcymfuhgrknmxtkeqwlpjun"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.LogsLogStreamPropertiesArgs{
/// 				Arn:          pulumi.String("lzfqztmbbgeu"),
/// 				AwsAccountId: pulumi.String("wdatjpiqtspvmqdqquuhipephuthnh"),
/// 				AwsProperties: &awsconnector.AwsLogsLogStreamPropertiesArgs{
/// 					LogGroupName:  pulumi.String("bfwnrdojlqlwrmih"),
/// 					LogStreamName: pulumi.String("pbtlxfgftiixnduazjvqezmnpwbr"),
/// 				},
/// 				AwsRegion:       pulumi.String("dzyiblunsedfhiq"),
/// 				AwsSourceSchema: pulumi.String("ffgsbwzxveleoxawcyogkiigworq"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key9843": pulumi.String("dbwvhopavlbkhbaofrgwznkwoj"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("lihllkk"),
/// 				PublicCloudResourceName:         pulumi.String("wftlmsgyanjghqoyfkzoqgqxrcdkq"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rglogsLogStream"),
/// 			Tags: pulumi.StringMap{
/// 				"key6354": pulumi.String("a"),
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
/// resource "azure-native_awsconnector_logslogstream" "logsLogStream" {
///   location = "kptftndcymfuhgrknmxtkeqwlpjun"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "lzfqztmbbgeu"
///     aws_account_id = "wdatjpiqtspvmqdqquuhipephuthnh"
///     aws_properties = {
///       log_group_name  = "bfwnrdojlqlwrmih"
///       log_stream_name = "pbtlxfgftiixnduazjvqezmnpwbr"
///     }
///     aws_region        = "dzyiblunsedfhiq"
///     aws_source_schema = "ffgsbwzxveleoxawcyogkiigworq"
///     aws_tags = {
///       "key9843" = "dbwvhopavlbkhbaofrgwznkwoj"
///     }
///     public_cloud_connectors_resource_id = "lihllkk"
///     public_cloud_resource_name          = "wftlmsgyanjghqoyfkzoqgqxrcdkq"
///   }
///   resource_group_name = "rglogsLogStream"
///   tags = {
///     "key6354" = "a"
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
/// import com.pulumi.azurenative.awsconnector.LogsLogStream;
/// import com.pulumi.azurenative.awsconnector.LogsLogStreamArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LogsLogStreamPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsLogsLogStreamPropertiesArgs;
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
///         var logsLogStream = new LogsLogStream("logsLogStream", LogsLogStreamArgs.builder()
///             .location("kptftndcymfuhgrknmxtkeqwlpjun")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(LogsLogStreamPropertiesArgs.builder()
///                 .arn("lzfqztmbbgeu")
///                 .awsAccountId("wdatjpiqtspvmqdqquuhipephuthnh")
///                 .awsProperties(AwsLogsLogStreamPropertiesArgs.builder()
///                     .logGroupName("bfwnrdojlqlwrmih")
///                     .logStreamName("pbtlxfgftiixnduazjvqezmnpwbr")
///                     .build())
///                 .awsRegion("dzyiblunsedfhiq")
///                 .awsSourceSchema("ffgsbwzxveleoxawcyogkiigworq")
///                 .awsTags(Map.of("key9843", "dbwvhopavlbkhbaofrgwznkwoj"))
///                 .publicCloudConnectorsResourceId("lihllkk")
///                 .publicCloudResourceName("wftlmsgyanjghqoyfkzoqgqxrcdkq")
///                 .build())
///             .resourceGroupName("rglogsLogStream")
///             .tags(Map.of("key6354", "a"))
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
/// const logsLogStream = new azure_native.awsconnector.LogsLogStream("logsLogStream", {
///     location: "kptftndcymfuhgrknmxtkeqwlpjun",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "lzfqztmbbgeu",
///         awsAccountId: "wdatjpiqtspvmqdqquuhipephuthnh",
///         awsProperties: {
///             logGroupName: "bfwnrdojlqlwrmih",
///             logStreamName: "pbtlxfgftiixnduazjvqezmnpwbr",
///         },
///         awsRegion: "dzyiblunsedfhiq",
///         awsSourceSchema: "ffgsbwzxveleoxawcyogkiigworq",
///         awsTags: {
///             key9843: "dbwvhopavlbkhbaofrgwznkwoj",
///         },
///         publicCloudConnectorsResourceId: "lihllkk",
///         publicCloudResourceName: "wftlmsgyanjghqoyfkzoqgqxrcdkq",
///     },
///     resourceGroupName: "rglogsLogStream",
///     tags: {
///         key6354: "a",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// logs_log_stream = azure_native.awsconnector.LogsLogStream("logsLogStream",
///     location="kptftndcymfuhgrknmxtkeqwlpjun",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "lzfqztmbbgeu",
///         "aws_account_id": "wdatjpiqtspvmqdqquuhipephuthnh",
///         "aws_properties": {
///             "log_group_name": "bfwnrdojlqlwrmih",
///             "log_stream_name": "pbtlxfgftiixnduazjvqezmnpwbr",
///         },
///         "aws_region": "dzyiblunsedfhiq",
///         "aws_source_schema": "ffgsbwzxveleoxawcyogkiigworq",
///         "aws_tags": {
///             "key9843": "dbwvhopavlbkhbaofrgwznkwoj",
///         },
///         "public_cloud_connectors_resource_id": "lihllkk",
///         "public_cloud_resource_name": "wftlmsgyanjghqoyfkzoqgqxrcdkq",
///     },
///     resource_group_name="rglogsLogStream",
///     tags={
///         "key6354": "a",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   logsLogStream:
///     type: azure-native:awsconnector:LogsLogStream
///     properties:
///       location: kptftndcymfuhgrknmxtkeqwlpjun
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: lzfqztmbbgeu
///         awsAccountId: wdatjpiqtspvmqdqquuhipephuthnh
///         awsProperties:
///           logGroupName: bfwnrdojlqlwrmih
///           logStreamName: pbtlxfgftiixnduazjvqezmnpwbr
///         awsRegion: dzyiblunsedfhiq
///         awsSourceSchema: ffgsbwzxveleoxawcyogkiigworq
///         awsTags:
///           key9843: dbwvhopavlbkhbaofrgwznkwoj
///         publicCloudConnectorsResourceId: lihllkk
///         publicCloudResourceName: wftlmsgyanjghqoyfkzoqgqxrcdkq
///       resourceGroupName: rglogsLogStream
///       tags:
///         key6354: a
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
/// $ pulumi import azure-native:awsconnector:LogsLogStream vgqiwnoslesmwgvckknr /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/logsLogStreams/{name}
/// ```
class LogsLogStream extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<LogsLogStreamPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LogsLogStream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogsLogStream]. {@macro pulumi_awsconnector_logs_log_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogsLogStream(
    String name, {
    LogsLogStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:LogsLogStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LogsLogStreamPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogsLogStreamPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LogsLogStream] resource.
  LogsLogStream.reference(String urn)
    : super(
        'azure-native:awsconnector:LogsLogStream',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LogsLogStreamPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogsLogStreamPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
