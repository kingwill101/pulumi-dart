import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_db_snapshot_args.dart';
import 'rds_dbsnapshot_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RdsDbSnapshots_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rdsDbSnapshot = new AzureNative.AwsConnector.RdsDbSnapshot("rdsDbSnapshot", new()
///     {
///         Location = "ojgfpymabvdpgvknjfvaecf",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.RdsDBSnapshotPropertiesArgs
///         {
///             Arn = "nqbzizmcdbvsukdqhrdcg",
///             AwsAccountId = "gimhekqewbnatvrjiewxszwd",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRdsDBSnapshotPropertiesArgs
///             {
///                 AllocatedStorage = 10,
///                 AvailabilityZone = "kayjlaciv",
///                 DbInstanceIdentifier = "sgszwrakxshyzice",
///                 DbSnapshotArn = "xdjclnyyjohzhbe",
///                 DbSnapshotIdentifier = "yeju",
///                 DbSystemId = "fzavlejrrugjcdxaetdvvhg",
///                 DbiResourceId = "jwxsvn",
///                 DedicatedLogVolume = true,
///                 Encrypted = true,
///                 Engine = "xkjeovmjwpoycteiloodhzsyly",
///                 EngineVersion = "ycrrezzqweeassrgalnqmcuhnk",
///                 IamDatabaseAuthenticationEnabled = true,
///                 InstanceCreateTime = "2024-10-08T03:49:38.588Z",
///                 Iops = 7,
///                 KmsKeyId = "lblvrtpgcfkwhhylmefrzvf",
///                 LicenseModel = "wbcqlk",
///                 MasterUsername = "ahyhxkpctusl",
///                 MultiTenant = true,
///                 OptionGroupName = "zxrglvxvd",
///                 OriginalSnapshotCreateTime = "2024-10-08T03:49:38.589Z",
///                 PercentProgress = 19,
///                 Port = 11,
///                 ProcessorFeatures = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ProcessorFeatureArgs
///                     {
///                         Name = "sidrqdpoqaeon",
///                         Value = "elyxiifmhltlaxelehotutvcfcmqii",
///                     },
///                 },
///                 SnapshotCreateTime = "2024-10-08T03:49:38.589Z",
///                 SnapshotDatabaseTime = "2024-10-08T03:49:38.589Z",
///                 SnapshotTarget = "uvkzzwcpvrfjw",
///                 SnapshotType = "iiydwpezfwmejabymfqpelcifgzng",
///                 SourceDBSnapshotIdentifier = "awxakkqcvryuhqdbunoz",
///                 SourceRegion = "vrldyuopcfabthhgxvpnybgtfdi",
///                 Status = "mwktzwjlfzywwkgrjhl",
///                 StorageThroughput = 1,
///                 StorageType = "i",
///                 TagList = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "mzixrqjicfutjmwsvhfrku",
///                         Value = "gbyocywzau",
///                     },
///                 },
///                 TdeCredentialArn = "eyoddxncbnezesemvnxd",
///                 Timezone = "coraguclwgryiiynjhpes",
///                 VpcId = "fpweamshtdzkrbhcqenn",
///             },
///             AwsRegion = "qk",
///             AwsSourceSchema = "sfaw",
///             AwsTags =
///             {
///                 { "key7020", "vzcdzxrdsvgurfovupzzumr" },
///             },
///             PublicCloudConnectorsResourceId = "ptkmloddhzkiphtdnmdhlx",
///             PublicCloudResourceName = "uoecdcxuxiu",
///         },
///         ResourceGroupName = "rgrdsDBSnapshot",
///         Tags =
///         {
///             { "key752", "byquognttsccsvhrdhc" },
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
/// 		_, err := awsconnector.NewRdsDbSnapshot(ctx, "rdsDbSnapshot", &awsconnector.RdsDbSnapshotArgs{
/// 			Location: pulumi.String("ojgfpymabvdpgvknjfvaecf"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.RdsDBSnapshotPropertiesArgs{
/// 				Arn:          pulumi.String("nqbzizmcdbvsukdqhrdcg"),
/// 				AwsAccountId: pulumi.String("gimhekqewbnatvrjiewxszwd"),
/// 				AwsProperties: &awsconnector.AwsRdsDBSnapshotPropertiesArgs{
/// 					AllocatedStorage:                 pulumi.Int(10),
/// 					AvailabilityZone:                 pulumi.String("kayjlaciv"),
/// 					DbInstanceIdentifier:             pulumi.String("sgszwrakxshyzice"),
/// 					DbSnapshotArn:                    pulumi.String("xdjclnyyjohzhbe"),
/// 					DbSnapshotIdentifier:             pulumi.String("yeju"),
/// 					DbSystemId:                       pulumi.String("fzavlejrrugjcdxaetdvvhg"),
/// 					DbiResourceId:                    pulumi.String("jwxsvn"),
/// 					DedicatedLogVolume:               pulumi.Bool(true),
/// 					Encrypted:                        pulumi.Bool(true),
/// 					Engine:                           pulumi.String("xkjeovmjwpoycteiloodhzsyly"),
/// 					EngineVersion:                    pulumi.String("ycrrezzqweeassrgalnqmcuhnk"),
/// 					IamDatabaseAuthenticationEnabled: pulumi.Bool(true),
/// 					InstanceCreateTime:               pulumi.String("2024-10-08T03:49:38.588Z"),
/// 					Iops:                             pulumi.Int(7),
/// 					KmsKeyId:                         pulumi.String("lblvrtpgcfkwhhylmefrzvf"),
/// 					LicenseModel:                     pulumi.String("wbcqlk"),
/// 					MasterUsername:                   pulumi.String("ahyhxkpctusl"),
/// 					MultiTenant:                      pulumi.Bool(true),
/// 					OptionGroupName:                  pulumi.String("zxrglvxvd"),
/// 					OriginalSnapshotCreateTime:       pulumi.String("2024-10-08T03:49:38.589Z"),
/// 					PercentProgress:                  pulumi.Int(19),
/// 					Port:                             pulumi.Int(11),
/// 					ProcessorFeatures: awsconnector.ProcessorFeatureArray{
/// 						&awsconnector.ProcessorFeatureArgs{
/// 							Name:  pulumi.String("sidrqdpoqaeon"),
/// 							Value: pulumi.String("elyxiifmhltlaxelehotutvcfcmqii"),
/// 						},
/// 					},
/// 					SnapshotCreateTime:         pulumi.String("2024-10-08T03:49:38.589Z"),
/// 					SnapshotDatabaseTime:       pulumi.String("2024-10-08T03:49:38.589Z"),
/// 					SnapshotTarget:             pulumi.String("uvkzzwcpvrfjw"),
/// 					SnapshotType:               pulumi.String("iiydwpezfwmejabymfqpelcifgzng"),
/// 					SourceDBSnapshotIdentifier: pulumi.String("awxakkqcvryuhqdbunoz"),
/// 					SourceRegion:               pulumi.String("vrldyuopcfabthhgxvpnybgtfdi"),
/// 					Status:                     pulumi.String("mwktzwjlfzywwkgrjhl"),
/// 					StorageThroughput:          pulumi.Int(1),
/// 					StorageType:                pulumi.String("i"),
/// 					TagList: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("mzixrqjicfutjmwsvhfrku"),
/// 							Value: pulumi.String("gbyocywzau"),
/// 						},
/// 					},
/// 					TdeCredentialArn: pulumi.String("eyoddxncbnezesemvnxd"),
/// 					Timezone:         pulumi.String("coraguclwgryiiynjhpes"),
/// 					VpcId:            pulumi.String("fpweamshtdzkrbhcqenn"),
/// 				},
/// 				AwsRegion:       pulumi.String("qk"),
/// 				AwsSourceSchema: pulumi.String("sfaw"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7020": pulumi.String("vzcdzxrdsvgurfovupzzumr"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ptkmloddhzkiphtdnmdhlx"),
/// 				PublicCloudResourceName:         pulumi.String("uoecdcxuxiu"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgrdsDBSnapshot"),
/// 			Tags: pulumi.StringMap{
/// 				"key752": pulumi.String("byquognttsccsvhrdhc"),
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
/// import com.pulumi.azurenative.awsconnector.RdsDbSnapshot;
/// import com.pulumi.azurenative.awsconnector.RdsDbSnapshotArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RdsDBSnapshotPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRdsDBSnapshotPropertiesArgs;
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
///         var rdsDbSnapshot = new RdsDbSnapshot("rdsDbSnapshot", RdsDbSnapshotArgs.builder()
///             .location("ojgfpymabvdpgvknjfvaecf")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(RdsDBSnapshotPropertiesArgs.builder()
///                 .arn("nqbzizmcdbvsukdqhrdcg")
///                 .awsAccountId("gimhekqewbnatvrjiewxszwd")
///                 .awsProperties(AwsRdsDBSnapshotPropertiesArgs.builder()
///                     .allocatedStorage(10)
///                     .availabilityZone("kayjlaciv")
///                     .dbInstanceIdentifier("sgszwrakxshyzice")
///                     .dbSnapshotArn("xdjclnyyjohzhbe")
///                     .dbSnapshotIdentifier("yeju")
///                     .dbSystemId("fzavlejrrugjcdxaetdvvhg")
///                     .dbiResourceId("jwxsvn")
///                     .dedicatedLogVolume(true)
///                     .encrypted(true)
///                     .engine("xkjeovmjwpoycteiloodhzsyly")
///                     .engineVersion("ycrrezzqweeassrgalnqmcuhnk")
///                     .iamDatabaseAuthenticationEnabled(true)
///                     .instanceCreateTime("2024-10-08T03:49:38.588Z")
///                     .iops(7)
///                     .kmsKeyId("lblvrtpgcfkwhhylmefrzvf")
///                     .licenseModel("wbcqlk")
///                     .masterUsername("ahyhxkpctusl")
///                     .multiTenant(true)
///                     .optionGroupName("zxrglvxvd")
///                     .originalSnapshotCreateTime("2024-10-08T03:49:38.589Z")
///                     .percentProgress(19)
///                     .port(11)
///                     .processorFeatures(ProcessorFeatureArgs.builder()
///                         .name("sidrqdpoqaeon")
///                         .value("elyxiifmhltlaxelehotutvcfcmqii")
///                         .build())
///                     .snapshotCreateTime("2024-10-08T03:49:38.589Z")
///                     .snapshotDatabaseTime("2024-10-08T03:49:38.589Z")
///                     .snapshotTarget("uvkzzwcpvrfjw")
///                     .snapshotType("iiydwpezfwmejabymfqpelcifgzng")
///                     .sourceDBSnapshotIdentifier("awxakkqcvryuhqdbunoz")
///                     .sourceRegion("vrldyuopcfabthhgxvpnybgtfdi")
///                     .status("mwktzwjlfzywwkgrjhl")
///                     .storageThroughput(1)
///                     .storageType("i")
///                     .tagList(TagArgs.builder()
///                         .key("mzixrqjicfutjmwsvhfrku")
///                         .value("gbyocywzau")
///                         .build())
///                     .tdeCredentialArn("eyoddxncbnezesemvnxd")
///                     .timezone("coraguclwgryiiynjhpes")
///                     .vpcId("fpweamshtdzkrbhcqenn")
///                     .build())
///                 .awsRegion("qk")
///                 .awsSourceSchema("sfaw")
///                 .awsTags(Map.of("key7020", "vzcdzxrdsvgurfovupzzumr"))
///                 .publicCloudConnectorsResourceId("ptkmloddhzkiphtdnmdhlx")
///                 .publicCloudResourceName("uoecdcxuxiu")
///                 .build())
///             .resourceGroupName("rgrdsDBSnapshot")
///             .tags(Map.of("key752", "byquognttsccsvhrdhc"))
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
/// const rdsDbSnapshot = new azure_native.awsconnector.RdsDbSnapshot("rdsDbSnapshot", {
///     location: "ojgfpymabvdpgvknjfvaecf",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "nqbzizmcdbvsukdqhrdcg",
///         awsAccountId: "gimhekqewbnatvrjiewxszwd",
///         awsProperties: {
///             allocatedStorage: 10,
///             availabilityZone: "kayjlaciv",
///             dbInstanceIdentifier: "sgszwrakxshyzice",
///             dbSnapshotArn: "xdjclnyyjohzhbe",
///             dbSnapshotIdentifier: "yeju",
///             dbSystemId: "fzavlejrrugjcdxaetdvvhg",
///             dbiResourceId: "jwxsvn",
///             dedicatedLogVolume: true,
///             encrypted: true,
///             engine: "xkjeovmjwpoycteiloodhzsyly",
///             engineVersion: "ycrrezzqweeassrgalnqmcuhnk",
///             iamDatabaseAuthenticationEnabled: true,
///             instanceCreateTime: "2024-10-08T03:49:38.588Z",
///             iops: 7,
///             kmsKeyId: "lblvrtpgcfkwhhylmefrzvf",
///             licenseModel: "wbcqlk",
///             masterUsername: "ahyhxkpctusl",
///             multiTenant: true,
///             optionGroupName: "zxrglvxvd",
///             originalSnapshotCreateTime: "2024-10-08T03:49:38.589Z",
///             percentProgress: 19,
///             port: 11,
///             processorFeatures: [{
///                 name: "sidrqdpoqaeon",
///                 value: "elyxiifmhltlaxelehotutvcfcmqii",
///             }],
///             snapshotCreateTime: "2024-10-08T03:49:38.589Z",
///             snapshotDatabaseTime: "2024-10-08T03:49:38.589Z",
///             snapshotTarget: "uvkzzwcpvrfjw",
///             snapshotType: "iiydwpezfwmejabymfqpelcifgzng",
///             sourceDBSnapshotIdentifier: "awxakkqcvryuhqdbunoz",
///             sourceRegion: "vrldyuopcfabthhgxvpnybgtfdi",
///             status: "mwktzwjlfzywwkgrjhl",
///             storageThroughput: 1,
///             storageType: "i",
///             tagList: [{
///                 key: "mzixrqjicfutjmwsvhfrku",
///                 value: "gbyocywzau",
///             }],
///             tdeCredentialArn: "eyoddxncbnezesemvnxd",
///             timezone: "coraguclwgryiiynjhpes",
///             vpcId: "fpweamshtdzkrbhcqenn",
///         },
///         awsRegion: "qk",
///         awsSourceSchema: "sfaw",
///         awsTags: {
///             key7020: "vzcdzxrdsvgurfovupzzumr",
///         },
///         publicCloudConnectorsResourceId: "ptkmloddhzkiphtdnmdhlx",
///         publicCloudResourceName: "uoecdcxuxiu",
///     },
///     resourceGroupName: "rgrdsDBSnapshot",
///     tags: {
///         key752: "byquognttsccsvhrdhc",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rds_db_snapshot = azure_native.awsconnector.RdsDbSnapshot("rdsDbSnapshot",
///     location="ojgfpymabvdpgvknjfvaecf",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "nqbzizmcdbvsukdqhrdcg",
///         "aws_account_id": "gimhekqewbnatvrjiewxszwd",
///         "aws_properties": {
///             "allocated_storage": 10,
///             "availability_zone": "kayjlaciv",
///             "db_instance_identifier": "sgszwrakxshyzice",
///             "db_snapshot_arn": "xdjclnyyjohzhbe",
///             "db_snapshot_identifier": "yeju",
///             "db_system_id": "fzavlejrrugjcdxaetdvvhg",
///             "dbi_resource_id": "jwxsvn",
///             "dedicated_log_volume": True,
///             "encrypted": True,
///             "engine": "xkjeovmjwpoycteiloodhzsyly",
///             "engine_version": "ycrrezzqweeassrgalnqmcuhnk",
///             "iam_database_authentication_enabled": True,
///             "instance_create_time": "2024-10-08T03:49:38.588Z",
///             "iops": 7,
///             "kms_key_id": "lblvrtpgcfkwhhylmefrzvf",
///             "license_model": "wbcqlk",
///             "master_username": "ahyhxkpctusl",
///             "multi_tenant": True,
///             "option_group_name": "zxrglvxvd",
///             "original_snapshot_create_time": "2024-10-08T03:49:38.589Z",
///             "percent_progress": 19,
///             "port": 11,
///             "processor_features": [{
///                 "name": "sidrqdpoqaeon",
///                 "value": "elyxiifmhltlaxelehotutvcfcmqii",
///             }],
///             "snapshot_create_time": "2024-10-08T03:49:38.589Z",
///             "snapshot_database_time": "2024-10-08T03:49:38.589Z",
///             "snapshot_target": "uvkzzwcpvrfjw",
///             "snapshot_type": "iiydwpezfwmejabymfqpelcifgzng",
///             "source_db_snapshot_identifier": "awxakkqcvryuhqdbunoz",
///             "source_region": "vrldyuopcfabthhgxvpnybgtfdi",
///             "status": "mwktzwjlfzywwkgrjhl",
///             "storage_throughput": 1,
///             "storage_type": "i",
///             "tag_list": [{
///                 "key": "mzixrqjicfutjmwsvhfrku",
///                 "value": "gbyocywzau",
///             }],
///             "tde_credential_arn": "eyoddxncbnezesemvnxd",
///             "timezone": "coraguclwgryiiynjhpes",
///             "vpc_id": "fpweamshtdzkrbhcqenn",
///         },
///         "aws_region": "qk",
///         "aws_source_schema": "sfaw",
///         "aws_tags": {
///             "key7020": "vzcdzxrdsvgurfovupzzumr",
///         },
///         "public_cloud_connectors_resource_id": "ptkmloddhzkiphtdnmdhlx",
///         "public_cloud_resource_name": "uoecdcxuxiu",
///     },
///     resource_group_name="rgrdsDBSnapshot",
///     tags={
///         "key752": "byquognttsccsvhrdhc",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   rdsDbSnapshot:
///     type: azure-native:awsconnector:RdsDbSnapshot
///     properties:
///       location: ojgfpymabvdpgvknjfvaecf
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: nqbzizmcdbvsukdqhrdcg
///         awsAccountId: gimhekqewbnatvrjiewxszwd
///         awsProperties:
///           allocatedStorage: 10
///           availabilityZone: kayjlaciv
///           dbInstanceIdentifier: sgszwrakxshyzice
///           dbSnapshotArn: xdjclnyyjohzhbe
///           dbSnapshotIdentifier: yeju
///           dbSystemId: fzavlejrrugjcdxaetdvvhg
///           dbiResourceId: jwxsvn
///           dedicatedLogVolume: true
///           encrypted: true
///           engine: xkjeovmjwpoycteiloodhzsyly
///           engineVersion: ycrrezzqweeassrgalnqmcuhnk
///           iamDatabaseAuthenticationEnabled: true
///           instanceCreateTime: 2024-10-08T03:49:38.588Z
///           iops: 7
///           kmsKeyId: lblvrtpgcfkwhhylmefrzvf
///           licenseModel: wbcqlk
///           masterUsername: ahyhxkpctusl
///           multiTenant: true
///           optionGroupName: zxrglvxvd
///           originalSnapshotCreateTime: 2024-10-08T03:49:38.589Z
///           percentProgress: 19
///           port: 11
///           processorFeatures:
///             - name: sidrqdpoqaeon
///               value: elyxiifmhltlaxelehotutvcfcmqii
///           snapshotCreateTime: 2024-10-08T03:49:38.589Z
///           snapshotDatabaseTime: 2024-10-08T03:49:38.589Z
///           snapshotTarget: uvkzzwcpvrfjw
///           snapshotType: iiydwpezfwmejabymfqpelcifgzng
///           sourceDBSnapshotIdentifier: awxakkqcvryuhqdbunoz
///           sourceRegion: vrldyuopcfabthhgxvpnybgtfdi
///           status: mwktzwjlfzywwkgrjhl
///           storageThroughput: 1
///           storageType: i
///           tagList:
///             - key: mzixrqjicfutjmwsvhfrku
///               value: gbyocywzau
///           tdeCredentialArn: eyoddxncbnezesemvnxd
///           timezone: coraguclwgryiiynjhpes
///           vpcId: fpweamshtdzkrbhcqenn
///         awsRegion: qk
///         awsSourceSchema: sfaw
///         awsTags:
///           key7020: vzcdzxrdsvgurfovupzzumr
///         publicCloudConnectorsResourceId: ptkmloddhzkiphtdnmdhlx
///         publicCloudResourceName: uoecdcxuxiu
///       resourceGroupName: rgrdsDBSnapshot
///       tags:
///         key752: byquognttsccsvhrdhc
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
/// $ pulumi import azure-native:awsconnector:RdsDbSnapshot h /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/rdsDBSnapshots/{name}
/// ```
class RdsDbSnapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<RdsDBSnapshotPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RdsDbSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsDbSnapshot]. {@macro pulumi_awsconnector_rds_db_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsDbSnapshot(
    String name, {
    RdsDbSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:RdsDbSnapshot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RdsDBSnapshotPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RdsDBSnapshotPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
