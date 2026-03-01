import 'package:pulumi/pulumi.dart' as pulumi;
import 'redshift_cluster_args.dart';
import 'redshift_cluster_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedshiftClusters_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redshiftCluster = new AzureNative.AwsConnector.RedshiftCluster("redshiftCluster", new()
///     {
///         Location = "jvkejlkfwoynldopbqhnt",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.RedshiftClusterPropertiesArgs
///         {
///             Arn = "egooffvtlbzyvp",
///             AwsAccountId = "lnlhkk",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRedshiftClusterPropertiesArgs
///             {
///                 AllowVersionUpgrade = true,
///                 AquaConfigurationStatus = "tegpcduavwdyuubx",
///                 AutomatedSnapshotRetentionPeriod = 25,
///                 AvailabilityZone = "pltpsjmmvhfmsecqjjweuxgloitbor",
///                 AvailabilityZoneRelocation = true,
///                 AvailabilityZoneRelocationStatus = "kcuxuluzsnuoag",
///                 Classic = true,
///                 ClusterIdentifier = "cxlflpabmavbfbcvsew",
///                 ClusterNamespaceArn = "vqeqeacmkdhmzgwd",
///                 ClusterParameterGroupName = "whpcckoms",
///                 ClusterSecurityGroups = new[]
///                 {
///                     "q",
///                 },
///                 ClusterSubnetGroupName = "abxmcpkzazgxtuoliedvam",
///                 ClusterType = "nvbzlybkkhuyklhhywuofwczf",
///                 ClusterVersion = "slmurdmhpiuakdwrqdthvlrpovqb",
///                 DbName = "jsbtuqgydkydraogl",
///                 DeferMaintenance = true,
///                 DeferMaintenanceDuration = 14,
///                 DeferMaintenanceEndTime = "oluxv",
///                 DeferMaintenanceIdentifier = "icu",
///                 DeferMaintenanceStartTime = "muevcssxlqrrmwxvazpsrq",
///                 DestinationRegion = "cnklawqwbweklmlrhr",
///                 ElasticIp = "ljpfzxzciavjuxk",
///                 Encrypted = true,
///                 Endpoint = new AzureNative.AwsConnector.Inputs.RedshiftClusterEndpointArgs
///                 {
///                     Address = "imgtktlniedocmgatpyzycge",
///                     Port = "gm",
///                 },
///                 EnhancedVpcRouting = true,
///                 HsmClientCertificateIdentifier = "uguhqzduujaf",
///                 HsmConfigurationIdentifier = "cznipmuxibdjvmteim",
///                 IamRoles = new[]
///                 {
///                     "qmy",
///                 },
///                 KmsKeyId = "afzaldvlyzmotwzdmydry",
///                 LoggingProperties = new AzureNative.AwsConnector.Inputs.LoggingPropertiesArgs
///                 {
///                     BucketName = "mozpscmusdfzk",
///                     S3KeyPrefix = "lffsxgand",
///                 },
///                 MaintenanceTrackName = "etjeimmqcipuyxiobrnsnd",
///                 ManageMasterPassword = true,
///                 ManualSnapshotRetentionPeriod = 15,
///                 MasterPasswordSecretArn = "upomdaqltagvwlqpyojnlmtme",
///                 MasterPasswordSecretKmsKeyId = "izpx",
///                 MasterUserPassword = "mftjs",
///                 MasterUsername = "wleeglygnhojusagxryuk",
///                 MultiAZ = true,
///                 NodeType = "cudgc",
///                 NumberOfNodes = 23,
///                 OwnerAccount = "drvv",
///                 Port = 8,
///                 PreferredMaintenanceWindow = "xpuhqwidzbn",
///                 PubliclyAccessible = true,
///                 ResourceAction = "nyhkwgrtf",
///                 RevisionTarget = "dreawjciiytkiuywtwttqyhojh",
///                 RotateEncryptionKey = true,
///                 SnapshotClusterIdentifier = "gu",
///                 SnapshotCopyGrantName = "mwuomnttvwhduluhwnfkiwkaeztbmd",
///                 SnapshotCopyManual = true,
///                 SnapshotCopyRetentionPeriod = 2,
///                 SnapshotIdentifier = "viproibmlhehvlszhxkqbbgl",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "znz",
///                         Value = "zawcpsgqfgrsjexrbo",
///                     },
///                 },
///                 VpcSecurityGroupIds = new[]
///                 {
///                     "grbkothiifmuwwrme",
///                 },
///             },
///             AwsRegion = "lablaxpspbxzhnbsrqz",
///             AwsSourceSchema = "zdadxraykcjparteiye",
///             AwsTags =
///             {
///                 { "key9665", "eyxhhlvcfit" },
///             },
///             PublicCloudConnectorsResourceId = "r",
///             PublicCloudResourceName = "ck",
///         },
///         ResourceGroupName = "rgredshiftCluster",
///         Tags =
///         {
///             { "key5296", "hllwcfzqbninv" },
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
/// 		_, err := awsconnector.NewRedshiftCluster(ctx, "redshiftCluster", &awsconnector.RedshiftClusterArgs{
/// 			Location: pulumi.String("jvkejlkfwoynldopbqhnt"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.RedshiftClusterPropertiesArgs{
/// 				Arn:          pulumi.String("egooffvtlbzyvp"),
/// 				AwsAccountId: pulumi.String("lnlhkk"),
/// 				AwsProperties: &awsconnector.AwsRedshiftClusterPropertiesArgs{
/// 					AllowVersionUpgrade:              pulumi.Bool(true),
/// 					AquaConfigurationStatus:          pulumi.String("tegpcduavwdyuubx"),
/// 					AutomatedSnapshotRetentionPeriod: pulumi.Int(25),
/// 					AvailabilityZone:                 pulumi.String("pltpsjmmvhfmsecqjjweuxgloitbor"),
/// 					AvailabilityZoneRelocation:       pulumi.Bool(true),
/// 					AvailabilityZoneRelocationStatus: pulumi.String("kcuxuluzsnuoag"),
/// 					Classic:                          pulumi.Bool(true),
/// 					ClusterIdentifier:                pulumi.String("cxlflpabmavbfbcvsew"),
/// 					ClusterNamespaceArn:              pulumi.String("vqeqeacmkdhmzgwd"),
/// 					ClusterParameterGroupName:        pulumi.String("whpcckoms"),
/// 					ClusterSecurityGroups: pulumi.StringArray{
/// 						pulumi.String("q"),
/// 					},
/// 					ClusterSubnetGroupName:     pulumi.String("abxmcpkzazgxtuoliedvam"),
/// 					ClusterType:                pulumi.String("nvbzlybkkhuyklhhywuofwczf"),
/// 					ClusterVersion:             pulumi.String("slmurdmhpiuakdwrqdthvlrpovqb"),
/// 					DbName:                     pulumi.String("jsbtuqgydkydraogl"),
/// 					DeferMaintenance:           pulumi.Bool(true),
/// 					DeferMaintenanceDuration:   pulumi.Int(14),
/// 					DeferMaintenanceEndTime:    pulumi.String("oluxv"),
/// 					DeferMaintenanceIdentifier: pulumi.String("icu"),
/// 					DeferMaintenanceStartTime:  pulumi.String("muevcssxlqrrmwxvazpsrq"),
/// 					DestinationRegion:          pulumi.String("cnklawqwbweklmlrhr"),
/// 					ElasticIp:                  pulumi.String("ljpfzxzciavjuxk"),
/// 					Encrypted:                  pulumi.Bool(true),
/// 					Endpoint: &awsconnector.RedshiftClusterEndpointArgs{
/// 						Address: pulumi.String("imgtktlniedocmgatpyzycge"),
/// 						Port:    pulumi.String("gm"),
/// 					},
/// 					EnhancedVpcRouting:             pulumi.Bool(true),
/// 					HsmClientCertificateIdentifier: pulumi.String("uguhqzduujaf"),
/// 					HsmConfigurationIdentifier:     pulumi.String("cznipmuxibdjvmteim"),
/// 					IamRoles: pulumi.StringArray{
/// 						pulumi.String("qmy"),
/// 					},
/// 					KmsKeyId: pulumi.String("afzaldvlyzmotwzdmydry"),
/// 					LoggingProperties: &awsconnector.LoggingPropertiesArgs{
/// 						BucketName:  pulumi.String("mozpscmusdfzk"),
/// 						S3KeyPrefix: pulumi.String("lffsxgand"),
/// 					},
/// 					MaintenanceTrackName:          pulumi.String("etjeimmqcipuyxiobrnsnd"),
/// 					ManageMasterPassword:          pulumi.Bool(true),
/// 					ManualSnapshotRetentionPeriod: pulumi.Int(15),
/// 					MasterPasswordSecretArn:       pulumi.String("upomdaqltagvwlqpyojnlmtme"),
/// 					MasterPasswordSecretKmsKeyId:  pulumi.String("izpx"),
/// 					MasterUserPassword:            pulumi.String("mftjs"),
/// 					MasterUsername:                pulumi.String("wleeglygnhojusagxryuk"),
/// 					MultiAZ:                       pulumi.Bool(true),
/// 					NodeType:                      pulumi.String("cudgc"),
/// 					NumberOfNodes:                 pulumi.Int(23),
/// 					OwnerAccount:                  pulumi.String("drvv"),
/// 					Port:                          pulumi.Int(8),
/// 					PreferredMaintenanceWindow:    pulumi.String("xpuhqwidzbn"),
/// 					PubliclyAccessible:            pulumi.Bool(true),
/// 					ResourceAction:                pulumi.String("nyhkwgrtf"),
/// 					RevisionTarget:                pulumi.String("dreawjciiytkiuywtwttqyhojh"),
/// 					RotateEncryptionKey:           pulumi.Bool(true),
/// 					SnapshotClusterIdentifier:     pulumi.String("gu"),
/// 					SnapshotCopyGrantName:         pulumi.String("mwuomnttvwhduluhwnfkiwkaeztbmd"),
/// 					SnapshotCopyManual:            pulumi.Bool(true),
/// 					SnapshotCopyRetentionPeriod:   pulumi.Int(2),
/// 					SnapshotIdentifier:            pulumi.String("viproibmlhehvlszhxkqbbgl"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("znz"),
/// 							Value: pulumi.String("zawcpsgqfgrsjexrbo"),
/// 						},
/// 					},
/// 					VpcSecurityGroupIds: pulumi.StringArray{
/// 						pulumi.String("grbkothiifmuwwrme"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("lablaxpspbxzhnbsrqz"),
/// 				AwsSourceSchema: pulumi.String("zdadxraykcjparteiye"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key9665": pulumi.String("eyxhhlvcfit"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("r"),
/// 				PublicCloudResourceName:         pulumi.String("ck"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgredshiftCluster"),
/// 			Tags: pulumi.StringMap{
/// 				"key5296": pulumi.String("hllwcfzqbninv"),
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
/// import com.pulumi.azurenative.awsconnector.RedshiftCluster;
/// import com.pulumi.azurenative.awsconnector.RedshiftClusterArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RedshiftClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRedshiftClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RedshiftClusterEndpointArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LoggingPropertiesArgs;
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
///         var redshiftCluster = new RedshiftCluster("redshiftCluster", RedshiftClusterArgs.builder()
///             .location("jvkejlkfwoynldopbqhnt")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(RedshiftClusterPropertiesArgs.builder()
///                 .arn("egooffvtlbzyvp")
///                 .awsAccountId("lnlhkk")
///                 .awsProperties(AwsRedshiftClusterPropertiesArgs.builder()
///                     .allowVersionUpgrade(true)
///                     .aquaConfigurationStatus("tegpcduavwdyuubx")
///                     .automatedSnapshotRetentionPeriod(25)
///                     .availabilityZone("pltpsjmmvhfmsecqjjweuxgloitbor")
///                     .availabilityZoneRelocation(true)
///                     .availabilityZoneRelocationStatus("kcuxuluzsnuoag")
///                     .classic(true)
///                     .clusterIdentifier("cxlflpabmavbfbcvsew")
///                     .clusterNamespaceArn("vqeqeacmkdhmzgwd")
///                     .clusterParameterGroupName("whpcckoms")
///                     .clusterSecurityGroups("q")
///                     .clusterSubnetGroupName("abxmcpkzazgxtuoliedvam")
///                     .clusterType("nvbzlybkkhuyklhhywuofwczf")
///                     .clusterVersion("slmurdmhpiuakdwrqdthvlrpovqb")
///                     .dbName("jsbtuqgydkydraogl")
///                     .deferMaintenance(true)
///                     .deferMaintenanceDuration(14)
///                     .deferMaintenanceEndTime("oluxv")
///                     .deferMaintenanceIdentifier("icu")
///                     .deferMaintenanceStartTime("muevcssxlqrrmwxvazpsrq")
///                     .destinationRegion("cnklawqwbweklmlrhr")
///                     .elasticIp("ljpfzxzciavjuxk")
///                     .encrypted(true)
///                     .endpoint(RedshiftClusterEndpointArgs.builder()
///                         .address("imgtktlniedocmgatpyzycge")
///                         .port("gm")
///                         .build())
///                     .enhancedVpcRouting(true)
///                     .hsmClientCertificateIdentifier("uguhqzduujaf")
///                     .hsmConfigurationIdentifier("cznipmuxibdjvmteim")
///                     .iamRoles("qmy")
///                     .kmsKeyId("afzaldvlyzmotwzdmydry")
///                     .loggingProperties(LoggingPropertiesArgs.builder()
///                         .bucketName("mozpscmusdfzk")
///                         .s3KeyPrefix("lffsxgand")
///                         .build())
///                     .maintenanceTrackName("etjeimmqcipuyxiobrnsnd")
///                     .manageMasterPassword(true)
///                     .manualSnapshotRetentionPeriod(15)
///                     .masterPasswordSecretArn("upomdaqltagvwlqpyojnlmtme")
///                     .masterPasswordSecretKmsKeyId("izpx")
///                     .masterUserPassword("mftjs")
///                     .masterUsername("wleeglygnhojusagxryuk")
///                     .multiAZ(true)
///                     .nodeType("cudgc")
///                     .numberOfNodes(23)
///                     .ownerAccount("drvv")
///                     .port(8)
///                     .preferredMaintenanceWindow("xpuhqwidzbn")
///                     .publiclyAccessible(true)
///                     .resourceAction("nyhkwgrtf")
///                     .revisionTarget("dreawjciiytkiuywtwttqyhojh")
///                     .rotateEncryptionKey(true)
///                     .snapshotClusterIdentifier("gu")
///                     .snapshotCopyGrantName("mwuomnttvwhduluhwnfkiwkaeztbmd")
///                     .snapshotCopyManual(true)
///                     .snapshotCopyRetentionPeriod(2)
///                     .snapshotIdentifier("viproibmlhehvlszhxkqbbgl")
///                     .tags(TagArgs.builder()
///                         .key("znz")
///                         .value("zawcpsgqfgrsjexrbo")
///                         .build())
///                     .vpcSecurityGroupIds("grbkothiifmuwwrme")
///                     .build())
///                 .awsRegion("lablaxpspbxzhnbsrqz")
///                 .awsSourceSchema("zdadxraykcjparteiye")
///                 .awsTags(Map.of("key9665", "eyxhhlvcfit"))
///                 .publicCloudConnectorsResourceId("r")
///                 .publicCloudResourceName("ck")
///                 .build())
///             .resourceGroupName("rgredshiftCluster")
///             .tags(Map.of("key5296", "hllwcfzqbninv"))
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
/// const redshiftCluster = new azure_native.awsconnector.RedshiftCluster("redshiftCluster", {
///     location: "jvkejlkfwoynldopbqhnt",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "egooffvtlbzyvp",
///         awsAccountId: "lnlhkk",
///         awsProperties: {
///             allowVersionUpgrade: true,
///             aquaConfigurationStatus: "tegpcduavwdyuubx",
///             automatedSnapshotRetentionPeriod: 25,
///             availabilityZone: "pltpsjmmvhfmsecqjjweuxgloitbor",
///             availabilityZoneRelocation: true,
///             availabilityZoneRelocationStatus: "kcuxuluzsnuoag",
///             classic: true,
///             clusterIdentifier: "cxlflpabmavbfbcvsew",
///             clusterNamespaceArn: "vqeqeacmkdhmzgwd",
///             clusterParameterGroupName: "whpcckoms",
///             clusterSecurityGroups: ["q"],
///             clusterSubnetGroupName: "abxmcpkzazgxtuoliedvam",
///             clusterType: "nvbzlybkkhuyklhhywuofwczf",
///             clusterVersion: "slmurdmhpiuakdwrqdthvlrpovqb",
///             dbName: "jsbtuqgydkydraogl",
///             deferMaintenance: true,
///             deferMaintenanceDuration: 14,
///             deferMaintenanceEndTime: "oluxv",
///             deferMaintenanceIdentifier: "icu",
///             deferMaintenanceStartTime: "muevcssxlqrrmwxvazpsrq",
///             destinationRegion: "cnklawqwbweklmlrhr",
///             elasticIp: "ljpfzxzciavjuxk",
///             encrypted: true,
///             endpoint: {
///                 address: "imgtktlniedocmgatpyzycge",
///                 port: "gm",
///             },
///             enhancedVpcRouting: true,
///             hsmClientCertificateIdentifier: "uguhqzduujaf",
///             hsmConfigurationIdentifier: "cznipmuxibdjvmteim",
///             iamRoles: ["qmy"],
///             kmsKeyId: "afzaldvlyzmotwzdmydry",
///             loggingProperties: {
///                 bucketName: "mozpscmusdfzk",
///                 s3KeyPrefix: "lffsxgand",
///             },
///             maintenanceTrackName: "etjeimmqcipuyxiobrnsnd",
///             manageMasterPassword: true,
///             manualSnapshotRetentionPeriod: 15,
///             masterPasswordSecretArn: "upomdaqltagvwlqpyojnlmtme",
///             masterPasswordSecretKmsKeyId: "izpx",
///             masterUserPassword: "mftjs",
///             masterUsername: "wleeglygnhojusagxryuk",
///             multiAZ: true,
///             nodeType: "cudgc",
///             numberOfNodes: 23,
///             ownerAccount: "drvv",
///             port: 8,
///             preferredMaintenanceWindow: "xpuhqwidzbn",
///             publiclyAccessible: true,
///             resourceAction: "nyhkwgrtf",
///             revisionTarget: "dreawjciiytkiuywtwttqyhojh",
///             rotateEncryptionKey: true,
///             snapshotClusterIdentifier: "gu",
///             snapshotCopyGrantName: "mwuomnttvwhduluhwnfkiwkaeztbmd",
///             snapshotCopyManual: true,
///             snapshotCopyRetentionPeriod: 2,
///             snapshotIdentifier: "viproibmlhehvlszhxkqbbgl",
///             tags: [{
///                 key: "znz",
///                 value: "zawcpsgqfgrsjexrbo",
///             }],
///             vpcSecurityGroupIds: ["grbkothiifmuwwrme"],
///         },
///         awsRegion: "lablaxpspbxzhnbsrqz",
///         awsSourceSchema: "zdadxraykcjparteiye",
///         awsTags: {
///             key9665: "eyxhhlvcfit",
///         },
///         publicCloudConnectorsResourceId: "r",
///         publicCloudResourceName: "ck",
///     },
///     resourceGroupName: "rgredshiftCluster",
///     tags: {
///         key5296: "hllwcfzqbninv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// redshift_cluster = azure_native.awsconnector.RedshiftCluster("redshiftCluster",
///     location="jvkejlkfwoynldopbqhnt",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "egooffvtlbzyvp",
///         "aws_account_id": "lnlhkk",
///         "aws_properties": {
///             "allow_version_upgrade": True,
///             "aqua_configuration_status": "tegpcduavwdyuubx",
///             "automated_snapshot_retention_period": 25,
///             "availability_zone": "pltpsjmmvhfmsecqjjweuxgloitbor",
///             "availability_zone_relocation": True,
///             "availability_zone_relocation_status": "kcuxuluzsnuoag",
///             "classic": True,
///             "cluster_identifier": "cxlflpabmavbfbcvsew",
///             "cluster_namespace_arn": "vqeqeacmkdhmzgwd",
///             "cluster_parameter_group_name": "whpcckoms",
///             "cluster_security_groups": ["q"],
///             "cluster_subnet_group_name": "abxmcpkzazgxtuoliedvam",
///             "cluster_type": "nvbzlybkkhuyklhhywuofwczf",
///             "cluster_version": "slmurdmhpiuakdwrqdthvlrpovqb",
///             "db_name": "jsbtuqgydkydraogl",
///             "defer_maintenance": True,
///             "defer_maintenance_duration": 14,
///             "defer_maintenance_end_time": "oluxv",
///             "defer_maintenance_identifier": "icu",
///             "defer_maintenance_start_time": "muevcssxlqrrmwxvazpsrq",
///             "destination_region": "cnklawqwbweklmlrhr",
///             "elastic_ip": "ljpfzxzciavjuxk",
///             "encrypted": True,
///             "endpoint": {
///                 "address": "imgtktlniedocmgatpyzycge",
///                 "port": "gm",
///             },
///             "enhanced_vpc_routing": True,
///             "hsm_client_certificate_identifier": "uguhqzduujaf",
///             "hsm_configuration_identifier": "cznipmuxibdjvmteim",
///             "iam_roles": ["qmy"],
///             "kms_key_id": "afzaldvlyzmotwzdmydry",
///             "logging_properties": {
///                 "bucket_name": "mozpscmusdfzk",
///                 "s3_key_prefix": "lffsxgand",
///             },
///             "maintenance_track_name": "etjeimmqcipuyxiobrnsnd",
///             "manage_master_password": True,
///             "manual_snapshot_retention_period": 15,
///             "master_password_secret_arn": "upomdaqltagvwlqpyojnlmtme",
///             "master_password_secret_kms_key_id": "izpx",
///             "master_user_password": "mftjs",
///             "master_username": "wleeglygnhojusagxryuk",
///             "multi_az": True,
///             "node_type": "cudgc",
///             "number_of_nodes": 23,
///             "owner_account": "drvv",
///             "port": 8,
///             "preferred_maintenance_window": "xpuhqwidzbn",
///             "publicly_accessible": True,
///             "resource_action": "nyhkwgrtf",
///             "revision_target": "dreawjciiytkiuywtwttqyhojh",
///             "rotate_encryption_key": True,
///             "snapshot_cluster_identifier": "gu",
///             "snapshot_copy_grant_name": "mwuomnttvwhduluhwnfkiwkaeztbmd",
///             "snapshot_copy_manual": True,
///             "snapshot_copy_retention_period": 2,
///             "snapshot_identifier": "viproibmlhehvlszhxkqbbgl",
///             "tags": [{
///                 "key": "znz",
///                 "value": "zawcpsgqfgrsjexrbo",
///             }],
///             "vpc_security_group_ids": ["grbkothiifmuwwrme"],
///         },
///         "aws_region": "lablaxpspbxzhnbsrqz",
///         "aws_source_schema": "zdadxraykcjparteiye",
///         "aws_tags": {
///             "key9665": "eyxhhlvcfit",
///         },
///         "public_cloud_connectors_resource_id": "r",
///         "public_cloud_resource_name": "ck",
///     },
///     resource_group_name="rgredshiftCluster",
///     tags={
///         "key5296": "hllwcfzqbninv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   redshiftCluster:
///     type: azure-native:awsconnector:RedshiftCluster
///     properties:
///       location: jvkejlkfwoynldopbqhnt
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: egooffvtlbzyvp
///         awsAccountId: lnlhkk
///         awsProperties:
///           allowVersionUpgrade: true
///           aquaConfigurationStatus: tegpcduavwdyuubx
///           automatedSnapshotRetentionPeriod: 25
///           availabilityZone: pltpsjmmvhfmsecqjjweuxgloitbor
///           availabilityZoneRelocation: true
///           availabilityZoneRelocationStatus: kcuxuluzsnuoag
///           classic: true
///           clusterIdentifier: cxlflpabmavbfbcvsew
///           clusterNamespaceArn: vqeqeacmkdhmzgwd
///           clusterParameterGroupName: whpcckoms
///           clusterSecurityGroups:
///             - q
///           clusterSubnetGroupName: abxmcpkzazgxtuoliedvam
///           clusterType: nvbzlybkkhuyklhhywuofwczf
///           clusterVersion: slmurdmhpiuakdwrqdthvlrpovqb
///           dbName: jsbtuqgydkydraogl
///           deferMaintenance: true
///           deferMaintenanceDuration: 14
///           deferMaintenanceEndTime: oluxv
///           deferMaintenanceIdentifier: icu
///           deferMaintenanceStartTime: muevcssxlqrrmwxvazpsrq
///           destinationRegion: cnklawqwbweklmlrhr
///           elasticIp: ljpfzxzciavjuxk
///           encrypted: true
///           endpoint:
///             address: imgtktlniedocmgatpyzycge
///             port: gm
///           enhancedVpcRouting: true
///           hsmClientCertificateIdentifier: uguhqzduujaf
///           hsmConfigurationIdentifier: cznipmuxibdjvmteim
///           iamRoles:
///             - qmy
///           kmsKeyId: afzaldvlyzmotwzdmydry
///           loggingProperties:
///             bucketName: mozpscmusdfzk
///             s3KeyPrefix: lffsxgand
///           maintenanceTrackName: etjeimmqcipuyxiobrnsnd
///           manageMasterPassword: true
///           manualSnapshotRetentionPeriod: 15
///           masterPasswordSecretArn: upomdaqltagvwlqpyojnlmtme
///           masterPasswordSecretKmsKeyId: izpx
///           masterUserPassword: mftjs
///           masterUsername: wleeglygnhojusagxryuk
///           multiAZ: true
///           nodeType: cudgc
///           numberOfNodes: 23
///           ownerAccount: drvv
///           port: 8
///           preferredMaintenanceWindow: xpuhqwidzbn
///           publiclyAccessible: true
///           resourceAction: nyhkwgrtf
///           revisionTarget: dreawjciiytkiuywtwttqyhojh
///           rotateEncryptionKey: true
///           snapshotClusterIdentifier: gu
///           snapshotCopyGrantName: mwuomnttvwhduluhwnfkiwkaeztbmd
///           snapshotCopyManual: true
///           snapshotCopyRetentionPeriod: 2
///           snapshotIdentifier: viproibmlhehvlszhxkqbbgl
///           tags:
///             - key: znz
///               value: zawcpsgqfgrsjexrbo
///           vpcSecurityGroupIds:
///             - grbkothiifmuwwrme
///         awsRegion: lablaxpspbxzhnbsrqz
///         awsSourceSchema: zdadxraykcjparteiye
///         awsTags:
///           key9665: eyxhhlvcfit
///         publicCloudConnectorsResourceId: r
///         publicCloudResourceName: ck
///       resourceGroupName: rgredshiftCluster
///       tags:
///         key5296: hllwcfzqbninv
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
/// $ pulumi import azure-native:awsconnector:RedshiftCluster sjjujbtiyilr /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/redshiftClusters/{name}
/// ```
class RedshiftCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<RedshiftClusterPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RedshiftCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RedshiftCluster]. {@macro pulumi_awsconnector_redshift_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RedshiftCluster(
    String name, {
    RedshiftClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:RedshiftCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<RedshiftClusterPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
