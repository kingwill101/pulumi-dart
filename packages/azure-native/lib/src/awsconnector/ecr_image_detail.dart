import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecr_image_detail_args.dart';
import 'ecr_image_detail_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EcrImageDetails_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecrImageDetail = new AzureNative.AwsConnector.EcrImageDetail("ecrImageDetail", new()
///     {
///         Location = "mpxszpyclsniahaoqerqewrzxyzcdt",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.EcrImageDetailPropertiesArgs
///         {
///             Arn = "dhvgwgtedzuiqdvgc",
///             AwsAccountId = "yqyxjsfibyscdhyofmyu",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEcrImageDetailPropertiesArgs
///             {
///                 ArtifactMediaType = "ciuahpzw",
///                 ImageDigest = "mfgr",
///                 ImageManifestMediaType = "arzsyssziqvvryqc",
///                 ImagePushedAt = "2024-10-08T03:51:24.487Z",
///                 ImageScanFindingsSummary = new AzureNative.AwsConnector.Inputs.ImageScanFindingsSummaryArgs
///                 {
///                     FindingSeverityCounts =
///                     {
///                         { "key9764", 10 },
///                     },
///                     ImageScanCompletedAt = "2024-10-08T03:51:24.488Z",
///                     VulnerabilitySourceUpdatedAt = "2024-10-08T03:51:24.488Z",
///                 },
///                 ImageScanStatus = new AzureNative.AwsConnector.Inputs.ImageScanStatusArgs
///                 {
///                     Description = "kvsqwhxzrnciqybnl",
///                     Status = new AzureNative.AwsConnector.Inputs.ScanStatusEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.ScanStatus.ACTIVE,
///                     },
///                 },
///                 ImageSizeInBytes = 18,
///                 ImageTags = new[]
///                 {
///                     "bwikpoljnmaoewepiunoltcxlyxd",
///                 },
///                 LastRecordedPullTime = "2024-10-08T03:51:24.488Z",
///                 RegistryId = "xpxtbbeejeosvtcvq",
///                 RepositoryName = "abftxvvazyfekkcpo",
///             },
///             AwsRegion = "atlamkemuqwaezwdsuavhaqo",
///             AwsSourceSchema = "ibsdsdpuiqcwsdxqfn",
///             AwsTags =
///             {
///                 { "key4659", "sgfdrvhgloyrvwyfqxyvzmhu" },
///             },
///             PublicCloudConnectorsResourceId = "glrdicxdaktwlkvgvxurgww",
///             PublicCloudResourceName = "gijthpfhduauuus",
///         },
///         ResourceGroupName = "rgecrImageDetail",
///         Tags =
///         {
///             { "key9132", "faznbwmprsja" },
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
/// 		_, err := awsconnector.NewEcrImageDetail(ctx, "ecrImageDetail", &awsconnector.EcrImageDetailArgs{
/// 			Location: pulumi.String("mpxszpyclsniahaoqerqewrzxyzcdt"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.EcrImageDetailPropertiesArgs{
/// 				Arn:          pulumi.String("dhvgwgtedzuiqdvgc"),
/// 				AwsAccountId: pulumi.String("yqyxjsfibyscdhyofmyu"),
/// 				AwsProperties: &awsconnector.AwsEcrImageDetailPropertiesArgs{
/// 					ArtifactMediaType:      pulumi.String("ciuahpzw"),
/// 					ImageDigest:            pulumi.String("mfgr"),
/// 					ImageManifestMediaType: pulumi.String("arzsyssziqvvryqc"),
/// 					ImagePushedAt:          pulumi.String("2024-10-08T03:51:24.487Z"),
/// 					ImageScanFindingsSummary: &awsconnector.ImageScanFindingsSummaryArgs{
/// 						FindingSeverityCounts: pulumi.IntMap{
/// 							"key9764": pulumi.Int(10),
/// 						},
/// 						ImageScanCompletedAt:         pulumi.String("2024-10-08T03:51:24.488Z"),
/// 						VulnerabilitySourceUpdatedAt: pulumi.String("2024-10-08T03:51:24.488Z"),
/// 					},
/// 					ImageScanStatus: &awsconnector.ImageScanStatusArgs{
/// 						Description: pulumi.String("kvsqwhxzrnciqybnl"),
/// 						Status: &awsconnector.ScanStatusEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.ScanStatusACTIVE),
/// 						},
/// 					},
/// 					ImageSizeInBytes: pulumi.Float64(18),
/// 					ImageTags: pulumi.StringArray{
/// 						pulumi.String("bwikpoljnmaoewepiunoltcxlyxd"),
/// 					},
/// 					LastRecordedPullTime: pulumi.String("2024-10-08T03:51:24.488Z"),
/// 					RegistryId:           pulumi.String("xpxtbbeejeosvtcvq"),
/// 					RepositoryName:       pulumi.String("abftxvvazyfekkcpo"),
/// 				},
/// 				AwsRegion:       pulumi.String("atlamkemuqwaezwdsuavhaqo"),
/// 				AwsSourceSchema: pulumi.String("ibsdsdpuiqcwsdxqfn"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key4659": pulumi.String("sgfdrvhgloyrvwyfqxyvzmhu"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("glrdicxdaktwlkvgvxurgww"),
/// 				PublicCloudResourceName:         pulumi.String("gijthpfhduauuus"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgecrImageDetail"),
/// 			Tags: pulumi.StringMap{
/// 				"key9132": pulumi.String("faznbwmprsja"),
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
/// import com.pulumi.azurenative.awsconnector.EcrImageDetail;
/// import com.pulumi.azurenative.awsconnector.EcrImageDetailArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EcrImageDetailPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEcrImageDetailPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ImageScanFindingsSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ImageScanStatusArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ScanStatusEnumValueArgs;
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
///         var ecrImageDetail = new EcrImageDetail("ecrImageDetail", EcrImageDetailArgs.builder()
///             .location("mpxszpyclsniahaoqerqewrzxyzcdt")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(EcrImageDetailPropertiesArgs.builder()
///                 .arn("dhvgwgtedzuiqdvgc")
///                 .awsAccountId("yqyxjsfibyscdhyofmyu")
///                 .awsProperties(AwsEcrImageDetailPropertiesArgs.builder()
///                     .artifactMediaType("ciuahpzw")
///                     .imageDigest("mfgr")
///                     .imageManifestMediaType("arzsyssziqvvryqc")
///                     .imagePushedAt("2024-10-08T03:51:24.487Z")
///                     .imageScanFindingsSummary(ImageScanFindingsSummaryArgs.builder()
///                         .findingSeverityCounts(Map.of("key9764", 10))
///                         .imageScanCompletedAt("2024-10-08T03:51:24.488Z")
///                         .vulnerabilitySourceUpdatedAt("2024-10-08T03:51:24.488Z")
///                         .build())
///                     .imageScanStatus(ImageScanStatusArgs.builder()
///                         .description("kvsqwhxzrnciqybnl")
///                         .status(ScanStatusEnumValueArgs.builder()
///                             .value("ACTIVE")
///                             .build())
///                         .build())
///                     .imageSizeInBytes(18.0)
///                     .imageTags("bwikpoljnmaoewepiunoltcxlyxd")
///                     .lastRecordedPullTime("2024-10-08T03:51:24.488Z")
///                     .registryId("xpxtbbeejeosvtcvq")
///                     .repositoryName("abftxvvazyfekkcpo")
///                     .build())
///                 .awsRegion("atlamkemuqwaezwdsuavhaqo")
///                 .awsSourceSchema("ibsdsdpuiqcwsdxqfn")
///                 .awsTags(Map.of("key4659", "sgfdrvhgloyrvwyfqxyvzmhu"))
///                 .publicCloudConnectorsResourceId("glrdicxdaktwlkvgvxurgww")
///                 .publicCloudResourceName("gijthpfhduauuus")
///                 .build())
///             .resourceGroupName("rgecrImageDetail")
///             .tags(Map.of("key9132", "faznbwmprsja"))
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
/// const ecrImageDetail = new azure_native.awsconnector.EcrImageDetail("ecrImageDetail", {
///     location: "mpxszpyclsniahaoqerqewrzxyzcdt",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "dhvgwgtedzuiqdvgc",
///         awsAccountId: "yqyxjsfibyscdhyofmyu",
///         awsProperties: {
///             artifactMediaType: "ciuahpzw",
///             imageDigest: "mfgr",
///             imageManifestMediaType: "arzsyssziqvvryqc",
///             imagePushedAt: "2024-10-08T03:51:24.487Z",
///             imageScanFindingsSummary: {
///                 findingSeverityCounts: {
///                     key9764: 10,
///                 },
///                 imageScanCompletedAt: "2024-10-08T03:51:24.488Z",
///                 vulnerabilitySourceUpdatedAt: "2024-10-08T03:51:24.488Z",
///             },
///             imageScanStatus: {
///                 description: "kvsqwhxzrnciqybnl",
///                 status: {
///                     value: azure_native.awsconnector.ScanStatus.ACTIVE,
///                 },
///             },
///             imageSizeInBytes: 18,
///             imageTags: ["bwikpoljnmaoewepiunoltcxlyxd"],
///             lastRecordedPullTime: "2024-10-08T03:51:24.488Z",
///             registryId: "xpxtbbeejeosvtcvq",
///             repositoryName: "abftxvvazyfekkcpo",
///         },
///         awsRegion: "atlamkemuqwaezwdsuavhaqo",
///         awsSourceSchema: "ibsdsdpuiqcwsdxqfn",
///         awsTags: {
///             key4659: "sgfdrvhgloyrvwyfqxyvzmhu",
///         },
///         publicCloudConnectorsResourceId: "glrdicxdaktwlkvgvxurgww",
///         publicCloudResourceName: "gijthpfhduauuus",
///     },
///     resourceGroupName: "rgecrImageDetail",
///     tags: {
///         key9132: "faznbwmprsja",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ecr_image_detail = azure_native.awsconnector.EcrImageDetail("ecrImageDetail",
///     location="mpxszpyclsniahaoqerqewrzxyzcdt",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "dhvgwgtedzuiqdvgc",
///         "aws_account_id": "yqyxjsfibyscdhyofmyu",
///         "aws_properties": {
///             "artifact_media_type": "ciuahpzw",
///             "image_digest": "mfgr",
///             "image_manifest_media_type": "arzsyssziqvvryqc",
///             "image_pushed_at": "2024-10-08T03:51:24.487Z",
///             "image_scan_findings_summary": {
///                 "finding_severity_counts": {
///                     "key9764": 10,
///                 },
///                 "image_scan_completed_at": "2024-10-08T03:51:24.488Z",
///                 "vulnerability_source_updated_at": "2024-10-08T03:51:24.488Z",
///             },
///             "image_scan_status": {
///                 "description": "kvsqwhxzrnciqybnl",
///                 "status": {
///                     "value": azure_native.awsconnector.ScanStatus.ACTIVE,
///                 },
///             },
///             "image_size_in_bytes": 18,
///             "image_tags": ["bwikpoljnmaoewepiunoltcxlyxd"],
///             "last_recorded_pull_time": "2024-10-08T03:51:24.488Z",
///             "registry_id": "xpxtbbeejeosvtcvq",
///             "repository_name": "abftxvvazyfekkcpo",
///         },
///         "aws_region": "atlamkemuqwaezwdsuavhaqo",
///         "aws_source_schema": "ibsdsdpuiqcwsdxqfn",
///         "aws_tags": {
///             "key4659": "sgfdrvhgloyrvwyfqxyvzmhu",
///         },
///         "public_cloud_connectors_resource_id": "glrdicxdaktwlkvgvxurgww",
///         "public_cloud_resource_name": "gijthpfhduauuus",
///     },
///     resource_group_name="rgecrImageDetail",
///     tags={
///         "key9132": "faznbwmprsja",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ecrImageDetail:
///     type: azure-native:awsconnector:EcrImageDetail
///     properties:
///       location: mpxszpyclsniahaoqerqewrzxyzcdt
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: dhvgwgtedzuiqdvgc
///         awsAccountId: yqyxjsfibyscdhyofmyu
///         awsProperties:
///           artifactMediaType: ciuahpzw
///           imageDigest: mfgr
///           imageManifestMediaType: arzsyssziqvvryqc
///           imagePushedAt: 2024-10-08T03:51:24.487Z
///           imageScanFindingsSummary:
///             findingSeverityCounts:
///               key9764: 10
///             imageScanCompletedAt: 2024-10-08T03:51:24.488Z
///             vulnerabilitySourceUpdatedAt: 2024-10-08T03:51:24.488Z
///           imageScanStatus:
///             description: kvsqwhxzrnciqybnl
///             status:
///               value: ACTIVE
///           imageSizeInBytes: 18
///           imageTags:
///             - bwikpoljnmaoewepiunoltcxlyxd
///           lastRecordedPullTime: 2024-10-08T03:51:24.488Z
///           registryId: xpxtbbeejeosvtcvq
///           repositoryName: abftxvvazyfekkcpo
///         awsRegion: atlamkemuqwaezwdsuavhaqo
///         awsSourceSchema: ibsdsdpuiqcwsdxqfn
///         awsTags:
///           key4659: sgfdrvhgloyrvwyfqxyvzmhu
///         publicCloudConnectorsResourceId: glrdicxdaktwlkvgvxurgww
///         publicCloudResourceName: gijthpfhduauuus
///       resourceGroupName: rgecrImageDetail
///       tags:
///         key9132: faznbwmprsja
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
/// $ pulumi import azure-native:awsconnector:EcrImageDetail txgcvtvpadhbmhr /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ecrImageDetails/{name}
/// ```
class EcrImageDetail extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<EcrImageDetailPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EcrImageDetail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcrImageDetail]. {@macro pulumi_awsconnector_ecr_image_detail_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcrImageDetail(
    String name, {
    EcrImageDetailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:EcrImageDetail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<EcrImageDetailPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
