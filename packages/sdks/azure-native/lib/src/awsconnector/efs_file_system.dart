import 'package:pulumi/pulumi.dart' as pulumi;
import 'efs_file_system_args.dart';
import 'efs_file_system_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EfsFileSystems_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var efsFileSystem = new AzureNative.AwsConnector.EfsFileSystem("efsFileSystem", new()
///     {
///         Location = "phxoujlvsqavkckotussgpnjgexvq",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.EfsFileSystemPropertiesArgs
///         {
///             Arn = "pewusdrkpcuvxtmjhvzmakefatinq",
///             AwsAccountId = "jkixa",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEfsFileSystemPropertiesArgs
///             {
///                 Arn = "hptcgar",
///                 AvailabilityZoneName = "wnn",
///                 BackupPolicy = new AzureNative.AwsConnector.Inputs.BackupPolicyArgs
///                 {
///                     Status = AzureNative.AwsConnector.BackupPolicyStatus.DISABLED,
///                 },
///                 BypassPolicyLockoutSafetyCheck = true,
///                 Encrypted = true,
///                 FileSystemId = "kublwmniiobukjozju",
///                 FileSystemProtection = new AzureNative.AwsConnector.Inputs.FileSystemProtectionArgs
///                 {
///                     ReplicationOverwriteProtection = AzureNative.AwsConnector.FileSystemProtectionReplicationOverwriteProtection.DISABLED,
///                 },
///                 FileSystemTags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ElasticFileSystemTagArgs
///                     {
///                         Key = "glyisjhra",
///                         Value = "gcz",
///                     },
///                 },
///                 KmsKeyId = "qglx",
///                 LifecyclePolicies = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.LifecyclePolicyArgs
///                     {
///                         TransitionToArchive = "xsnpjovpiazmhefijlflijjycbugv",
///                         TransitionToIA = "lslpvdwwgc",
///                         TransitionToPrimaryStorageClass = "migoeoowupavauvyrljegu",
///                     },
///                 },
///                 PerformanceMode = "gtcuhloqhqjvztxoqvnzhwejwqg",
///                 ProvisionedThroughputInMibps = 6,
///                 ReplicationConfiguration = null,
///                 ThroughputMode = "qiroscdbdjqkhezgxhfjiqd",
///             },
///             AwsRegion = "quxdhbvdpdedfzbfp",
///             AwsSourceSchema = "txcarqgbqzzvg",
///             AwsTags =
///             {
///                 { "key3062", "onkfpsohoske" },
///             },
///             PublicCloudConnectorsResourceId = "mhovamuukkqswmro",
///             PublicCloudResourceName = "nhvnekfp",
///         },
///         ResourceGroupName = "rgefsFileSystem",
///         Tags =
///         {
///             { "key8058", "u" },
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
/// 		_, err := awsconnector.NewEfsFileSystem(ctx, "efsFileSystem", &awsconnector.EfsFileSystemArgs{
/// 			Location: pulumi.String("phxoujlvsqavkckotussgpnjgexvq"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.EfsFileSystemPropertiesArgs{
/// 				Arn:          pulumi.String("pewusdrkpcuvxtmjhvzmakefatinq"),
/// 				AwsAccountId: pulumi.String("jkixa"),
/// 				AwsProperties: &awsconnector.AwsEfsFileSystemPropertiesArgs{
/// 					Arn:                  pulumi.String("hptcgar"),
/// 					AvailabilityZoneName: pulumi.String("wnn"),
/// 					BackupPolicy: &awsconnector.BackupPolicyArgs{
/// 						Status: pulumi.String(awsconnector.BackupPolicyStatusDISABLED),
/// 					},
/// 					BypassPolicyLockoutSafetyCheck: pulumi.Bool(true),
/// 					Encrypted:                      pulumi.Bool(true),
/// 					FileSystemId:                   pulumi.String("kublwmniiobukjozju"),
/// 					FileSystemProtection: &awsconnector.FileSystemProtectionArgs{
/// 						ReplicationOverwriteProtection: pulumi.String(awsconnector.FileSystemProtectionReplicationOverwriteProtectionDISABLED),
/// 					},
/// 					FileSystemTags: awsconnector.ElasticFileSystemTagArray{
/// 						&awsconnector.ElasticFileSystemTagArgs{
/// 							Key:   pulumi.String("glyisjhra"),
/// 							Value: pulumi.String("gcz"),
/// 						},
/// 					},
/// 					KmsKeyId: pulumi.String("qglx"),
/// 					LifecyclePolicies: awsconnector.LifecyclePolicyArray{
/// 						&awsconnector.LifecyclePolicyArgs{
/// 							TransitionToArchive:             pulumi.String("xsnpjovpiazmhefijlflijjycbugv"),
/// 							TransitionToIA:                  pulumi.String("lslpvdwwgc"),
/// 							TransitionToPrimaryStorageClass: pulumi.String("migoeoowupavauvyrljegu"),
/// 						},
/// 					},
/// 					PerformanceMode:              pulumi.String("gtcuhloqhqjvztxoqvnzhwejwqg"),
/// 					ProvisionedThroughputInMibps: pulumi.Int(6),
/// 					ReplicationConfiguration:     &awsconnector.ReplicationConfigurationArgs{},
/// 					ThroughputMode:               pulumi.String("qiroscdbdjqkhezgxhfjiqd"),
/// 				},
/// 				AwsRegion:       pulumi.String("quxdhbvdpdedfzbfp"),
/// 				AwsSourceSchema: pulumi.String("txcarqgbqzzvg"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3062": pulumi.String("onkfpsohoske"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("mhovamuukkqswmro"),
/// 				PublicCloudResourceName:         pulumi.String("nhvnekfp"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgefsFileSystem"),
/// 			Tags: pulumi.StringMap{
/// 				"key8058": pulumi.String("u"),
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
/// import com.pulumi.azurenative.awsconnector.EfsFileSystem;
/// import com.pulumi.azurenative.awsconnector.EfsFileSystemArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EfsFileSystemPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEfsFileSystemPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.BackupPolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.FileSystemProtectionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ReplicationConfigurationArgs;
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
///         var efsFileSystem = new EfsFileSystem("efsFileSystem", EfsFileSystemArgs.builder()
///             .location("phxoujlvsqavkckotussgpnjgexvq")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(EfsFileSystemPropertiesArgs.builder()
///                 .arn("pewusdrkpcuvxtmjhvzmakefatinq")
///                 .awsAccountId("jkixa")
///                 .awsProperties(AwsEfsFileSystemPropertiesArgs.builder()
///                     .arn("hptcgar")
///                     .availabilityZoneName("wnn")
///                     .backupPolicy(BackupPolicyArgs.builder()
///                         .status("DISABLED")
///                         .build())
///                     .bypassPolicyLockoutSafetyCheck(true)
///                     .encrypted(true)
///                     .fileSystemId("kublwmniiobukjozju")
///                     .fileSystemProtection(FileSystemProtectionArgs.builder()
///                         .replicationOverwriteProtection("DISABLED")
///                         .build())
///                     .fileSystemTags(ElasticFileSystemTagArgs.builder()
///                         .key("glyisjhra")
///                         .value("gcz")
///                         .build())
///                     .kmsKeyId("qglx")
///                     .lifecyclePolicies(LifecyclePolicyArgs.builder()
///                         .transitionToArchive("xsnpjovpiazmhefijlflijjycbugv")
///                         .transitionToIA("lslpvdwwgc")
///                         .transitionToPrimaryStorageClass("migoeoowupavauvyrljegu")
///                         .build())
///                     .performanceMode("gtcuhloqhqjvztxoqvnzhwejwqg")
///                     .provisionedThroughputInMibps(6)
///                     .replicationConfiguration(ReplicationConfigurationArgs.builder()
///                         .build())
///                     .throughputMode("qiroscdbdjqkhezgxhfjiqd")
///                     .build())
///                 .awsRegion("quxdhbvdpdedfzbfp")
///                 .awsSourceSchema("txcarqgbqzzvg")
///                 .awsTags(Map.of("key3062", "onkfpsohoske"))
///                 .publicCloudConnectorsResourceId("mhovamuukkqswmro")
///                 .publicCloudResourceName("nhvnekfp")
///                 .build())
///             .resourceGroupName("rgefsFileSystem")
///             .tags(Map.of("key8058", "u"))
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
/// const efsFileSystem = new azure_native.awsconnector.EfsFileSystem("efsFileSystem", {
///     location: "phxoujlvsqavkckotussgpnjgexvq",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "pewusdrkpcuvxtmjhvzmakefatinq",
///         awsAccountId: "jkixa",
///         awsProperties: {
///             arn: "hptcgar",
///             availabilityZoneName: "wnn",
///             backupPolicy: {
///                 status: azure_native.awsconnector.BackupPolicyStatus.DISABLED,
///             },
///             bypassPolicyLockoutSafetyCheck: true,
///             encrypted: true,
///             fileSystemId: "kublwmniiobukjozju",
///             fileSystemProtection: {
///                 replicationOverwriteProtection: azure_native.awsconnector.FileSystemProtectionReplicationOverwriteProtection.DISABLED,
///             },
///             fileSystemTags: [{
///                 key: "glyisjhra",
///                 value: "gcz",
///             }],
///             kmsKeyId: "qglx",
///             lifecyclePolicies: [{
///                 transitionToArchive: "xsnpjovpiazmhefijlflijjycbugv",
///                 transitionToIA: "lslpvdwwgc",
///                 transitionToPrimaryStorageClass: "migoeoowupavauvyrljegu",
///             }],
///             performanceMode: "gtcuhloqhqjvztxoqvnzhwejwqg",
///             provisionedThroughputInMibps: 6,
///             replicationConfiguration: {},
///             throughputMode: "qiroscdbdjqkhezgxhfjiqd",
///         },
///         awsRegion: "quxdhbvdpdedfzbfp",
///         awsSourceSchema: "txcarqgbqzzvg",
///         awsTags: {
///             key3062: "onkfpsohoske",
///         },
///         publicCloudConnectorsResourceId: "mhovamuukkqswmro",
///         publicCloudResourceName: "nhvnekfp",
///     },
///     resourceGroupName: "rgefsFileSystem",
///     tags: {
///         key8058: "u",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// efs_file_system = azure_native.awsconnector.EfsFileSystem("efsFileSystem",
///     location="phxoujlvsqavkckotussgpnjgexvq",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "pewusdrkpcuvxtmjhvzmakefatinq",
///         "aws_account_id": "jkixa",
///         "aws_properties": {
///             "arn": "hptcgar",
///             "availability_zone_name": "wnn",
///             "backup_policy": {
///                 "status": azure_native.awsconnector.BackupPolicyStatus.DISABLED,
///             },
///             "bypass_policy_lockout_safety_check": True,
///             "encrypted": True,
///             "file_system_id": "kublwmniiobukjozju",
///             "file_system_protection": {
///                 "replication_overwrite_protection": azure_native.awsconnector.FileSystemProtectionReplicationOverwriteProtection.DISABLED,
///             },
///             "file_system_tags": [{
///                 "key": "glyisjhra",
///                 "value": "gcz",
///             }],
///             "kms_key_id": "qglx",
///             "lifecycle_policies": [{
///                 "transition_to_archive": "xsnpjovpiazmhefijlflijjycbugv",
///                 "transition_to_ia": "lslpvdwwgc",
///                 "transition_to_primary_storage_class": "migoeoowupavauvyrljegu",
///             }],
///             "performance_mode": "gtcuhloqhqjvztxoqvnzhwejwqg",
///             "provisioned_throughput_in_mibps": 6,
///             "replication_configuration": {},
///             "throughput_mode": "qiroscdbdjqkhezgxhfjiqd",
///         },
///         "aws_region": "quxdhbvdpdedfzbfp",
///         "aws_source_schema": "txcarqgbqzzvg",
///         "aws_tags": {
///             "key3062": "onkfpsohoske",
///         },
///         "public_cloud_connectors_resource_id": "mhovamuukkqswmro",
///         "public_cloud_resource_name": "nhvnekfp",
///     },
///     resource_group_name="rgefsFileSystem",
///     tags={
///         "key8058": "u",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   efsFileSystem:
///     type: azure-native:awsconnector:EfsFileSystem
///     properties:
///       location: phxoujlvsqavkckotussgpnjgexvq
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: pewusdrkpcuvxtmjhvzmakefatinq
///         awsAccountId: jkixa
///         awsProperties:
///           arn: hptcgar
///           availabilityZoneName: wnn
///           backupPolicy:
///             status: DISABLED
///           bypassPolicyLockoutSafetyCheck: true
///           encrypted: true
///           fileSystemId: kublwmniiobukjozju
///           fileSystemProtection:
///             replicationOverwriteProtection: DISABLED
///           fileSystemTags:
///             - key: glyisjhra
///               value: gcz
///           kmsKeyId: qglx
///           lifecyclePolicies:
///             - transitionToArchive: xsnpjovpiazmhefijlflijjycbugv
///               transitionToIA: lslpvdwwgc
///               transitionToPrimaryStorageClass: migoeoowupavauvyrljegu
///           performanceMode: gtcuhloqhqjvztxoqvnzhwejwqg
///           provisionedThroughputInMibps: 6
///           replicationConfiguration: {}
///           throughputMode: qiroscdbdjqkhezgxhfjiqd
///         awsRegion: quxdhbvdpdedfzbfp
///         awsSourceSchema: txcarqgbqzzvg
///         awsTags:
///           key3062: onkfpsohoske
///         publicCloudConnectorsResourceId: mhovamuukkqswmro
///         publicCloudResourceName: nhvnekfp
///       resourceGroupName: rgefsFileSystem
///       tags:
///         key8058: u
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
/// $ pulumi import azure-native:awsconnector:EfsFileSystem kkynvzrhvzwbeiqixzxobskb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/efsFileSystems/{name}
/// ```
class EfsFileSystem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<EfsFileSystemPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EfsFileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EfsFileSystem]. {@macro pulumi_awsconnector_efs_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EfsFileSystem(
    String name, {
    EfsFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:EfsFileSystem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EfsFileSystemPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
