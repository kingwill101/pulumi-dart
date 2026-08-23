import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamo_db_continuous_backups_description_args.dart';
import 'dynamo_dbcontinuous_backups_description_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DynamoDbContinuousBackupsDescriptions_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dynamoDbContinuousBackupsDescription = new AzureNative.AwsConnector.DynamoDbContinuousBackupsDescription("dynamoDbContinuousBackupsDescription", new()
///     {
///         Location = "zlepfxe",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.DynamoDBContinuousBackupsDescriptionPropertiesArgs
///         {
///             Arn = "ftscqdgahea",
///             AwsAccountId = "mf",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsDynamoDBContinuousBackupsDescriptionPropertiesArgs
///             {
///                 ContinuousBackupsStatus = new AzureNative.AwsConnector.Inputs.ContinuousBackupsStatusEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ContinuousBackupsStatus.DISABLED,
///                 },
///                 PointInTimeRecoveryDescription = new AzureNative.AwsConnector.Inputs.PointInTimeRecoveryDescriptionArgs
///                 {
///                     EarliestRestorableDateTime = "2024-10-08T03:52:00.281Z",
///                     LatestRestorableDateTime = "2024-10-08T03:52:00.281Z",
///                     PointInTimeRecoveryStatus = new AzureNative.AwsConnector.Inputs.PointInTimeRecoveryStatusEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.PointInTimeRecoveryStatus.DISABLED,
///                     },
///                 },
///             },
///             AwsRegion = "vvdgggbbnkqfqlawtbkkxhtn",
///             AwsSourceSchema = "qdkzzibfkzzsphoguehj",
///             AwsTags =
///             {
///                 { "key4982", "etujkpssxnluswfrmpfxwbkvvrbrj" },
///             },
///             PublicCloudConnectorsResourceId = "cmxfprcuzlfsuapudqgzmyrz",
///             PublicCloudResourceName = "y",
///         },
///         ResourceGroupName = "rgdynamoDBContinuousBackupsDescription",
///         Tags =
///         {
///             { "key6182", "vfhpsiualsgltchem" },
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
/// 		_, err := awsconnector.NewDynamoDbContinuousBackupsDescription(ctx, "dynamoDbContinuousBackupsDescription", &awsconnector.DynamoDbContinuousBackupsDescriptionArgs{
/// 			Location: pulumi.String("zlepfxe"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.DynamoDBContinuousBackupsDescriptionPropertiesArgs{
/// 				Arn:          pulumi.String("ftscqdgahea"),
/// 				AwsAccountId: pulumi.String("mf"),
/// 				AwsProperties: &awsconnector.AwsDynamoDBContinuousBackupsDescriptionPropertiesArgs{
/// 					ContinuousBackupsStatus: &awsconnector.ContinuousBackupsStatusEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ContinuousBackupsStatusDISABLED),
/// 					},
/// 					PointInTimeRecoveryDescription: &awsconnector.PointInTimeRecoveryDescriptionArgs{
/// 						EarliestRestorableDateTime: pulumi.String("2024-10-08T03:52:00.281Z"),
/// 						LatestRestorableDateTime:   pulumi.String("2024-10-08T03:52:00.281Z"),
/// 						PointInTimeRecoveryStatus: &awsconnector.PointInTimeRecoveryStatusEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.PointInTimeRecoveryStatusDISABLED),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("vvdgggbbnkqfqlawtbkkxhtn"),
/// 				AwsSourceSchema: pulumi.String("qdkzzibfkzzsphoguehj"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key4982": pulumi.String("etujkpssxnluswfrmpfxwbkvvrbrj"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("cmxfprcuzlfsuapudqgzmyrz"),
/// 				PublicCloudResourceName:         pulumi.String("y"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdynamoDBContinuousBackupsDescription"),
/// 			Tags: pulumi.StringMap{
/// 				"key6182": pulumi.String("vfhpsiualsgltchem"),
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
/// resource "azure-native_awsconnector_dynamodbcontinuousbackupsdescription" "dynamoDbContinuousBackupsDescription" {
///   location = "zlepfxe"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "ftscqdgahea"
///     aws_account_id = "mf"
///     aws_properties = {
///       continuous_backups_status = {
///         value = "DISABLED"
///       }
///       point_in_time_recovery_description = {
///         earliest_restorable_date_time = "2024-10-08T03:52:00.281Z"
///         latest_restorable_date_time   = "2024-10-08T03:52:00.281Z"
///         point_in_time_recovery_status = {
///           value = "DISABLED"
///         }
///       }
///     }
///     aws_region        = "vvdgggbbnkqfqlawtbkkxhtn"
///     aws_source_schema = "qdkzzibfkzzsphoguehj"
///     aws_tags = {
///       "key4982" = "etujkpssxnluswfrmpfxwbkvvrbrj"
///     }
///     public_cloud_connectors_resource_id = "cmxfprcuzlfsuapudqgzmyrz"
///     public_cloud_resource_name          = "y"
///   }
///   resource_group_name = "rgdynamoDBContinuousBackupsDescription"
///   tags = {
///     "key6182" = "vfhpsiualsgltchem"
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
/// import com.pulumi.azurenative.awsconnector.DynamoDbContinuousBackupsDescription;
/// import com.pulumi.azurenative.awsconnector.DynamoDbContinuousBackupsDescriptionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DynamoDBContinuousBackupsDescriptionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsDynamoDBContinuousBackupsDescriptionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ContinuousBackupsStatusEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PointInTimeRecoveryDescriptionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PointInTimeRecoveryStatusEnumValueArgs;
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
///         var dynamoDbContinuousBackupsDescription = new DynamoDbContinuousBackupsDescription("dynamoDbContinuousBackupsDescription", DynamoDbContinuousBackupsDescriptionArgs.builder()
///             .location("zlepfxe")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(DynamoDBContinuousBackupsDescriptionPropertiesArgs.builder()
///                 .arn("ftscqdgahea")
///                 .awsAccountId("mf")
///                 .awsProperties(AwsDynamoDBContinuousBackupsDescriptionPropertiesArgs.builder()
///                     .continuousBackupsStatus(ContinuousBackupsStatusEnumValueArgs.builder()
///                         .value("DISABLED")
///                         .build())
///                     .pointInTimeRecoveryDescription(PointInTimeRecoveryDescriptionArgs.builder()
///                         .earliestRestorableDateTime("2024-10-08T03:52:00.281Z")
///                         .latestRestorableDateTime("2024-10-08T03:52:00.281Z")
///                         .pointInTimeRecoveryStatus(PointInTimeRecoveryStatusEnumValueArgs.builder()
///                             .value("DISABLED")
///                             .build())
///                         .build())
///                     .build())
///                 .awsRegion("vvdgggbbnkqfqlawtbkkxhtn")
///                 .awsSourceSchema("qdkzzibfkzzsphoguehj")
///                 .awsTags(Map.of("key4982", "etujkpssxnluswfrmpfxwbkvvrbrj"))
///                 .publicCloudConnectorsResourceId("cmxfprcuzlfsuapudqgzmyrz")
///                 .publicCloudResourceName("y")
///                 .build())
///             .resourceGroupName("rgdynamoDBContinuousBackupsDescription")
///             .tags(Map.of("key6182", "vfhpsiualsgltchem"))
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
/// const dynamoDbContinuousBackupsDescription = new azure_native.awsconnector.DynamoDbContinuousBackupsDescription("dynamoDbContinuousBackupsDescription", {
///     location: "zlepfxe",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "ftscqdgahea",
///         awsAccountId: "mf",
///         awsProperties: {
///             continuousBackupsStatus: {
///                 value: azure_native.awsconnector.ContinuousBackupsStatus.DISABLED,
///             },
///             pointInTimeRecoveryDescription: {
///                 earliestRestorableDateTime: "2024-10-08T03:52:00.281Z",
///                 latestRestorableDateTime: "2024-10-08T03:52:00.281Z",
///                 pointInTimeRecoveryStatus: {
///                     value: azure_native.awsconnector.PointInTimeRecoveryStatus.DISABLED,
///                 },
///             },
///         },
///         awsRegion: "vvdgggbbnkqfqlawtbkkxhtn",
///         awsSourceSchema: "qdkzzibfkzzsphoguehj",
///         awsTags: {
///             key4982: "etujkpssxnluswfrmpfxwbkvvrbrj",
///         },
///         publicCloudConnectorsResourceId: "cmxfprcuzlfsuapudqgzmyrz",
///         publicCloudResourceName: "y",
///     },
///     resourceGroupName: "rgdynamoDBContinuousBackupsDescription",
///     tags: {
///         key6182: "vfhpsiualsgltchem",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dynamo_db_continuous_backups_description = azure_native.awsconnector.DynamoDbContinuousBackupsDescription("dynamoDbContinuousBackupsDescription",
///     location="zlepfxe",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "ftscqdgahea",
///         "aws_account_id": "mf",
///         "aws_properties": {
///             "continuous_backups_status": {
///                 "value": azure_native.awsconnector.ContinuousBackupsStatus.DISABLED,
///             },
///             "point_in_time_recovery_description": {
///                 "earliest_restorable_date_time": "2024-10-08T03:52:00.281Z",
///                 "latest_restorable_date_time": "2024-10-08T03:52:00.281Z",
///                 "point_in_time_recovery_status": {
///                     "value": azure_native.awsconnector.PointInTimeRecoveryStatus.DISABLED,
///                 },
///             },
///         },
///         "aws_region": "vvdgggbbnkqfqlawtbkkxhtn",
///         "aws_source_schema": "qdkzzibfkzzsphoguehj",
///         "aws_tags": {
///             "key4982": "etujkpssxnluswfrmpfxwbkvvrbrj",
///         },
///         "public_cloud_connectors_resource_id": "cmxfprcuzlfsuapudqgzmyrz",
///         "public_cloud_resource_name": "y",
///     },
///     resource_group_name="rgdynamoDBContinuousBackupsDescription",
///     tags={
///         "key6182": "vfhpsiualsgltchem",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dynamoDbContinuousBackupsDescription:
///     type: azure-native:awsconnector:DynamoDbContinuousBackupsDescription
///     properties:
///       location: zlepfxe
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: ftscqdgahea
///         awsAccountId: mf
///         awsProperties:
///           continuousBackupsStatus:
///             value: DISABLED
///           pointInTimeRecoveryDescription:
///             earliestRestorableDateTime: 2024-10-08T03:52:00.281Z
///             latestRestorableDateTime: 2024-10-08T03:52:00.281Z
///             pointInTimeRecoveryStatus:
///               value: DISABLED
///         awsRegion: vvdgggbbnkqfqlawtbkkxhtn
///         awsSourceSchema: qdkzzibfkzzsphoguehj
///         awsTags:
///           key4982: etujkpssxnluswfrmpfxwbkvvrbrj
///         publicCloudConnectorsResourceId: cmxfprcuzlfsuapudqgzmyrz
///         publicCloudResourceName: y
///       resourceGroupName: rgdynamoDBContinuousBackupsDescription
///       tags:
///         key6182: vfhpsiualsgltchem
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
/// $ pulumi import azure-native:awsconnector:DynamoDbContinuousBackupsDescription ybhxjyoab /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/dynamoDBContinuousBackupsDescriptions/{name}
/// ```
class DynamoDbContinuousBackupsDescription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DynamoDBContinuousBackupsDescriptionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DynamoDbContinuousBackupsDescription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DynamoDbContinuousBackupsDescription]. {@macro pulumi_awsconnector_dynamo_db_continuous_backups_description_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DynamoDbContinuousBackupsDescription(
    String name, {
    DynamoDbContinuousBackupsDescriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:DynamoDbContinuousBackupsDescription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DynamoDBContinuousBackupsDescriptionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DynamoDBContinuousBackupsDescriptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
