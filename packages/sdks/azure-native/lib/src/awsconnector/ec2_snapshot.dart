import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_snapshot_args.dart';
import 'ec2_snapshot_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2Snapshots_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Snapshot = new AzureNative.AwsConnector.Ec2Snapshot("ec2Snapshot", new()
///     {
///         Location = "kqbtvnmdasfajwylafmkah",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2SnapshotPropertiesArgs
///         {
///             Arn = "z",
///             AwsAccountId = "iizqmtavivxapbfqrqqrauezng",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2SnapshotPropertiesArgs
///             {
///                 DataEncryptionKeyId = "mhxbzyyikypulohbdxtpoldzxm",
///                 Description = "tsduasxksmdr",
///                 Encrypted = true,
///                 KmsKeyId = "djnzahvxonsnocqhz",
///                 OutpostArn = "vpqkamzadulbg",
///                 OwnerAlias = "bmfwdqpzxg",
///                 OwnerId = "xudlgprkedlmxatpupwvaknlkxfs",
///                 Progress = "ecdblvtjkixoklgjh",
///                 RestoreExpiryTime = "2024-10-08T03:53:51.251Z",
///                 SnapshotId = "lpcr",
///                 SseType = new AzureNative.AwsConnector.Inputs.SSETypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.SSEType.None,
///                 },
///                 StartTime = "2024-10-08T03:53:51.251Z",
///                 State = new AzureNative.AwsConnector.Inputs.SnapshotStateEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.SnapshotState.Completed,
///                 },
///                 StateMessage = "nogwovxkgpjylsijzipkpqzxpvjh",
///                 StorageTier = new AzureNative.AwsConnector.Inputs.StorageTierEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.StorageTier.Archive,
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "xjeeorwcwraovqjs",
///                         Value = "vjhh",
///                     },
///                 },
///                 VolumeId = "rzepawgzsvqncqbpjxnijhwofbgc",
///                 VolumeSize = 3,
///             },
///             AwsRegion = "yylufbdgujuqmqwhscnglwsa",
///             AwsSourceSchema = "gmzpssyyjoqqnqjxwcluwnyrswywcv",
///             AwsTags =
///             {
///                 { "key9124", "okxaaygyj" },
///             },
///             PublicCloudConnectorsResourceId = "bfcselosmakgrkibu",
///             PublicCloudResourceName = "eyltdaumfqmdgmnlwpgjhjlavikc",
///         },
///         ResourceGroupName = "rgec2Snapshot",
///         Tags =
///         {
///             { "key9392", "chbsxcwosjxo" },
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
/// 		_, err := awsconnector.NewEc2Snapshot(ctx, "ec2Snapshot", &awsconnector.Ec2SnapshotArgs{
/// 			Location: pulumi.String("kqbtvnmdasfajwylafmkah"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2SnapshotPropertiesArgs{
/// 				Arn:          pulumi.String("z"),
/// 				AwsAccountId: pulumi.String("iizqmtavivxapbfqrqqrauezng"),
/// 				AwsProperties: &awsconnector.AwsEc2SnapshotPropertiesArgs{
/// 					DataEncryptionKeyId: pulumi.String("mhxbzyyikypulohbdxtpoldzxm"),
/// 					Description:         pulumi.String("tsduasxksmdr"),
/// 					Encrypted:           pulumi.Bool(true),
/// 					KmsKeyId:            pulumi.String("djnzahvxonsnocqhz"),
/// 					OutpostArn:          pulumi.String("vpqkamzadulbg"),
/// 					OwnerAlias:          pulumi.String("bmfwdqpzxg"),
/// 					OwnerId:             pulumi.String("xudlgprkedlmxatpupwvaknlkxfs"),
/// 					Progress:            pulumi.String("ecdblvtjkixoklgjh"),
/// 					RestoreExpiryTime:   pulumi.String("2024-10-08T03:53:51.251Z"),
/// 					SnapshotId:          pulumi.String("lpcr"),
/// 					SseType: &awsconnector.SSETypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.SSETypeNone),
/// 					},
/// 					StartTime: pulumi.String("2024-10-08T03:53:51.251Z"),
/// 					State: &awsconnector.SnapshotStateEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.SnapshotStateCompleted),
/// 					},
/// 					StateMessage: pulumi.String("nogwovxkgpjylsijzipkpqzxpvjh"),
/// 					StorageTier: &awsconnector.StorageTierEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.StorageTierArchive),
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("xjeeorwcwraovqjs"),
/// 							Value: pulumi.String("vjhh"),
/// 						},
/// 					},
/// 					VolumeId:   pulumi.String("rzepawgzsvqncqbpjxnijhwofbgc"),
/// 					VolumeSize: pulumi.Int(3),
/// 				},
/// 				AwsRegion:       pulumi.String("yylufbdgujuqmqwhscnglwsa"),
/// 				AwsSourceSchema: pulumi.String("gmzpssyyjoqqnqjxwcluwnyrswywcv"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key9124": pulumi.String("okxaaygyj"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("bfcselosmakgrkibu"),
/// 				PublicCloudResourceName:         pulumi.String("eyltdaumfqmdgmnlwpgjhjlavikc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2Snapshot"),
/// 			Tags: pulumi.StringMap{
/// 				"key9392": pulumi.String("chbsxcwosjxo"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2Snapshot;
/// import com.pulumi.azurenative.awsconnector.Ec2SnapshotArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2SnapshotPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2SnapshotPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SSETypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SnapshotStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.StorageTierEnumValueArgs;
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
///         var ec2Snapshot = new Ec2Snapshot("ec2Snapshot", Ec2SnapshotArgs.builder()
///             .location("kqbtvnmdasfajwylafmkah")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2SnapshotPropertiesArgs.builder()
///                 .arn("z")
///                 .awsAccountId("iizqmtavivxapbfqrqqrauezng")
///                 .awsProperties(AwsEc2SnapshotPropertiesArgs.builder()
///                     .dataEncryptionKeyId("mhxbzyyikypulohbdxtpoldzxm")
///                     .description("tsduasxksmdr")
///                     .encrypted(true)
///                     .kmsKeyId("djnzahvxonsnocqhz")
///                     .outpostArn("vpqkamzadulbg")
///                     .ownerAlias("bmfwdqpzxg")
///                     .ownerId("xudlgprkedlmxatpupwvaknlkxfs")
///                     .progress("ecdblvtjkixoklgjh")
///                     .restoreExpiryTime("2024-10-08T03:53:51.251Z")
///                     .snapshotId("lpcr")
///                     .sseType(SSETypeEnumValueArgs.builder()
///                         .value("none")
///                         .build())
///                     .startTime("2024-10-08T03:53:51.251Z")
///                     .state(SnapshotStateEnumValueArgs.builder()
///                         .value("completed")
///                         .build())
///                     .stateMessage("nogwovxkgpjylsijzipkpqzxpvjh")
///                     .storageTier(StorageTierEnumValueArgs.builder()
///                         .value("archive")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("xjeeorwcwraovqjs")
///                         .value("vjhh")
///                         .build())
///                     .volumeId("rzepawgzsvqncqbpjxnijhwofbgc")
///                     .volumeSize(3)
///                     .build())
///                 .awsRegion("yylufbdgujuqmqwhscnglwsa")
///                 .awsSourceSchema("gmzpssyyjoqqnqjxwcluwnyrswywcv")
///                 .awsTags(Map.of("key9124", "okxaaygyj"))
///                 .publicCloudConnectorsResourceId("bfcselosmakgrkibu")
///                 .publicCloudResourceName("eyltdaumfqmdgmnlwpgjhjlavikc")
///                 .build())
///             .resourceGroupName("rgec2Snapshot")
///             .tags(Map.of("key9392", "chbsxcwosjxo"))
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
/// const ec2Snapshot = new azure_native.awsconnector.Ec2Snapshot("ec2Snapshot", {
///     location: "kqbtvnmdasfajwylafmkah",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "z",
///         awsAccountId: "iizqmtavivxapbfqrqqrauezng",
///         awsProperties: {
///             dataEncryptionKeyId: "mhxbzyyikypulohbdxtpoldzxm",
///             description: "tsduasxksmdr",
///             encrypted: true,
///             kmsKeyId: "djnzahvxonsnocqhz",
///             outpostArn: "vpqkamzadulbg",
///             ownerAlias: "bmfwdqpzxg",
///             ownerId: "xudlgprkedlmxatpupwvaknlkxfs",
///             progress: "ecdblvtjkixoklgjh",
///             restoreExpiryTime: "2024-10-08T03:53:51.251Z",
///             snapshotId: "lpcr",
///             sseType: {
///                 value: azure_native.awsconnector.SSEType.None,
///             },
///             startTime: "2024-10-08T03:53:51.251Z",
///             state: {
///                 value: azure_native.awsconnector.SnapshotState.Completed,
///             },
///             stateMessage: "nogwovxkgpjylsijzipkpqzxpvjh",
///             storageTier: {
///                 value: azure_native.awsconnector.StorageTier.Archive,
///             },
///             tags: [{
///                 key: "xjeeorwcwraovqjs",
///                 value: "vjhh",
///             }],
///             volumeId: "rzepawgzsvqncqbpjxnijhwofbgc",
///             volumeSize: 3,
///         },
///         awsRegion: "yylufbdgujuqmqwhscnglwsa",
///         awsSourceSchema: "gmzpssyyjoqqnqjxwcluwnyrswywcv",
///         awsTags: {
///             key9124: "okxaaygyj",
///         },
///         publicCloudConnectorsResourceId: "bfcselosmakgrkibu",
///         publicCloudResourceName: "eyltdaumfqmdgmnlwpgjhjlavikc",
///     },
///     resourceGroupName: "rgec2Snapshot",
///     tags: {
///         key9392: "chbsxcwosjxo",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_snapshot = azure_native.awsconnector.Ec2Snapshot("ec2Snapshot",
///     location="kqbtvnmdasfajwylafmkah",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "z",
///         "aws_account_id": "iizqmtavivxapbfqrqqrauezng",
///         "aws_properties": {
///             "data_encryption_key_id": "mhxbzyyikypulohbdxtpoldzxm",
///             "description": "tsduasxksmdr",
///             "encrypted": True,
///             "kms_key_id": "djnzahvxonsnocqhz",
///             "outpost_arn": "vpqkamzadulbg",
///             "owner_alias": "bmfwdqpzxg",
///             "owner_id": "xudlgprkedlmxatpupwvaknlkxfs",
///             "progress": "ecdblvtjkixoklgjh",
///             "restore_expiry_time": "2024-10-08T03:53:51.251Z",
///             "snapshot_id": "lpcr",
///             "sse_type": {
///                 "value": azure_native.awsconnector.SSEType.NONE,
///             },
///             "start_time": "2024-10-08T03:53:51.251Z",
///             "state": {
///                 "value": azure_native.awsconnector.SnapshotState.COMPLETED,
///             },
///             "state_message": "nogwovxkgpjylsijzipkpqzxpvjh",
///             "storage_tier": {
///                 "value": azure_native.awsconnector.StorageTier.ARCHIVE,
///             },
///             "tags": [{
///                 "key": "xjeeorwcwraovqjs",
///                 "value": "vjhh",
///             }],
///             "volume_id": "rzepawgzsvqncqbpjxnijhwofbgc",
///             "volume_size": 3,
///         },
///         "aws_region": "yylufbdgujuqmqwhscnglwsa",
///         "aws_source_schema": "gmzpssyyjoqqnqjxwcluwnyrswywcv",
///         "aws_tags": {
///             "key9124": "okxaaygyj",
///         },
///         "public_cloud_connectors_resource_id": "bfcselosmakgrkibu",
///         "public_cloud_resource_name": "eyltdaumfqmdgmnlwpgjhjlavikc",
///     },
///     resource_group_name="rgec2Snapshot",
///     tags={
///         "key9392": "chbsxcwosjxo",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2Snapshot:
///     type: azure-native:awsconnector:Ec2Snapshot
///     properties:
///       location: kqbtvnmdasfajwylafmkah
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: z
///         awsAccountId: iizqmtavivxapbfqrqqrauezng
///         awsProperties:
///           dataEncryptionKeyId: mhxbzyyikypulohbdxtpoldzxm
///           description: tsduasxksmdr
///           encrypted: true
///           kmsKeyId: djnzahvxonsnocqhz
///           outpostArn: vpqkamzadulbg
///           ownerAlias: bmfwdqpzxg
///           ownerId: xudlgprkedlmxatpupwvaknlkxfs
///           progress: ecdblvtjkixoklgjh
///           restoreExpiryTime: 2024-10-08T03:53:51.251Z
///           snapshotId: lpcr
///           sseType:
///             value: none
///           startTime: 2024-10-08T03:53:51.251Z
///           state:
///             value: completed
///           stateMessage: nogwovxkgpjylsijzipkpqzxpvjh
///           storageTier:
///             value: archive
///           tags:
///             - key: xjeeorwcwraovqjs
///               value: vjhh
///           volumeId: rzepawgzsvqncqbpjxnijhwofbgc
///           volumeSize: 3
///         awsRegion: yylufbdgujuqmqwhscnglwsa
///         awsSourceSchema: gmzpssyyjoqqnqjxwcluwnyrswywcv
///         awsTags:
///           key9124: okxaaygyj
///         publicCloudConnectorsResourceId: bfcselosmakgrkibu
///         publicCloudResourceName: eyltdaumfqmdgmnlwpgjhjlavikc
///       resourceGroupName: rgec2Snapshot
///       tags:
///         key9392: chbsxcwosjxo
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
/// $ pulumi import azure-native:awsconnector:Ec2Snapshot ewnypudielhizpefkqlexr /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2Snapshots/{name}
/// ```
class Ec2Snapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2SnapshotPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2Snapshot]. {@macro pulumi_awsconnector_ec2_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2Snapshot(
    String name, {
    Ec2SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:Ec2Snapshot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2SnapshotPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
