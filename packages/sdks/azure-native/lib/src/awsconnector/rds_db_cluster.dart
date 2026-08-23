import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_db_cluster_args.dart';
import 'rds_dbcluster_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RdsDbClusters_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rdsDbCluster = new AzureNative.AwsConnector.RdsDbCluster("rdsDbCluster", new()
///     {
///         Location = "di",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.RdsDBClusterPropertiesArgs
///         {
///             Arn = "lllohvlgyg",
///             AwsAccountId = "rpxoebfhnpwagqqgk",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRdsDBClusterPropertiesArgs
///             {
///                 AllocatedStorage = 12,
///                 AssociatedRoles = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.DBClusterRoleArgs
///                     {
///                         FeatureName = "yupxlegnstbpoght",
///                         RoleArn = "pcilcosyud",
///                     },
///                 },
///                 AutoMinorVersionUpgrade = true,
///                 AvailabilityZones = new[]
///                 {
///                     "xbabqekpowoz",
///                 },
///                 BacktrackWindow = 18,
///                 BackupRetentionPeriod = 11,
///                 CopyTagsToSnapshot = true,
///                 DatabaseName = "ttn",
///                 DbClusterArn = "zdohcaiqsymzj",
///                 DbClusterIdentifier = "euvcyppvvutbntragfptjnmzhg",
///                 DbClusterInstanceClass = "suufjmxymxlrberbqtknmsvzrsajw",
///                 DbClusterParameterGroupName = "sokiordelmtviobobxrdsw",
///                 DbClusterResourceId = "vnwlcfxokdrjitagoefxrsf",
///                 DbInstanceParameterGroupName = "cwhdxixjtyfziflvod",
///                 DbSubnetGroupName = "ajeipefwih",
///                 DbSystemId = "exockxknyjqihmhxjuin",
///                 DeletionProtection = true,
///                 Domain = "qzpcprovksxsiuithxqu",
///                 DomainIAMRoleName = "psubmwhsowirjcnv",
///                 EnableCloudwatchLogsExports = new[]
///                 {
///                     "lytydxlnpduhnvmifkneiu",
///                 },
///                 EnableGlobalWriteForwarding = true,
///                 EnableHttpEndpoint = true,
///                 EnableIAMDatabaseAuthentication = true,
///                 Endpoint = new AzureNative.AwsConnector.Inputs.RdsDbClusterEndpointArgs
///                 {
///                     Address = "pwliordavkhwfklfzwxic",
///                     Port = "nagvki",
///                 },
///                 Engine = "cehuc",
///                 EngineMode = "iokki",
///                 EngineVersion = "ziindzjpzdrbcmtougdffweh",
///                 GlobalClusterIdentifier = "jqoiwozrdbnumywlieglbpzzx",
///                 Iops = 26,
///                 KmsKeyId = "vqllbldbdhvsyon",
///                 ManageMasterUserPassword = true,
///                 MasterUserPassword = "qscygehnqvqzynuuqqbehubstti",
///                 MasterUserSecret = new AzureNative.AwsConnector.Inputs.MasterUserSecretArgs
///                 {
///                     KmsKeyId = "vsghhhqurh",
///                     SecretArn = "ibmtek",
///                 },
///                 MasterUsername = "lusozmpnihhahsioubedg",
///                 MonitoringInterval = 17,
///                 MonitoringRoleArn = "pqckluqmxqazvvi",
///                 NetworkType = "mnsuyqfkeqg",
///                 PerformanceInsightsEnabled = true,
///                 PerformanceInsightsKmsKeyId = "qr",
///                 PerformanceInsightsRetentionPeriod = 2,
///                 Port = 23,
///                 PreferredBackupWindow = "shjtwjtugyols",
///                 PreferredMaintenanceWindow = "fuuieyvfhfcanzgutwcdbtbenk",
///                 PubliclyAccessible = true,
///                 ReadEndpoint = new AzureNative.AwsConnector.Inputs.ReadEndpointArgs
///                 {
///                     Address = "ca",
///                 },
///                 ReplicationSourceIdentifier = "sdohltrpdqsszpptdh",
///                 RestoreToTime = "srbuhavl",
///                 RestoreType = "tnsdjgvzcnnsjxw",
///                 ScalingConfiguration = new AzureNative.AwsConnector.Inputs.ScalingConfigurationArgs
///                 {
///                     AutoPause = true,
///                     MaxCapacity = 3,
///                     MinCapacity = 5,
///                     SecondsBeforeTimeout = 28,
///                     SecondsUntilAutoPause = 25,
///                     TimeoutAction = "cqgyqshpkcyblfsqmujyxpfiyv",
///                 },
///                 ServerlessV2ScalingConfiguration = new AzureNative.AwsConnector.Inputs.ServerlessV2ScalingConfigurationArgs
///                 {
///                     MaxCapacity = 23,
///                     MinCapacity = 16,
///                 },
///                 SnapshotIdentifier = "vqowgxcqbclzjexvyigvdzlpcdluvv",
///                 SourceDBClusterIdentifier = "jtvnbddzyqf",
///                 SourceRegion = "vrzpezvwoszraxdi",
///                 StorageEncrypted = true,
///                 StorageThroughput = 6,
///                 StorageType = "iiwkeunemifyewevpcvcrbs",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "lsvdhwafvfrtobfvrwigfodughve",
///                         Value = "szbfittyghldzvnflsglc",
///                     },
///                 },
///                 UseLatestRestorableTime = true,
///                 VpcSecurityGroupIds = new[]
///                 {
///                     "jdkxpjhsibvgvorizsuzta",
///                 },
///             },
///             AwsRegion = "fulsvqpnagyrsirhnuxdsppl",
///             AwsSourceSchema = "wrucexqlrnssoxvtczytcslheth",
///             AwsTags =
///             {
///                 { "key4409", "weab" },
///             },
///             PublicCloudConnectorsResourceId = "pexhjqkygfiozfsvo",
///             PublicCloudResourceName = "quyqfarecht",
///         },
///         ResourceGroupName = "rgrdsDBCluster",
///         Tags =
///         {
///             { "key1769", "winoruhwyphtmoskehihj" },
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
/// 		_, err := awsconnector.NewRdsDbCluster(ctx, "rdsDbCluster", &awsconnector.RdsDbClusterArgs{
/// 			Location: pulumi.String("di"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.RdsDBClusterPropertiesArgs{
/// 				Arn:          pulumi.String("lllohvlgyg"),
/// 				AwsAccountId: pulumi.String("rpxoebfhnpwagqqgk"),
/// 				AwsProperties: &awsconnector.AwsRdsDBClusterPropertiesArgs{
/// 					AllocatedStorage: pulumi.Int(12),
/// 					AssociatedRoles: awsconnector.DBClusterRoleArray{
/// 						&awsconnector.DBClusterRoleArgs{
/// 							FeatureName: pulumi.String("yupxlegnstbpoght"),
/// 							RoleArn:     pulumi.String("pcilcosyud"),
/// 						},
/// 					},
/// 					AutoMinorVersionUpgrade: pulumi.Bool(true),
/// 					AvailabilityZones: pulumi.StringArray{
/// 						pulumi.String("xbabqekpowoz"),
/// 					},
/// 					BacktrackWindow:              pulumi.Int(18),
/// 					BackupRetentionPeriod:        pulumi.Int(11),
/// 					CopyTagsToSnapshot:           pulumi.Bool(true),
/// 					DatabaseName:                 pulumi.String("ttn"),
/// 					DbClusterArn:                 pulumi.String("zdohcaiqsymzj"),
/// 					DbClusterIdentifier:          pulumi.String("euvcyppvvutbntragfptjnmzhg"),
/// 					DbClusterInstanceClass:       pulumi.String("suufjmxymxlrberbqtknmsvzrsajw"),
/// 					DbClusterParameterGroupName:  pulumi.String("sokiordelmtviobobxrdsw"),
/// 					DbClusterResourceId:          pulumi.String("vnwlcfxokdrjitagoefxrsf"),
/// 					DbInstanceParameterGroupName: pulumi.String("cwhdxixjtyfziflvod"),
/// 					DbSubnetGroupName:            pulumi.String("ajeipefwih"),
/// 					DbSystemId:                   pulumi.String("exockxknyjqihmhxjuin"),
/// 					DeletionProtection:           pulumi.Bool(true),
/// 					Domain:                       pulumi.String("qzpcprovksxsiuithxqu"),
/// 					DomainIAMRoleName:            pulumi.String("psubmwhsowirjcnv"),
/// 					EnableCloudwatchLogsExports: pulumi.StringArray{
/// 						pulumi.String("lytydxlnpduhnvmifkneiu"),
/// 					},
/// 					EnableGlobalWriteForwarding:     pulumi.Bool(true),
/// 					EnableHttpEndpoint:              pulumi.Bool(true),
/// 					EnableIAMDatabaseAuthentication: pulumi.Bool(true),
/// 					Endpoint: &awsconnector.RdsDbClusterEndpointArgs{
/// 						Address: pulumi.String("pwliordavkhwfklfzwxic"),
/// 						Port:    pulumi.String("nagvki"),
/// 					},
/// 					Engine:                   pulumi.String("cehuc"),
/// 					EngineMode:               pulumi.String("iokki"),
/// 					EngineVersion:            pulumi.String("ziindzjpzdrbcmtougdffweh"),
/// 					GlobalClusterIdentifier:  pulumi.String("jqoiwozrdbnumywlieglbpzzx"),
/// 					Iops:                     pulumi.Int(26),
/// 					KmsKeyId:                 pulumi.String("vqllbldbdhvsyon"),
/// 					ManageMasterUserPassword: pulumi.Bool(true),
/// 					MasterUserPassword:       pulumi.String("qscygehnqvqzynuuqqbehubstti"),
/// 					MasterUserSecret: &awsconnector.MasterUserSecretArgs{
/// 						KmsKeyId:  pulumi.String("vsghhhqurh"),
/// 						SecretArn: pulumi.String("ibmtek"),
/// 					},
/// 					MasterUsername:                     pulumi.String("lusozmpnihhahsioubedg"),
/// 					MonitoringInterval:                 pulumi.Int(17),
/// 					MonitoringRoleArn:                  pulumi.String("pqckluqmxqazvvi"),
/// 					NetworkType:                        pulumi.String("mnsuyqfkeqg"),
/// 					PerformanceInsightsEnabled:         pulumi.Bool(true),
/// 					PerformanceInsightsKmsKeyId:        pulumi.String("qr"),
/// 					PerformanceInsightsRetentionPeriod: pulumi.Int(2),
/// 					Port:                               pulumi.Int(23),
/// 					PreferredBackupWindow:              pulumi.String("shjtwjtugyols"),
/// 					PreferredMaintenanceWindow:         pulumi.String("fuuieyvfhfcanzgutwcdbtbenk"),
/// 					PubliclyAccessible:                 pulumi.Bool(true),
/// 					ReadEndpoint: &awsconnector.ReadEndpointArgs{
/// 						Address: pulumi.String("ca"),
/// 					},
/// 					ReplicationSourceIdentifier: pulumi.String("sdohltrpdqsszpptdh"),
/// 					RestoreToTime:               pulumi.String("srbuhavl"),
/// 					RestoreType:                 pulumi.String("tnsdjgvzcnnsjxw"),
/// 					ScalingConfiguration: &awsconnector.ScalingConfigurationArgs{
/// 						AutoPause:             pulumi.Bool(true),
/// 						MaxCapacity:           pulumi.Int(3),
/// 						MinCapacity:           pulumi.Int(5),
/// 						SecondsBeforeTimeout:  pulumi.Int(28),
/// 						SecondsUntilAutoPause: pulumi.Int(25),
/// 						TimeoutAction:         pulumi.String("cqgyqshpkcyblfsqmujyxpfiyv"),
/// 					},
/// 					ServerlessV2ScalingConfiguration: &awsconnector.ServerlessV2ScalingConfigurationArgs{
/// 						MaxCapacity: pulumi.Float64(23),
/// 						MinCapacity: pulumi.Float64(16),
/// 					},
/// 					SnapshotIdentifier:        pulumi.String("vqowgxcqbclzjexvyigvdzlpcdluvv"),
/// 					SourceDBClusterIdentifier: pulumi.String("jtvnbddzyqf"),
/// 					SourceRegion:              pulumi.String("vrzpezvwoszraxdi"),
/// 					StorageEncrypted:          pulumi.Bool(true),
/// 					StorageThroughput:         pulumi.Int(6),
/// 					StorageType:               pulumi.String("iiwkeunemifyewevpcvcrbs"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("lsvdhwafvfrtobfvrwigfodughve"),
/// 							Value: pulumi.String("szbfittyghldzvnflsglc"),
/// 						},
/// 					},
/// 					UseLatestRestorableTime: pulumi.Bool(true),
/// 					VpcSecurityGroupIds: pulumi.StringArray{
/// 						pulumi.String("jdkxpjhsibvgvorizsuzta"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("fulsvqpnagyrsirhnuxdsppl"),
/// 				AwsSourceSchema: pulumi.String("wrucexqlrnssoxvtczytcslheth"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key4409": pulumi.String("weab"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("pexhjqkygfiozfsvo"),
/// 				PublicCloudResourceName:         pulumi.String("quyqfarecht"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgrdsDBCluster"),
/// 			Tags: pulumi.StringMap{
/// 				"key1769": pulumi.String("winoruhwyphtmoskehihj"),
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
/// resource "azure-native_awsconnector_rdsdbcluster" "rdsDbCluster" {
///   location = "di"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "lllohvlgyg"
///     aws_account_id = "rpxoebfhnpwagqqgk"
///     aws_properties = {
///       allocated_storage = 12
///       associated_roles = [{
///         "featureName" = "yupxlegnstbpoght"
///         "roleArn"     = "pcilcosyud"
///       }]
///       auto_minor_version_upgrade         = true
///       availability_zones                 = ["xbabqekpowoz"]
///       backtrack_window                   = 18
///       backup_retention_period            = 11
///       copy_tags_to_snapshot              = true
///       database_name                      = "ttn"
///       db_cluster_arn                     = "zdohcaiqsymzj"
///       db_cluster_identifier              = "euvcyppvvutbntragfptjnmzhg"
///       db_cluster_instance_class          = "suufjmxymxlrberbqtknmsvzrsajw"
///       db_cluster_parameter_group_name    = "sokiordelmtviobobxrdsw"
///       db_cluster_resource_id             = "vnwlcfxokdrjitagoefxrsf"
///       db_instance_parameter_group_name   = "cwhdxixjtyfziflvod"
///       db_subnet_group_name               = "ajeipefwih"
///       db_system_id                       = "exockxknyjqihmhxjuin"
///       deletion_protection                = true
///       domain                             = "qzpcprovksxsiuithxqu"
///       domain_iam_role_name               = "psubmwhsowirjcnv"
///       enable_cloudwatch_logs_exports     = ["lytydxlnpduhnvmifkneiu"]
///       enable_global_write_forwarding     = true
///       enable_http_endpoint               = true
///       enable_iam_database_authentication = true
///       endpoint = {
///         address = "pwliordavkhwfklfzwxic"
///         port    = "nagvki"
///       }
///       engine                      = "cehuc"
///       engine_mode                 = "iokki"
///       engine_version              = "ziindzjpzdrbcmtougdffweh"
///       global_cluster_identifier   = "jqoiwozrdbnumywlieglbpzzx"
///       iops                        = 26
///       kms_key_id                  = "vqllbldbdhvsyon"
///       manage_master_user_password = true
///       master_user_password        = "qscygehnqvqzynuuqqbehubstti"
///       master_user_secret = {
///         kms_key_id = "vsghhhqurh"
///         secret_arn = "ibmtek"
///       }
///       master_username                       = "lusozmpnihhahsioubedg"
///       monitoring_interval                   = 17
///       monitoring_role_arn                   = "pqckluqmxqazvvi"
///       network_type                          = "mnsuyqfkeqg"
///       performance_insights_enabled          = true
///       performance_insights_kms_key_id       = "qr"
///       performance_insights_retention_period = 2
///       port                                  = 23
///       preferred_backup_window               = "shjtwjtugyols"
///       preferred_maintenance_window          = "fuuieyvfhfcanzgutwcdbtbenk"
///       publicly_accessible                   = true
///       read_endpoint = {
///         address = "ca"
///       }
///       replication_source_identifier = "sdohltrpdqsszpptdh"
///       restore_to_time               = "srbuhavl"
///       restore_type                  = "tnsdjgvzcnnsjxw"
///       scaling_configuration = {
///         auto_pause               = true
///         max_capacity             = 3
///         min_capacity             = 5
///         seconds_before_timeout   = 28
///         seconds_until_auto_pause = 25
///         timeout_action           = "cqgyqshpkcyblfsqmujyxpfiyv"
///       }
///       serverless_v2_scaling_configuration = {
///         max_capacity = 23
///         min_capacity = 16
///       }
///       snapshot_identifier          = "vqowgxcqbclzjexvyigvdzlpcdluvv"
///       source_db_cluster_identifier = "jtvnbddzyqf"
///       source_region                = "vrzpezvwoszraxdi"
///       storage_encrypted            = true
///       storage_throughput           = 6
///       storage_type                 = "iiwkeunemifyewevpcvcrbs"
///       tags = [{
///         "key"   = "lsvdhwafvfrtobfvrwigfodughve"
///         "value" = "szbfittyghldzvnflsglc"
///       }]
///       use_latest_restorable_time = true
///       vpc_security_group_ids     = ["jdkxpjhsibvgvorizsuzta"]
///     }
///     aws_region        = "fulsvqpnagyrsirhnuxdsppl"
///     aws_source_schema = "wrucexqlrnssoxvtczytcslheth"
///     aws_tags = {
///       "key4409" = "weab"
///     }
///     public_cloud_connectors_resource_id = "pexhjqkygfiozfsvo"
///     public_cloud_resource_name          = "quyqfarecht"
///   }
///   resource_group_name = "rgrdsDBCluster"
///   tags = {
///     "key1769" = "winoruhwyphtmoskehihj"
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
/// import com.pulumi.azurenative.awsconnector.RdsDbCluster;
/// import com.pulumi.azurenative.awsconnector.RdsDbClusterArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RdsDBClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRdsDBClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RdsDbClusterEndpointArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MasterUserSecretArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ReadEndpointArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ScalingConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ServerlessV2ScalingConfigurationArgs;
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
///         var rdsDbCluster = new RdsDbCluster("rdsDbCluster", RdsDbClusterArgs.builder()
///             .location("di")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(RdsDBClusterPropertiesArgs.builder()
///                 .arn("lllohvlgyg")
///                 .awsAccountId("rpxoebfhnpwagqqgk")
///                 .awsProperties(AwsRdsDBClusterPropertiesArgs.builder()
///                     .allocatedStorage(12)
///                     .associatedRoles(DBClusterRoleArgs.builder()
///                         .featureName("yupxlegnstbpoght")
///                         .roleArn("pcilcosyud")
///                         .build())
///                     .autoMinorVersionUpgrade(true)
///                     .availabilityZones("xbabqekpowoz")
///                     .backtrackWindow(18)
///                     .backupRetentionPeriod(11)
///                     .copyTagsToSnapshot(true)
///                     .databaseName("ttn")
///                     .dbClusterArn("zdohcaiqsymzj")
///                     .dbClusterIdentifier("euvcyppvvutbntragfptjnmzhg")
///                     .dbClusterInstanceClass("suufjmxymxlrberbqtknmsvzrsajw")
///                     .dbClusterParameterGroupName("sokiordelmtviobobxrdsw")
///                     .dbClusterResourceId("vnwlcfxokdrjitagoefxrsf")
///                     .dbInstanceParameterGroupName("cwhdxixjtyfziflvod")
///                     .dbSubnetGroupName("ajeipefwih")
///                     .dbSystemId("exockxknyjqihmhxjuin")
///                     .deletionProtection(true)
///                     .domain("qzpcprovksxsiuithxqu")
///                     .domainIAMRoleName("psubmwhsowirjcnv")
///                     .enableCloudwatchLogsExports("lytydxlnpduhnvmifkneiu")
///                     .enableGlobalWriteForwarding(true)
///                     .enableHttpEndpoint(true)
///                     .enableIAMDatabaseAuthentication(true)
///                     .endpoint(RdsDbClusterEndpointArgs.builder()
///                         .address("pwliordavkhwfklfzwxic")
///                         .port("nagvki")
///                         .build())
///                     .engine("cehuc")
///                     .engineMode("iokki")
///                     .engineVersion("ziindzjpzdrbcmtougdffweh")
///                     .globalClusterIdentifier("jqoiwozrdbnumywlieglbpzzx")
///                     .iops(26)
///                     .kmsKeyId("vqllbldbdhvsyon")
///                     .manageMasterUserPassword(true)
///                     .masterUserPassword("qscygehnqvqzynuuqqbehubstti")
///                     .masterUserSecret(MasterUserSecretArgs.builder()
///                         .kmsKeyId("vsghhhqurh")
///                         .secretArn("ibmtek")
///                         .build())
///                     .masterUsername("lusozmpnihhahsioubedg")
///                     .monitoringInterval(17)
///                     .monitoringRoleArn("pqckluqmxqazvvi")
///                     .networkType("mnsuyqfkeqg")
///                     .performanceInsightsEnabled(true)
///                     .performanceInsightsKmsKeyId("qr")
///                     .performanceInsightsRetentionPeriod(2)
///                     .port(23)
///                     .preferredBackupWindow("shjtwjtugyols")
///                     .preferredMaintenanceWindow("fuuieyvfhfcanzgutwcdbtbenk")
///                     .publiclyAccessible(true)
///                     .readEndpoint(ReadEndpointArgs.builder()
///                         .address("ca")
///                         .build())
///                     .replicationSourceIdentifier("sdohltrpdqsszpptdh")
///                     .restoreToTime("srbuhavl")
///                     .restoreType("tnsdjgvzcnnsjxw")
///                     .scalingConfiguration(ScalingConfigurationArgs.builder()
///                         .autoPause(true)
///                         .maxCapacity(3)
///                         .minCapacity(5)
///                         .secondsBeforeTimeout(28)
///                         .secondsUntilAutoPause(25)
///                         .timeoutAction("cqgyqshpkcyblfsqmujyxpfiyv")
///                         .build())
///                     .serverlessV2ScalingConfiguration(ServerlessV2ScalingConfigurationArgs.builder()
///                         .maxCapacity(23.0)
///                         .minCapacity(16.0)
///                         .build())
///                     .snapshotIdentifier("vqowgxcqbclzjexvyigvdzlpcdluvv")
///                     .sourceDBClusterIdentifier("jtvnbddzyqf")
///                     .sourceRegion("vrzpezvwoszraxdi")
///                     .storageEncrypted(true)
///                     .storageThroughput(6)
///                     .storageType("iiwkeunemifyewevpcvcrbs")
///                     .tags(TagArgs.builder()
///                         .key("lsvdhwafvfrtobfvrwigfodughve")
///                         .value("szbfittyghldzvnflsglc")
///                         .build())
///                     .useLatestRestorableTime(true)
///                     .vpcSecurityGroupIds("jdkxpjhsibvgvorizsuzta")
///                     .build())
///                 .awsRegion("fulsvqpnagyrsirhnuxdsppl")
///                 .awsSourceSchema("wrucexqlrnssoxvtczytcslheth")
///                 .awsTags(Map.of("key4409", "weab"))
///                 .publicCloudConnectorsResourceId("pexhjqkygfiozfsvo")
///                 .publicCloudResourceName("quyqfarecht")
///                 .build())
///             .resourceGroupName("rgrdsDBCluster")
///             .tags(Map.of("key1769", "winoruhwyphtmoskehihj"))
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
/// const rdsDbCluster = new azure_native.awsconnector.RdsDbCluster("rdsDbCluster", {
///     location: "di",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "lllohvlgyg",
///         awsAccountId: "rpxoebfhnpwagqqgk",
///         awsProperties: {
///             allocatedStorage: 12,
///             associatedRoles: [{
///                 featureName: "yupxlegnstbpoght",
///                 roleArn: "pcilcosyud",
///             }],
///             autoMinorVersionUpgrade: true,
///             availabilityZones: ["xbabqekpowoz"],
///             backtrackWindow: 18,
///             backupRetentionPeriod: 11,
///             copyTagsToSnapshot: true,
///             databaseName: "ttn",
///             dbClusterArn: "zdohcaiqsymzj",
///             dbClusterIdentifier: "euvcyppvvutbntragfptjnmzhg",
///             dbClusterInstanceClass: "suufjmxymxlrberbqtknmsvzrsajw",
///             dbClusterParameterGroupName: "sokiordelmtviobobxrdsw",
///             dbClusterResourceId: "vnwlcfxokdrjitagoefxrsf",
///             dbInstanceParameterGroupName: "cwhdxixjtyfziflvod",
///             dbSubnetGroupName: "ajeipefwih",
///             dbSystemId: "exockxknyjqihmhxjuin",
///             deletionProtection: true,
///             domain: "qzpcprovksxsiuithxqu",
///             domainIAMRoleName: "psubmwhsowirjcnv",
///             enableCloudwatchLogsExports: ["lytydxlnpduhnvmifkneiu"],
///             enableGlobalWriteForwarding: true,
///             enableHttpEndpoint: true,
///             enableIAMDatabaseAuthentication: true,
///             endpoint: {
///                 address: "pwliordavkhwfklfzwxic",
///                 port: "nagvki",
///             },
///             engine: "cehuc",
///             engineMode: "iokki",
///             engineVersion: "ziindzjpzdrbcmtougdffweh",
///             globalClusterIdentifier: "jqoiwozrdbnumywlieglbpzzx",
///             iops: 26,
///             kmsKeyId: "vqllbldbdhvsyon",
///             manageMasterUserPassword: true,
///             masterUserPassword: "qscygehnqvqzynuuqqbehubstti",
///             masterUserSecret: {
///                 kmsKeyId: "vsghhhqurh",
///                 secretArn: "ibmtek",
///             },
///             masterUsername: "lusozmpnihhahsioubedg",
///             monitoringInterval: 17,
///             monitoringRoleArn: "pqckluqmxqazvvi",
///             networkType: "mnsuyqfkeqg",
///             performanceInsightsEnabled: true,
///             performanceInsightsKmsKeyId: "qr",
///             performanceInsightsRetentionPeriod: 2,
///             port: 23,
///             preferredBackupWindow: "shjtwjtugyols",
///             preferredMaintenanceWindow: "fuuieyvfhfcanzgutwcdbtbenk",
///             publiclyAccessible: true,
///             readEndpoint: {
///                 address: "ca",
///             },
///             replicationSourceIdentifier: "sdohltrpdqsszpptdh",
///             restoreToTime: "srbuhavl",
///             restoreType: "tnsdjgvzcnnsjxw",
///             scalingConfiguration: {
///                 autoPause: true,
///                 maxCapacity: 3,
///                 minCapacity: 5,
///                 secondsBeforeTimeout: 28,
///                 secondsUntilAutoPause: 25,
///                 timeoutAction: "cqgyqshpkcyblfsqmujyxpfiyv",
///             },
///             serverlessV2ScalingConfiguration: {
///                 maxCapacity: 23,
///                 minCapacity: 16,
///             },
///             snapshotIdentifier: "vqowgxcqbclzjexvyigvdzlpcdluvv",
///             sourceDBClusterIdentifier: "jtvnbddzyqf",
///             sourceRegion: "vrzpezvwoszraxdi",
///             storageEncrypted: true,
///             storageThroughput: 6,
///             storageType: "iiwkeunemifyewevpcvcrbs",
///             tags: [{
///                 key: "lsvdhwafvfrtobfvrwigfodughve",
///                 value: "szbfittyghldzvnflsglc",
///             }],
///             useLatestRestorableTime: true,
///             vpcSecurityGroupIds: ["jdkxpjhsibvgvorizsuzta"],
///         },
///         awsRegion: "fulsvqpnagyrsirhnuxdsppl",
///         awsSourceSchema: "wrucexqlrnssoxvtczytcslheth",
///         awsTags: {
///             key4409: "weab",
///         },
///         publicCloudConnectorsResourceId: "pexhjqkygfiozfsvo",
///         publicCloudResourceName: "quyqfarecht",
///     },
///     resourceGroupName: "rgrdsDBCluster",
///     tags: {
///         key1769: "winoruhwyphtmoskehihj",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rds_db_cluster = azure_native.awsconnector.RdsDbCluster("rdsDbCluster",
///     location="di",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "lllohvlgyg",
///         "aws_account_id": "rpxoebfhnpwagqqgk",
///         "aws_properties": {
///             "allocated_storage": 12,
///             "associated_roles": [{
///                 "feature_name": "yupxlegnstbpoght",
///                 "role_arn": "pcilcosyud",
///             }],
///             "auto_minor_version_upgrade": True,
///             "availability_zones": ["xbabqekpowoz"],
///             "backtrack_window": 18,
///             "backup_retention_period": 11,
///             "copy_tags_to_snapshot": True,
///             "database_name": "ttn",
///             "db_cluster_arn": "zdohcaiqsymzj",
///             "db_cluster_identifier": "euvcyppvvutbntragfptjnmzhg",
///             "db_cluster_instance_class": "suufjmxymxlrberbqtknmsvzrsajw",
///             "db_cluster_parameter_group_name": "sokiordelmtviobobxrdsw",
///             "db_cluster_resource_id": "vnwlcfxokdrjitagoefxrsf",
///             "db_instance_parameter_group_name": "cwhdxixjtyfziflvod",
///             "db_subnet_group_name": "ajeipefwih",
///             "db_system_id": "exockxknyjqihmhxjuin",
///             "deletion_protection": True,
///             "domain": "qzpcprovksxsiuithxqu",
///             "domain_iam_role_name": "psubmwhsowirjcnv",
///             "enable_cloudwatch_logs_exports": ["lytydxlnpduhnvmifkneiu"],
///             "enable_global_write_forwarding": True,
///             "enable_http_endpoint": True,
///             "enable_iam_database_authentication": True,
///             "endpoint": {
///                 "address": "pwliordavkhwfklfzwxic",
///                 "port": "nagvki",
///             },
///             "engine": "cehuc",
///             "engine_mode": "iokki",
///             "engine_version": "ziindzjpzdrbcmtougdffweh",
///             "global_cluster_identifier": "jqoiwozrdbnumywlieglbpzzx",
///             "iops": 26,
///             "kms_key_id": "vqllbldbdhvsyon",
///             "manage_master_user_password": True,
///             "master_user_password": "qscygehnqvqzynuuqqbehubstti",
///             "master_user_secret": {
///                 "kms_key_id": "vsghhhqurh",
///                 "secret_arn": "ibmtek",
///             },
///             "master_username": "lusozmpnihhahsioubedg",
///             "monitoring_interval": 17,
///             "monitoring_role_arn": "pqckluqmxqazvvi",
///             "network_type": "mnsuyqfkeqg",
///             "performance_insights_enabled": True,
///             "performance_insights_kms_key_id": "qr",
///             "performance_insights_retention_period": 2,
///             "port": 23,
///             "preferred_backup_window": "shjtwjtugyols",
///             "preferred_maintenance_window": "fuuieyvfhfcanzgutwcdbtbenk",
///             "publicly_accessible": True,
///             "read_endpoint": {
///                 "address": "ca",
///             },
///             "replication_source_identifier": "sdohltrpdqsszpptdh",
///             "restore_to_time": "srbuhavl",
///             "restore_type": "tnsdjgvzcnnsjxw",
///             "scaling_configuration": {
///                 "auto_pause": True,
///                 "max_capacity": 3,
///                 "min_capacity": 5,
///                 "seconds_before_timeout": 28,
///                 "seconds_until_auto_pause": 25,
///                 "timeout_action": "cqgyqshpkcyblfsqmujyxpfiyv",
///             },
///             "serverless_v2_scaling_configuration": {
///                 "max_capacity": float(23),
///                 "min_capacity": float(16),
///             },
///             "snapshot_identifier": "vqowgxcqbclzjexvyigvdzlpcdluvv",
///             "source_db_cluster_identifier": "jtvnbddzyqf",
///             "source_region": "vrzpezvwoszraxdi",
///             "storage_encrypted": True,
///             "storage_throughput": 6,
///             "storage_type": "iiwkeunemifyewevpcvcrbs",
///             "tags": [{
///                 "key": "lsvdhwafvfrtobfvrwigfodughve",
///                 "value": "szbfittyghldzvnflsglc",
///             }],
///             "use_latest_restorable_time": True,
///             "vpc_security_group_ids": ["jdkxpjhsibvgvorizsuzta"],
///         },
///         "aws_region": "fulsvqpnagyrsirhnuxdsppl",
///         "aws_source_schema": "wrucexqlrnssoxvtczytcslheth",
///         "aws_tags": {
///             "key4409": "weab",
///         },
///         "public_cloud_connectors_resource_id": "pexhjqkygfiozfsvo",
///         "public_cloud_resource_name": "quyqfarecht",
///     },
///     resource_group_name="rgrdsDBCluster",
///     tags={
///         "key1769": "winoruhwyphtmoskehihj",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   rdsDbCluster:
///     type: azure-native:awsconnector:RdsDbCluster
///     properties:
///       location: di
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: lllohvlgyg
///         awsAccountId: rpxoebfhnpwagqqgk
///         awsProperties:
///           allocatedStorage: 12
///           associatedRoles:
///             - featureName: yupxlegnstbpoght
///               roleArn: pcilcosyud
///           autoMinorVersionUpgrade: true
///           availabilityZones:
///             - xbabqekpowoz
///           backtrackWindow: 18
///           backupRetentionPeriod: 11
///           copyTagsToSnapshot: true
///           databaseName: ttn
///           dbClusterArn: zdohcaiqsymzj
///           dbClusterIdentifier: euvcyppvvutbntragfptjnmzhg
///           dbClusterInstanceClass: suufjmxymxlrberbqtknmsvzrsajw
///           dbClusterParameterGroupName: sokiordelmtviobobxrdsw
///           dbClusterResourceId: vnwlcfxokdrjitagoefxrsf
///           dbInstanceParameterGroupName: cwhdxixjtyfziflvod
///           dbSubnetGroupName: ajeipefwih
///           dbSystemId: exockxknyjqihmhxjuin
///           deletionProtection: true
///           domain: qzpcprovksxsiuithxqu
///           domainIAMRoleName: psubmwhsowirjcnv
///           enableCloudwatchLogsExports:
///             - lytydxlnpduhnvmifkneiu
///           enableGlobalWriteForwarding: true
///           enableHttpEndpoint: true
///           enableIAMDatabaseAuthentication: true
///           endpoint:
///             address: pwliordavkhwfklfzwxic
///             port: nagvki
///           engine: cehuc
///           engineMode: iokki
///           engineVersion: ziindzjpzdrbcmtougdffweh
///           globalClusterIdentifier: jqoiwozrdbnumywlieglbpzzx
///           iops: 26
///           kmsKeyId: vqllbldbdhvsyon
///           manageMasterUserPassword: true
///           masterUserPassword: qscygehnqvqzynuuqqbehubstti
///           masterUserSecret:
///             kmsKeyId: vsghhhqurh
///             secretArn: ibmtek
///           masterUsername: lusozmpnihhahsioubedg
///           monitoringInterval: 17
///           monitoringRoleArn: pqckluqmxqazvvi
///           networkType: mnsuyqfkeqg
///           performanceInsightsEnabled: true
///           performanceInsightsKmsKeyId: qr
///           performanceInsightsRetentionPeriod: 2
///           port: 23
///           preferredBackupWindow: shjtwjtugyols
///           preferredMaintenanceWindow: fuuieyvfhfcanzgutwcdbtbenk
///           publiclyAccessible: true
///           readEndpoint:
///             address: ca
///           replicationSourceIdentifier: sdohltrpdqsszpptdh
///           restoreToTime: srbuhavl
///           restoreType: tnsdjgvzcnnsjxw
///           scalingConfiguration:
///             autoPause: true
///             maxCapacity: 3
///             minCapacity: 5
///             secondsBeforeTimeout: 28
///             secondsUntilAutoPause: 25
///             timeoutAction: cqgyqshpkcyblfsqmujyxpfiyv
///           serverlessV2ScalingConfiguration:
///             maxCapacity: 23
///             minCapacity: 16
///           snapshotIdentifier: vqowgxcqbclzjexvyigvdzlpcdluvv
///           sourceDBClusterIdentifier: jtvnbddzyqf
///           sourceRegion: vrzpezvwoszraxdi
///           storageEncrypted: true
///           storageThroughput: 6
///           storageType: iiwkeunemifyewevpcvcrbs
///           tags:
///             - key: lsvdhwafvfrtobfvrwigfodughve
///               value: szbfittyghldzvnflsglc
///           useLatestRestorableTime: true
///           vpcSecurityGroupIds:
///             - jdkxpjhsibvgvorizsuzta
///         awsRegion: fulsvqpnagyrsirhnuxdsppl
///         awsSourceSchema: wrucexqlrnssoxvtczytcslheth
///         awsTags:
///           key4409: weab
///         publicCloudConnectorsResourceId: pexhjqkygfiozfsvo
///         publicCloudResourceName: quyqfarecht
///       resourceGroupName: rgrdsDBCluster
///       tags:
///         key1769: winoruhwyphtmoskehihj
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
/// $ pulumi import azure-native:awsconnector:RdsDbCluster uxpivkrjpudwctxwmajudmdkztpyw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/rdsDBClusters/{name}
/// ```
class RdsDbCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<RdsDBClusterPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RdsDbCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsDbCluster]. {@macro pulumi_awsconnector_rds_db_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsDbCluster(
    String name, {
    RdsDbClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:RdsDbCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RdsDBClusterPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RdsDBClusterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
