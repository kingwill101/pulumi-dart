import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_export_task_args.dart';
import 'rds_export_task_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RdsExportTasks_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rdsExportTask = new AzureNative.AwsConnector.RdsExportTask("rdsExportTask", new()
///     {
///         Location = "ijwmlpipjiyjjldyoytyluf",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.RdsExportTaskPropertiesArgs
///         {
///             Arn = "baufqssokdhluztwcuatl",
///             AwsAccountId = "oaxdvv",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRdsExportTaskPropertiesArgs
///             {
///                 ExportOnly = new[]
///                 {
///                     "tgbwsfhgnayugsqipjaogglzrm",
///                 },
///                 ExportTaskIdentifier = "miwmgyeweeibkjbwagqc",
///                 FailureCause = "mnjjuzhtylheweav",
///                 IamRoleArn = "fexryvrii",
///                 KmsKeyId = "nzp",
///                 PercentProgress = 5,
///                 S3Bucket = "zwwzvtjvoadrnmvvidwl",
///                 S3Prefix = "vgo",
///                 SnapshotTime = "2024-10-08T03:51:37.230Z",
///                 SourceArn = "mojassuswxqincuqhoonftpslnqh",
///                 SourceType = new AzureNative.AwsConnector.Inputs.ExportSourceTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ExportSourceType.CLUSTER,
///                 },
///                 Status = "cjaqynzkqtyptrbwud",
///                 TaskEndTime = "2024-10-08T03:51:37.231Z",
///                 TaskStartTime = "2024-10-08T03:51:37.231Z",
///                 TotalExtractedDataInGB = 7,
///                 WarningMessage = "hugvgitctxgsxkvywhlldbqe",
///             },
///             AwsRegion = "bnpl",
///             AwsSourceSchema = "eopblwzcihujlmoctzvwfoirhqkbx",
///             AwsTags =
///             {
///                 { "key353", "mjctanldpnvzjlfsxl" },
///             },
///             PublicCloudConnectorsResourceId = "xugphqsqnlgtlne",
///             PublicCloudResourceName = "exprhkzxutckvlwxawcqfy",
///         },
///         ResourceGroupName = "rgrdsExportTask",
///         Tags =
///         {
///             { "key6517", "fgvwvrfxewegzvticmnntbypm" },
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
/// 		_, err := awsconnector.NewRdsExportTask(ctx, "rdsExportTask", &awsconnector.RdsExportTaskArgs{
/// 			Location: pulumi.String("ijwmlpipjiyjjldyoytyluf"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.RdsExportTaskPropertiesArgs{
/// 				Arn:          pulumi.String("baufqssokdhluztwcuatl"),
/// 				AwsAccountId: pulumi.String("oaxdvv"),
/// 				AwsProperties: &awsconnector.AwsRdsExportTaskPropertiesArgs{
/// 					ExportOnly: pulumi.StringArray{
/// 						pulumi.String("tgbwsfhgnayugsqipjaogglzrm"),
/// 					},
/// 					ExportTaskIdentifier: pulumi.String("miwmgyeweeibkjbwagqc"),
/// 					FailureCause:         pulumi.String("mnjjuzhtylheweav"),
/// 					IamRoleArn:           pulumi.String("fexryvrii"),
/// 					KmsKeyId:             pulumi.String("nzp"),
/// 					PercentProgress:      pulumi.Int(5),
/// 					S3Bucket:             pulumi.String("zwwzvtjvoadrnmvvidwl"),
/// 					S3Prefix:             pulumi.String("vgo"),
/// 					SnapshotTime:         pulumi.String("2024-10-08T03:51:37.230Z"),
/// 					SourceArn:            pulumi.String("mojassuswxqincuqhoonftpslnqh"),
/// 					SourceType: &awsconnector.ExportSourceTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ExportSourceTypeCLUSTER),
/// 					},
/// 					Status:                 pulumi.String("cjaqynzkqtyptrbwud"),
/// 					TaskEndTime:            pulumi.String("2024-10-08T03:51:37.231Z"),
/// 					TaskStartTime:          pulumi.String("2024-10-08T03:51:37.231Z"),
/// 					TotalExtractedDataInGB: pulumi.Int(7),
/// 					WarningMessage:         pulumi.String("hugvgitctxgsxkvywhlldbqe"),
/// 				},
/// 				AwsRegion:       pulumi.String("bnpl"),
/// 				AwsSourceSchema: pulumi.String("eopblwzcihujlmoctzvwfoirhqkbx"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key353": pulumi.String("mjctanldpnvzjlfsxl"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("xugphqsqnlgtlne"),
/// 				PublicCloudResourceName:         pulumi.String("exprhkzxutckvlwxawcqfy"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgrdsExportTask"),
/// 			Tags: pulumi.StringMap{
/// 				"key6517": pulumi.String("fgvwvrfxewegzvticmnntbypm"),
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
/// import com.pulumi.azurenative.awsconnector.RdsExportTask;
/// import com.pulumi.azurenative.awsconnector.RdsExportTaskArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RdsExportTaskPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRdsExportTaskPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ExportSourceTypeEnumValueArgs;
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
///         var rdsExportTask = new RdsExportTask("rdsExportTask", RdsExportTaskArgs.builder()
///             .location("ijwmlpipjiyjjldyoytyluf")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(RdsExportTaskPropertiesArgs.builder()
///                 .arn("baufqssokdhluztwcuatl")
///                 .awsAccountId("oaxdvv")
///                 .awsProperties(AwsRdsExportTaskPropertiesArgs.builder()
///                     .exportOnly("tgbwsfhgnayugsqipjaogglzrm")
///                     .exportTaskIdentifier("miwmgyeweeibkjbwagqc")
///                     .failureCause("mnjjuzhtylheweav")
///                     .iamRoleArn("fexryvrii")
///                     .kmsKeyId("nzp")
///                     .percentProgress(5)
///                     .s3Bucket("zwwzvtjvoadrnmvvidwl")
///                     .s3Prefix("vgo")
///                     .snapshotTime("2024-10-08T03:51:37.230Z")
///                     .sourceArn("mojassuswxqincuqhoonftpslnqh")
///                     .sourceType(ExportSourceTypeEnumValueArgs.builder()
///                         .value("CLUSTER")
///                         .build())
///                     .status("cjaqynzkqtyptrbwud")
///                     .taskEndTime("2024-10-08T03:51:37.231Z")
///                     .taskStartTime("2024-10-08T03:51:37.231Z")
///                     .totalExtractedDataInGB(7)
///                     .warningMessage("hugvgitctxgsxkvywhlldbqe")
///                     .build())
///                 .awsRegion("bnpl")
///                 .awsSourceSchema("eopblwzcihujlmoctzvwfoirhqkbx")
///                 .awsTags(Map.of("key353", "mjctanldpnvzjlfsxl"))
///                 .publicCloudConnectorsResourceId("xugphqsqnlgtlne")
///                 .publicCloudResourceName("exprhkzxutckvlwxawcqfy")
///                 .build())
///             .resourceGroupName("rgrdsExportTask")
///             .tags(Map.of("key6517", "fgvwvrfxewegzvticmnntbypm"))
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
/// const rdsExportTask = new azure_native.awsconnector.RdsExportTask("rdsExportTask", {
///     location: "ijwmlpipjiyjjldyoytyluf",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "baufqssokdhluztwcuatl",
///         awsAccountId: "oaxdvv",
///         awsProperties: {
///             exportOnly: ["tgbwsfhgnayugsqipjaogglzrm"],
///             exportTaskIdentifier: "miwmgyeweeibkjbwagqc",
///             failureCause: "mnjjuzhtylheweav",
///             iamRoleArn: "fexryvrii",
///             kmsKeyId: "nzp",
///             percentProgress: 5,
///             s3Bucket: "zwwzvtjvoadrnmvvidwl",
///             s3Prefix: "vgo",
///             snapshotTime: "2024-10-08T03:51:37.230Z",
///             sourceArn: "mojassuswxqincuqhoonftpslnqh",
///             sourceType: {
///                 value: azure_native.awsconnector.ExportSourceType.CLUSTER,
///             },
///             status: "cjaqynzkqtyptrbwud",
///             taskEndTime: "2024-10-08T03:51:37.231Z",
///             taskStartTime: "2024-10-08T03:51:37.231Z",
///             totalExtractedDataInGB: 7,
///             warningMessage: "hugvgitctxgsxkvywhlldbqe",
///         },
///         awsRegion: "bnpl",
///         awsSourceSchema: "eopblwzcihujlmoctzvwfoirhqkbx",
///         awsTags: {
///             key353: "mjctanldpnvzjlfsxl",
///         },
///         publicCloudConnectorsResourceId: "xugphqsqnlgtlne",
///         publicCloudResourceName: "exprhkzxutckvlwxawcqfy",
///     },
///     resourceGroupName: "rgrdsExportTask",
///     tags: {
///         key6517: "fgvwvrfxewegzvticmnntbypm",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rds_export_task = azure_native.awsconnector.RdsExportTask("rdsExportTask",
///     location="ijwmlpipjiyjjldyoytyluf",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "baufqssokdhluztwcuatl",
///         "aws_account_id": "oaxdvv",
///         "aws_properties": {
///             "export_only": ["tgbwsfhgnayugsqipjaogglzrm"],
///             "export_task_identifier": "miwmgyeweeibkjbwagqc",
///             "failure_cause": "mnjjuzhtylheweav",
///             "iam_role_arn": "fexryvrii",
///             "kms_key_id": "nzp",
///             "percent_progress": 5,
///             "s3_bucket": "zwwzvtjvoadrnmvvidwl",
///             "s3_prefix": "vgo",
///             "snapshot_time": "2024-10-08T03:51:37.230Z",
///             "source_arn": "mojassuswxqincuqhoonftpslnqh",
///             "source_type": {
///                 "value": azure_native.awsconnector.ExportSourceType.CLUSTER,
///             },
///             "status": "cjaqynzkqtyptrbwud",
///             "task_end_time": "2024-10-08T03:51:37.231Z",
///             "task_start_time": "2024-10-08T03:51:37.231Z",
///             "total_extracted_data_in_gb": 7,
///             "warning_message": "hugvgitctxgsxkvywhlldbqe",
///         },
///         "aws_region": "bnpl",
///         "aws_source_schema": "eopblwzcihujlmoctzvwfoirhqkbx",
///         "aws_tags": {
///             "key353": "mjctanldpnvzjlfsxl",
///         },
///         "public_cloud_connectors_resource_id": "xugphqsqnlgtlne",
///         "public_cloud_resource_name": "exprhkzxutckvlwxawcqfy",
///     },
///     resource_group_name="rgrdsExportTask",
///     tags={
///         "key6517": "fgvwvrfxewegzvticmnntbypm",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   rdsExportTask:
///     type: azure-native:awsconnector:RdsExportTask
///     properties:
///       location: ijwmlpipjiyjjldyoytyluf
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: baufqssokdhluztwcuatl
///         awsAccountId: oaxdvv
///         awsProperties:
///           exportOnly:
///             - tgbwsfhgnayugsqipjaogglzrm
///           exportTaskIdentifier: miwmgyeweeibkjbwagqc
///           failureCause: mnjjuzhtylheweav
///           iamRoleArn: fexryvrii
///           kmsKeyId: nzp
///           percentProgress: 5
///           s3Bucket: zwwzvtjvoadrnmvvidwl
///           s3Prefix: vgo
///           snapshotTime: 2024-10-08T03:51:37.230Z
///           sourceArn: mojassuswxqincuqhoonftpslnqh
///           sourceType:
///             value: CLUSTER
///           status: cjaqynzkqtyptrbwud
///           taskEndTime: 2024-10-08T03:51:37.231Z
///           taskStartTime: 2024-10-08T03:51:37.231Z
///           totalExtractedDataInGB: 7
///           warningMessage: hugvgitctxgsxkvywhlldbqe
///         awsRegion: bnpl
///         awsSourceSchema: eopblwzcihujlmoctzvwfoirhqkbx
///         awsTags:
///           key353: mjctanldpnvzjlfsxl
///         publicCloudConnectorsResourceId: xugphqsqnlgtlne
///         publicCloudResourceName: exprhkzxutckvlwxawcqfy
///       resourceGroupName: rgrdsExportTask
///       tags:
///         key6517: fgvwvrfxewegzvticmnntbypm
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
/// $ pulumi import azure-native:awsconnector:RdsExportTask ncgijmzpxvtk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/rdsExportTasks/{name}
/// ```
class RdsExportTask extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<RdsExportTaskPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RdsExportTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsExportTask]. {@macro pulumi_awsconnector_rds_export_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsExportTask(
    String name, {
    RdsExportTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:RdsExportTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RdsExportTaskPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RdsExportTaskPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
