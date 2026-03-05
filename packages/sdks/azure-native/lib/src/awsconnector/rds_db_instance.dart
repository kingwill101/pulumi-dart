import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_db_instance_args.dart';
import 'rds_dbinstance_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RdsDbInstances_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rdsDbInstance = new AzureNative.AwsConnector.RdsDbInstance("rdsDbInstance", new()
///     {
///         Location = "pktn",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.RdsDBInstancePropertiesArgs
///         {
///             Arn = "ikxozbmzhxy",
///             AwsAccountId = "xjspz",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRdsDBInstancePropertiesArgs
///             {
///                 AllocatedStorage = "ryhixfujuvwifznymxbze",
///                 AllowMajorVersionUpgrade = true,
///                 AssociatedRoles = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.DBInstanceRoleArgs
///                     {
///                         FeatureName = "jyivqbpnmvg",
///                         RoleArn = "jblmzpmkcvnkvsxkswtmfqlwttf",
///                     },
///                 },
///                 AutoMinorVersionUpgrade = true,
///                 AutomaticBackupReplicationKmsKeyId = "eqwqyzovzxcmragbjhqq",
///                 AutomaticBackupReplicationRegion = "h",
///                 AvailabilityZone = "ccdhbiqvvdxbszpuhcvsvpuqfrkosf",
///                 BackupRetentionPeriod = 6,
///                 CaCertificateIdentifier = "dp",
///                 CertificateDetails = new AzureNative.AwsConnector.Inputs.CertificateDetailsArgs
///                 {
///                     CaIdentifier = "jathtqegixcwxcwmnrlrsycxvyp",
///                     ValidTill = "nclrurexsnhed",
///                 },
///                 CertificateRotationRestart = true,
///                 CharacterSetName = "bapraruogdpspvewmd",
///                 CopyTagsToSnapshot = true,
///                 CustomIAMInstanceProfile = "ronoghiguflpqdlwef",
///                 DbClusterIdentifier = "mi",
///                 DbClusterSnapshotIdentifier = "biqdaekgjeyopntgrx",
///                 DbInstanceArn = "xxk",
///                 DbInstanceClass = "xvgbsmhvq",
///                 DbInstanceIdentifier = "svbefulaqhcsf",
///                 DbName = "yryxlwvdmghqcfdlhdyykzejtyep",
///                 DbParameterGroupName = "keuvtxklarpjmikkuwqqfanv",
///                 DbSecurityGroups = new[]
///                 {
///                     "mgcichzarguqhevlwubzgbvs",
///                 },
///                 DbSnapshotIdentifier = "coykeofgbcwpjeihmmajttm",
///                 DbSubnetGroupName = "yxd",
///                 DbSystemId = "rlbhsqhwmezvevqsme",
///                 DbiResourceId = "nlqlrrljz",
///                 DedicatedLogVolume = true,
///                 DeleteAutomatedBackups = true,
///                 DeletionProtection = true,
///                 Domain = "mkboglzqbejwwfplkhpiwsvndwphik",
///                 DomainAuthSecretArn = "dmjcucptjkvsolzcwxwhv",
///                 DomainDnsIps = new[]
///                 {
///                     "celohfbruu",
///                 },
///                 DomainFqdn = "txgpdsxlpqbasbbmpzzkdztlfphm",
///                 DomainIAMRoleName = "ljnyfnuzyqodzawuu",
///                 DomainOu = "yhtbsdxktvxrtweyoo",
///                 EnableCloudwatchLogsExports = new[]
///                 {
///                     "anqxngk",
///                 },
///                 EnableIAMDatabaseAuthentication = true,
///                 EnablePerformanceInsights = true,
///                 Endpoint = new AzureNative.AwsConnector.Inputs.RdsDbInstanceEndpointArgs
///                 {
///                     Address = "rmsxn",
///                     HostedZoneId = "mvsioevf",
///                     Port = "gfpslsfdtnmrahrfppdwaf",
///                 },
///                 Engine = "jztlgxuyyhlwrjkgree",
///                 EngineVersion = "fwmhfzboltipjkflr",
///                 Iops = 6,
///                 KmsKeyId = "pbdblzy",
///                 LicenseModel = "qcmsltdkpdsznfotmqdvnntnfor",
///                 ManageMasterUserPassword = true,
///                 MasterUserPassword = "strxifasjrrb",
///                 MasterUserSecret = new AzureNative.AwsConnector.Inputs.MasterUserSecretArgs
///                 {
///                     KmsKeyId = "czgkafaksjqklj",
///                     SecretArn = "nxpshhiulxttzwuifbqnamexd",
///                 },
///                 MasterUsername = "lfitzeghwpzjhcbje",
///                 MaxAllocatedStorage = 9,
///                 MonitoringInterval = 17,
///                 MonitoringRoleArn = "a",
///                 MultiAZ = true,
///                 NcharCharacterSetName = "cc",
///                 NetworkType = "bccgoqncxrhuwvgwvwta",
///                 OptionGroupName = "mftqhqogtwleqvlpjpbabps",
///                 PerformanceInsightsKMSKeyId = "jyhbotj",
///                 PerformanceInsightsRetentionPeriod = 27,
///                 Port = "g",
///                 PreferredBackupWindow = "wesxjihubbcfgwqebebkzmmfoipd",
///                 PreferredMaintenanceWindow = "gtmzlucaagottcm",
///                 ProcessorFeatures = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ProcessorFeatureArgs
///                     {
///                         Name = AzureNative.AwsConnector.ProcessorFeatureName.CoreCount,
///                         Value = "qhhoewgkcuvttcihy",
///                     },
///                 },
///                 PromotionTier = 12,
///                 PubliclyAccessible = true,
///                 ReplicaMode = "poucyygmqhpztshwupms",
///                 RestoreTime = "nokteyfkzzvhgjtpmiwxajseiavtbk",
///                 SourceDBClusterIdentifier = "gkdeeipcvhmgoabz",
///                 SourceDBInstanceAutomatedBackupsArn = "lisujvucnvopgkehpacmkjshk",
///                 SourceDBInstanceIdentifier = "ypufdzwdqxkygzmrp",
///                 SourceDbiResourceId = "btzodcuervx",
///                 SourceRegion = "ez",
///                 StorageEncrypted = true,
///                 StorageThroughput = 16,
///                 StorageType = "ywcy",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "kilbegh",
///                         Value = "rdhflka",
///                     },
///                 },
///                 TdeCredentialArn = "twmu",
///                 TdeCredentialPassword = "fqedsuqphkwhafmptzeruepeqalyty",
///                 Timezone = "euyueykvptytmbnfj",
///                 UseDefaultProcessorFeatures = true,
///                 UseLatestRestorableTime = true,
///                 VpcSecurityGroups = new[]
///                 {
///                     "nxllphmorxutzaym",
///                 },
///             },
///             AwsRegion = "dmudtaomgrfchc",
///             AwsSourceSchema = "cjfztsurj",
///             AwsTags =
///             {
///                 { "key3142", "myscjjenjqhbmtoiyyjauxlu" },
///             },
///             PublicCloudConnectorsResourceId = "etsvehjovtdbgzuwnmgw",
///             PublicCloudResourceName = "bvkzujojjsvihxyajddbqxygffaqm",
///         },
///         ResourceGroupName = "rgrdsDBInstance",
///         Tags =
///         {
///             { "key7306", "yhvoznqrgbna" },
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
/// 		_, err := awsconnector.NewRdsDbInstance(ctx, "rdsDbInstance", &awsconnector.RdsDbInstanceArgs{
/// 			Location: pulumi.String("pktn"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.RdsDBInstancePropertiesArgs{
/// 				Arn:          pulumi.String("ikxozbmzhxy"),
/// 				AwsAccountId: pulumi.String("xjspz"),
/// 				AwsProperties: &awsconnector.AwsRdsDBInstancePropertiesArgs{
/// 					AllocatedStorage:         pulumi.String("ryhixfujuvwifznymxbze"),
/// 					AllowMajorVersionUpgrade: pulumi.Bool(true),
/// 					AssociatedRoles: awsconnector.DBInstanceRoleArray{
/// 						&awsconnector.DBInstanceRoleArgs{
/// 							FeatureName: pulumi.String("jyivqbpnmvg"),
/// 							RoleArn:     pulumi.String("jblmzpmkcvnkvsxkswtmfqlwttf"),
/// 						},
/// 					},
/// 					AutoMinorVersionUpgrade:            pulumi.Bool(true),
/// 					AutomaticBackupReplicationKmsKeyId: pulumi.String("eqwqyzovzxcmragbjhqq"),
/// 					AutomaticBackupReplicationRegion:   pulumi.String("h"),
/// 					AvailabilityZone:                   pulumi.String("ccdhbiqvvdxbszpuhcvsvpuqfrkosf"),
/// 					BackupRetentionPeriod:              pulumi.Int(6),
/// 					CaCertificateIdentifier:            pulumi.String("dp"),
/// 					CertificateDetails: &awsconnector.CertificateDetailsArgs{
/// 						CaIdentifier: pulumi.String("jathtqegixcwxcwmnrlrsycxvyp"),
/// 						ValidTill:    pulumi.String("nclrurexsnhed"),
/// 					},
/// 					CertificateRotationRestart:  pulumi.Bool(true),
/// 					CharacterSetName:            pulumi.String("bapraruogdpspvewmd"),
/// 					CopyTagsToSnapshot:          pulumi.Bool(true),
/// 					CustomIAMInstanceProfile:    pulumi.String("ronoghiguflpqdlwef"),
/// 					DbClusterIdentifier:         pulumi.String("mi"),
/// 					DbClusterSnapshotIdentifier: pulumi.String("biqdaekgjeyopntgrx"),
/// 					DbInstanceArn:               pulumi.String("xxk"),
/// 					DbInstanceClass:             pulumi.String("xvgbsmhvq"),
/// 					DbInstanceIdentifier:        pulumi.String("svbefulaqhcsf"),
/// 					DbName:                      pulumi.String("yryxlwvdmghqcfdlhdyykzejtyep"),
/// 					DbParameterGroupName:        pulumi.String("keuvtxklarpjmikkuwqqfanv"),
/// 					DbSecurityGroups: pulumi.StringArray{
/// 						pulumi.String("mgcichzarguqhevlwubzgbvs"),
/// 					},
/// 					DbSnapshotIdentifier:   pulumi.String("coykeofgbcwpjeihmmajttm"),
/// 					DbSubnetGroupName:      pulumi.String("yxd"),
/// 					DbSystemId:             pulumi.String("rlbhsqhwmezvevqsme"),
/// 					DbiResourceId:          pulumi.String("nlqlrrljz"),
/// 					DedicatedLogVolume:     pulumi.Bool(true),
/// 					DeleteAutomatedBackups: pulumi.Bool(true),
/// 					DeletionProtection:     pulumi.Bool(true),
/// 					Domain:                 pulumi.String("mkboglzqbejwwfplkhpiwsvndwphik"),
/// 					DomainAuthSecretArn:    pulumi.String("dmjcucptjkvsolzcwxwhv"),
/// 					DomainDnsIps: pulumi.StringArray{
/// 						pulumi.String("celohfbruu"),
/// 					},
/// 					DomainFqdn:        pulumi.String("txgpdsxlpqbasbbmpzzkdztlfphm"),
/// 					DomainIAMRoleName: pulumi.String("ljnyfnuzyqodzawuu"),
/// 					DomainOu:          pulumi.String("yhtbsdxktvxrtweyoo"),
/// 					EnableCloudwatchLogsExports: pulumi.StringArray{
/// 						pulumi.String("anqxngk"),
/// 					},
/// 					EnableIAMDatabaseAuthentication: pulumi.Bool(true),
/// 					EnablePerformanceInsights:       pulumi.Bool(true),
/// 					Endpoint: &awsconnector.RdsDbInstanceEndpointArgs{
/// 						Address:      pulumi.String("rmsxn"),
/// 						HostedZoneId: pulumi.String("mvsioevf"),
/// 						Port:         pulumi.String("gfpslsfdtnmrahrfppdwaf"),
/// 					},
/// 					Engine:                   pulumi.String("jztlgxuyyhlwrjkgree"),
/// 					EngineVersion:            pulumi.String("fwmhfzboltipjkflr"),
/// 					Iops:                     pulumi.Int(6),
/// 					KmsKeyId:                 pulumi.String("pbdblzy"),
/// 					LicenseModel:             pulumi.String("qcmsltdkpdsznfotmqdvnntnfor"),
/// 					ManageMasterUserPassword: pulumi.Bool(true),
/// 					MasterUserPassword:       pulumi.String("strxifasjrrb"),
/// 					MasterUserSecret: &awsconnector.MasterUserSecretArgs{
/// 						KmsKeyId:  pulumi.String("czgkafaksjqklj"),
/// 						SecretArn: pulumi.String("nxpshhiulxttzwuifbqnamexd"),
/// 					},
/// 					MasterUsername:                     pulumi.String("lfitzeghwpzjhcbje"),
/// 					MaxAllocatedStorage:                pulumi.Int(9),
/// 					MonitoringInterval:                 pulumi.Int(17),
/// 					MonitoringRoleArn:                  pulumi.String("a"),
/// 					MultiAZ:                            pulumi.Bool(true),
/// 					NcharCharacterSetName:              pulumi.String("cc"),
/// 					NetworkType:                        pulumi.String("bccgoqncxrhuwvgwvwta"),
/// 					OptionGroupName:                    pulumi.String("mftqhqogtwleqvlpjpbabps"),
/// 					PerformanceInsightsKMSKeyId:        pulumi.String("jyhbotj"),
/// 					PerformanceInsightsRetentionPeriod: pulumi.Int(27),
/// 					Port:                               pulumi.String("g"),
/// 					PreferredBackupWindow:              pulumi.String("wesxjihubbcfgwqebebkzmmfoipd"),
/// 					PreferredMaintenanceWindow:         pulumi.String("gtmzlucaagottcm"),
/// 					ProcessorFeatures: awsconnector.ProcessorFeatureArray{
/// 						&awsconnector.ProcessorFeatureArgs{
/// 							Name:  pulumi.String(awsconnector.ProcessorFeatureNameCoreCount),
/// 							Value: pulumi.String("qhhoewgkcuvttcihy"),
/// 						},
/// 					},
/// 					PromotionTier:                       pulumi.Int(12),
/// 					PubliclyAccessible:                  pulumi.Bool(true),
/// 					ReplicaMode:                         pulumi.String("poucyygmqhpztshwupms"),
/// 					RestoreTime:                         pulumi.String("nokteyfkzzvhgjtpmiwxajseiavtbk"),
/// 					SourceDBClusterIdentifier:           pulumi.String("gkdeeipcvhmgoabz"),
/// 					SourceDBInstanceAutomatedBackupsArn: pulumi.String("lisujvucnvopgkehpacmkjshk"),
/// 					SourceDBInstanceIdentifier:          pulumi.String("ypufdzwdqxkygzmrp"),
/// 					SourceDbiResourceId:                 pulumi.String("btzodcuervx"),
/// 					SourceRegion:                        pulumi.String("ez"),
/// 					StorageEncrypted:                    pulumi.Bool(true),
/// 					StorageThroughput:                   pulumi.Int(16),
/// 					StorageType:                         pulumi.String("ywcy"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("kilbegh"),
/// 							Value: pulumi.String("rdhflka"),
/// 						},
/// 					},
/// 					TdeCredentialArn:            pulumi.String("twmu"),
/// 					TdeCredentialPassword:       pulumi.String("fqedsuqphkwhafmptzeruepeqalyty"),
/// 					Timezone:                    pulumi.String("euyueykvptytmbnfj"),
/// 					UseDefaultProcessorFeatures: pulumi.Bool(true),
/// 					UseLatestRestorableTime:     pulumi.Bool(true),
/// 					VpcSecurityGroups: pulumi.StringArray{
/// 						pulumi.String("nxllphmorxutzaym"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("dmudtaomgrfchc"),
/// 				AwsSourceSchema: pulumi.String("cjfztsurj"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3142": pulumi.String("myscjjenjqhbmtoiyyjauxlu"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("etsvehjovtdbgzuwnmgw"),
/// 				PublicCloudResourceName:         pulumi.String("bvkzujojjsvihxyajddbqxygffaqm"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgrdsDBInstance"),
/// 			Tags: pulumi.StringMap{
/// 				"key7306": pulumi.String("yhvoznqrgbna"),
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
/// import com.pulumi.azurenative.awsconnector.RdsDbInstance;
/// import com.pulumi.azurenative.awsconnector.RdsDbInstanceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RdsDBInstancePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRdsDBInstancePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CertificateDetailsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RdsDbInstanceEndpointArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MasterUserSecretArgs;
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
///         var rdsDbInstance = new RdsDbInstance("rdsDbInstance", RdsDbInstanceArgs.builder()
///             .location("pktn")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(RdsDBInstancePropertiesArgs.builder()
///                 .arn("ikxozbmzhxy")
///                 .awsAccountId("xjspz")
///                 .awsProperties(AwsRdsDBInstancePropertiesArgs.builder()
///                     .allocatedStorage("ryhixfujuvwifznymxbze")
///                     .allowMajorVersionUpgrade(true)
///                     .associatedRoles(DBInstanceRoleArgs.builder()
///                         .featureName("jyivqbpnmvg")
///                         .roleArn("jblmzpmkcvnkvsxkswtmfqlwttf")
///                         .build())
///                     .autoMinorVersionUpgrade(true)
///                     .automaticBackupReplicationKmsKeyId("eqwqyzovzxcmragbjhqq")
///                     .automaticBackupReplicationRegion("h")
///                     .availabilityZone("ccdhbiqvvdxbszpuhcvsvpuqfrkosf")
///                     .backupRetentionPeriod(6)
///                     .caCertificateIdentifier("dp")
///                     .certificateDetails(CertificateDetailsArgs.builder()
///                         .caIdentifier("jathtqegixcwxcwmnrlrsycxvyp")
///                         .validTill("nclrurexsnhed")
///                         .build())
///                     .certificateRotationRestart(true)
///                     .characterSetName("bapraruogdpspvewmd")
///                     .copyTagsToSnapshot(true)
///                     .customIAMInstanceProfile("ronoghiguflpqdlwef")
///                     .dbClusterIdentifier("mi")
///                     .dbClusterSnapshotIdentifier("biqdaekgjeyopntgrx")
///                     .dbInstanceArn("xxk")
///                     .dbInstanceClass("xvgbsmhvq")
///                     .dbInstanceIdentifier("svbefulaqhcsf")
///                     .dbName("yryxlwvdmghqcfdlhdyykzejtyep")
///                     .dbParameterGroupName("keuvtxklarpjmikkuwqqfanv")
///                     .dbSecurityGroups("mgcichzarguqhevlwubzgbvs")
///                     .dbSnapshotIdentifier("coykeofgbcwpjeihmmajttm")
///                     .dbSubnetGroupName("yxd")
///                     .dbSystemId("rlbhsqhwmezvevqsme")
///                     .dbiResourceId("nlqlrrljz")
///                     .dedicatedLogVolume(true)
///                     .deleteAutomatedBackups(true)
///                     .deletionProtection(true)
///                     .domain("mkboglzqbejwwfplkhpiwsvndwphik")
///                     .domainAuthSecretArn("dmjcucptjkvsolzcwxwhv")
///                     .domainDnsIps("celohfbruu")
///                     .domainFqdn("txgpdsxlpqbasbbmpzzkdztlfphm")
///                     .domainIAMRoleName("ljnyfnuzyqodzawuu")
///                     .domainOu("yhtbsdxktvxrtweyoo")
///                     .enableCloudwatchLogsExports("anqxngk")
///                     .enableIAMDatabaseAuthentication(true)
///                     .enablePerformanceInsights(true)
///                     .endpoint(RdsDbInstanceEndpointArgs.builder()
///                         .address("rmsxn")
///                         .hostedZoneId("mvsioevf")
///                         .port("gfpslsfdtnmrahrfppdwaf")
///                         .build())
///                     .engine("jztlgxuyyhlwrjkgree")
///                     .engineVersion("fwmhfzboltipjkflr")
///                     .iops(6)
///                     .kmsKeyId("pbdblzy")
///                     .licenseModel("qcmsltdkpdsznfotmqdvnntnfor")
///                     .manageMasterUserPassword(true)
///                     .masterUserPassword("strxifasjrrb")
///                     .masterUserSecret(MasterUserSecretArgs.builder()
///                         .kmsKeyId("czgkafaksjqklj")
///                         .secretArn("nxpshhiulxttzwuifbqnamexd")
///                         .build())
///                     .masterUsername("lfitzeghwpzjhcbje")
///                     .maxAllocatedStorage(9)
///                     .monitoringInterval(17)
///                     .monitoringRoleArn("a")
///                     .multiAZ(true)
///                     .ncharCharacterSetName("cc")
///                     .networkType("bccgoqncxrhuwvgwvwta")
///                     .optionGroupName("mftqhqogtwleqvlpjpbabps")
///                     .performanceInsightsKMSKeyId("jyhbotj")
///                     .performanceInsightsRetentionPeriod(27)
///                     .port("g")
///                     .preferredBackupWindow("wesxjihubbcfgwqebebkzmmfoipd")
///                     .preferredMaintenanceWindow("gtmzlucaagottcm")
///                     .processorFeatures(ProcessorFeatureArgs.builder()
///                         .name("coreCount")
///                         .value("qhhoewgkcuvttcihy")
///                         .build())
///                     .promotionTier(12)
///                     .publiclyAccessible(true)
///                     .replicaMode("poucyygmqhpztshwupms")
///                     .restoreTime("nokteyfkzzvhgjtpmiwxajseiavtbk")
///                     .sourceDBClusterIdentifier("gkdeeipcvhmgoabz")
///                     .sourceDBInstanceAutomatedBackupsArn("lisujvucnvopgkehpacmkjshk")
///                     .sourceDBInstanceIdentifier("ypufdzwdqxkygzmrp")
///                     .sourceDbiResourceId("btzodcuervx")
///                     .sourceRegion("ez")
///                     .storageEncrypted(true)
///                     .storageThroughput(16)
///                     .storageType("ywcy")
///                     .tags(TagArgs.builder()
///                         .key("kilbegh")
///                         .value("rdhflka")
///                         .build())
///                     .tdeCredentialArn("twmu")
///                     .tdeCredentialPassword("fqedsuqphkwhafmptzeruepeqalyty")
///                     .timezone("euyueykvptytmbnfj")
///                     .useDefaultProcessorFeatures(true)
///                     .useLatestRestorableTime(true)
///                     .vpcSecurityGroups("nxllphmorxutzaym")
///                     .build())
///                 .awsRegion("dmudtaomgrfchc")
///                 .awsSourceSchema("cjfztsurj")
///                 .awsTags(Map.of("key3142", "myscjjenjqhbmtoiyyjauxlu"))
///                 .publicCloudConnectorsResourceId("etsvehjovtdbgzuwnmgw")
///                 .publicCloudResourceName("bvkzujojjsvihxyajddbqxygffaqm")
///                 .build())
///             .resourceGroupName("rgrdsDBInstance")
///             .tags(Map.of("key7306", "yhvoznqrgbna"))
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
/// const rdsDbInstance = new azure_native.awsconnector.RdsDbInstance("rdsDbInstance", {
///     location: "pktn",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "ikxozbmzhxy",
///         awsAccountId: "xjspz",
///         awsProperties: {
///             allocatedStorage: "ryhixfujuvwifznymxbze",
///             allowMajorVersionUpgrade: true,
///             associatedRoles: [{
///                 featureName: "jyivqbpnmvg",
///                 roleArn: "jblmzpmkcvnkvsxkswtmfqlwttf",
///             }],
///             autoMinorVersionUpgrade: true,
///             automaticBackupReplicationKmsKeyId: "eqwqyzovzxcmragbjhqq",
///             automaticBackupReplicationRegion: "h",
///             availabilityZone: "ccdhbiqvvdxbszpuhcvsvpuqfrkosf",
///             backupRetentionPeriod: 6,
///             caCertificateIdentifier: "dp",
///             certificateDetails: {
///                 caIdentifier: "jathtqegixcwxcwmnrlrsycxvyp",
///                 validTill: "nclrurexsnhed",
///             },
///             certificateRotationRestart: true,
///             characterSetName: "bapraruogdpspvewmd",
///             copyTagsToSnapshot: true,
///             customIAMInstanceProfile: "ronoghiguflpqdlwef",
///             dbClusterIdentifier: "mi",
///             dbClusterSnapshotIdentifier: "biqdaekgjeyopntgrx",
///             dbInstanceArn: "xxk",
///             dbInstanceClass: "xvgbsmhvq",
///             dbInstanceIdentifier: "svbefulaqhcsf",
///             dbName: "yryxlwvdmghqcfdlhdyykzejtyep",
///             dbParameterGroupName: "keuvtxklarpjmikkuwqqfanv",
///             dbSecurityGroups: ["mgcichzarguqhevlwubzgbvs"],
///             dbSnapshotIdentifier: "coykeofgbcwpjeihmmajttm",
///             dbSubnetGroupName: "yxd",
///             dbSystemId: "rlbhsqhwmezvevqsme",
///             dbiResourceId: "nlqlrrljz",
///             dedicatedLogVolume: true,
///             deleteAutomatedBackups: true,
///             deletionProtection: true,
///             domain: "mkboglzqbejwwfplkhpiwsvndwphik",
///             domainAuthSecretArn: "dmjcucptjkvsolzcwxwhv",
///             domainDnsIps: ["celohfbruu"],
///             domainFqdn: "txgpdsxlpqbasbbmpzzkdztlfphm",
///             domainIAMRoleName: "ljnyfnuzyqodzawuu",
///             domainOu: "yhtbsdxktvxrtweyoo",
///             enableCloudwatchLogsExports: ["anqxngk"],
///             enableIAMDatabaseAuthentication: true,
///             enablePerformanceInsights: true,
///             endpoint: {
///                 address: "rmsxn",
///                 hostedZoneId: "mvsioevf",
///                 port: "gfpslsfdtnmrahrfppdwaf",
///             },
///             engine: "jztlgxuyyhlwrjkgree",
///             engineVersion: "fwmhfzboltipjkflr",
///             iops: 6,
///             kmsKeyId: "pbdblzy",
///             licenseModel: "qcmsltdkpdsznfotmqdvnntnfor",
///             manageMasterUserPassword: true,
///             masterUserPassword: "strxifasjrrb",
///             masterUserSecret: {
///                 kmsKeyId: "czgkafaksjqklj",
///                 secretArn: "nxpshhiulxttzwuifbqnamexd",
///             },
///             masterUsername: "lfitzeghwpzjhcbje",
///             maxAllocatedStorage: 9,
///             monitoringInterval: 17,
///             monitoringRoleArn: "a",
///             multiAZ: true,
///             ncharCharacterSetName: "cc",
///             networkType: "bccgoqncxrhuwvgwvwta",
///             optionGroupName: "mftqhqogtwleqvlpjpbabps",
///             performanceInsightsKMSKeyId: "jyhbotj",
///             performanceInsightsRetentionPeriod: 27,
///             port: "g",
///             preferredBackupWindow: "wesxjihubbcfgwqebebkzmmfoipd",
///             preferredMaintenanceWindow: "gtmzlucaagottcm",
///             processorFeatures: [{
///                 name: azure_native.awsconnector.ProcessorFeatureName.CoreCount,
///                 value: "qhhoewgkcuvttcihy",
///             }],
///             promotionTier: 12,
///             publiclyAccessible: true,
///             replicaMode: "poucyygmqhpztshwupms",
///             restoreTime: "nokteyfkzzvhgjtpmiwxajseiavtbk",
///             sourceDBClusterIdentifier: "gkdeeipcvhmgoabz",
///             sourceDBInstanceAutomatedBackupsArn: "lisujvucnvopgkehpacmkjshk",
///             sourceDBInstanceIdentifier: "ypufdzwdqxkygzmrp",
///             sourceDbiResourceId: "btzodcuervx",
///             sourceRegion: "ez",
///             storageEncrypted: true,
///             storageThroughput: 16,
///             storageType: "ywcy",
///             tags: [{
///                 key: "kilbegh",
///                 value: "rdhflka",
///             }],
///             tdeCredentialArn: "twmu",
///             tdeCredentialPassword: "fqedsuqphkwhafmptzeruepeqalyty",
///             timezone: "euyueykvptytmbnfj",
///             useDefaultProcessorFeatures: true,
///             useLatestRestorableTime: true,
///             vpcSecurityGroups: ["nxllphmorxutzaym"],
///         },
///         awsRegion: "dmudtaomgrfchc",
///         awsSourceSchema: "cjfztsurj",
///         awsTags: {
///             key3142: "myscjjenjqhbmtoiyyjauxlu",
///         },
///         publicCloudConnectorsResourceId: "etsvehjovtdbgzuwnmgw",
///         publicCloudResourceName: "bvkzujojjsvihxyajddbqxygffaqm",
///     },
///     resourceGroupName: "rgrdsDBInstance",
///     tags: {
///         key7306: "yhvoznqrgbna",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rds_db_instance = azure_native.awsconnector.RdsDbInstance("rdsDbInstance",
///     location="pktn",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "ikxozbmzhxy",
///         "aws_account_id": "xjspz",
///         "aws_properties": {
///             "allocated_storage": "ryhixfujuvwifznymxbze",
///             "allow_major_version_upgrade": True,
///             "associated_roles": [{
///                 "feature_name": "jyivqbpnmvg",
///                 "role_arn": "jblmzpmkcvnkvsxkswtmfqlwttf",
///             }],
///             "auto_minor_version_upgrade": True,
///             "automatic_backup_replication_kms_key_id": "eqwqyzovzxcmragbjhqq",
///             "automatic_backup_replication_region": "h",
///             "availability_zone": "ccdhbiqvvdxbszpuhcvsvpuqfrkosf",
///             "backup_retention_period": 6,
///             "ca_certificate_identifier": "dp",
///             "certificate_details": {
///                 "ca_identifier": "jathtqegixcwxcwmnrlrsycxvyp",
///                 "valid_till": "nclrurexsnhed",
///             },
///             "certificate_rotation_restart": True,
///             "character_set_name": "bapraruogdpspvewmd",
///             "copy_tags_to_snapshot": True,
///             "custom_iam_instance_profile": "ronoghiguflpqdlwef",
///             "db_cluster_identifier": "mi",
///             "db_cluster_snapshot_identifier": "biqdaekgjeyopntgrx",
///             "db_instance_arn": "xxk",
///             "db_instance_class": "xvgbsmhvq",
///             "db_instance_identifier": "svbefulaqhcsf",
///             "db_name": "yryxlwvdmghqcfdlhdyykzejtyep",
///             "db_parameter_group_name": "keuvtxklarpjmikkuwqqfanv",
///             "db_security_groups": ["mgcichzarguqhevlwubzgbvs"],
///             "db_snapshot_identifier": "coykeofgbcwpjeihmmajttm",
///             "db_subnet_group_name": "yxd",
///             "db_system_id": "rlbhsqhwmezvevqsme",
///             "dbi_resource_id": "nlqlrrljz",
///             "dedicated_log_volume": True,
///             "delete_automated_backups": True,
///             "deletion_protection": True,
///             "domain": "mkboglzqbejwwfplkhpiwsvndwphik",
///             "domain_auth_secret_arn": "dmjcucptjkvsolzcwxwhv",
///             "domain_dns_ips": ["celohfbruu"],
///             "domain_fqdn": "txgpdsxlpqbasbbmpzzkdztlfphm",
///             "domain_iam_role_name": "ljnyfnuzyqodzawuu",
///             "domain_ou": "yhtbsdxktvxrtweyoo",
///             "enable_cloudwatch_logs_exports": ["anqxngk"],
///             "enable_iam_database_authentication": True,
///             "enable_performance_insights": True,
///             "endpoint": {
///                 "address": "rmsxn",
///                 "hosted_zone_id": "mvsioevf",
///                 "port": "gfpslsfdtnmrahrfppdwaf",
///             },
///             "engine": "jztlgxuyyhlwrjkgree",
///             "engine_version": "fwmhfzboltipjkflr",
///             "iops": 6,
///             "kms_key_id": "pbdblzy",
///             "license_model": "qcmsltdkpdsznfotmqdvnntnfor",
///             "manage_master_user_password": True,
///             "master_user_password": "strxifasjrrb",
///             "master_user_secret": {
///                 "kms_key_id": "czgkafaksjqklj",
///                 "secret_arn": "nxpshhiulxttzwuifbqnamexd",
///             },
///             "master_username": "lfitzeghwpzjhcbje",
///             "max_allocated_storage": 9,
///             "monitoring_interval": 17,
///             "monitoring_role_arn": "a",
///             "multi_az": True,
///             "nchar_character_set_name": "cc",
///             "network_type": "bccgoqncxrhuwvgwvwta",
///             "option_group_name": "mftqhqogtwleqvlpjpbabps",
///             "performance_insights_kms_key_id": "jyhbotj",
///             "performance_insights_retention_period": 27,
///             "port": "g",
///             "preferred_backup_window": "wesxjihubbcfgwqebebkzmmfoipd",
///             "preferred_maintenance_window": "gtmzlucaagottcm",
///             "processor_features": [{
///                 "name": azure_native.awsconnector.ProcessorFeatureName.CORE_COUNT,
///                 "value": "qhhoewgkcuvttcihy",
///             }],
///             "promotion_tier": 12,
///             "publicly_accessible": True,
///             "replica_mode": "poucyygmqhpztshwupms",
///             "restore_time": "nokteyfkzzvhgjtpmiwxajseiavtbk",
///             "source_db_cluster_identifier": "gkdeeipcvhmgoabz",
///             "source_db_instance_automated_backups_arn": "lisujvucnvopgkehpacmkjshk",
///             "source_db_instance_identifier": "ypufdzwdqxkygzmrp",
///             "source_dbi_resource_id": "btzodcuervx",
///             "source_region": "ez",
///             "storage_encrypted": True,
///             "storage_throughput": 16,
///             "storage_type": "ywcy",
///             "tags": [{
///                 "key": "kilbegh",
///                 "value": "rdhflka",
///             }],
///             "tde_credential_arn": "twmu",
///             "tde_credential_password": "fqedsuqphkwhafmptzeruepeqalyty",
///             "timezone": "euyueykvptytmbnfj",
///             "use_default_processor_features": True,
///             "use_latest_restorable_time": True,
///             "vpc_security_groups": ["nxllphmorxutzaym"],
///         },
///         "aws_region": "dmudtaomgrfchc",
///         "aws_source_schema": "cjfztsurj",
///         "aws_tags": {
///             "key3142": "myscjjenjqhbmtoiyyjauxlu",
///         },
///         "public_cloud_connectors_resource_id": "etsvehjovtdbgzuwnmgw",
///         "public_cloud_resource_name": "bvkzujojjsvihxyajddbqxygffaqm",
///     },
///     resource_group_name="rgrdsDBInstance",
///     tags={
///         "key7306": "yhvoznqrgbna",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   rdsDbInstance:
///     type: azure-native:awsconnector:RdsDbInstance
///     properties:
///       location: pktn
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: ikxozbmzhxy
///         awsAccountId: xjspz
///         awsProperties:
///           allocatedStorage: ryhixfujuvwifznymxbze
///           allowMajorVersionUpgrade: true
///           associatedRoles:
///             - featureName: jyivqbpnmvg
///               roleArn: jblmzpmkcvnkvsxkswtmfqlwttf
///           autoMinorVersionUpgrade: true
///           automaticBackupReplicationKmsKeyId: eqwqyzovzxcmragbjhqq
///           automaticBackupReplicationRegion: h
///           availabilityZone: ccdhbiqvvdxbszpuhcvsvpuqfrkosf
///           backupRetentionPeriod: 6
///           caCertificateIdentifier: dp
///           certificateDetails:
///             caIdentifier: jathtqegixcwxcwmnrlrsycxvyp
///             validTill: nclrurexsnhed
///           certificateRotationRestart: true
///           characterSetName: bapraruogdpspvewmd
///           copyTagsToSnapshot: true
///           customIAMInstanceProfile: ronoghiguflpqdlwef
///           dbClusterIdentifier: mi
///           dbClusterSnapshotIdentifier: biqdaekgjeyopntgrx
///           dbInstanceArn: xxk
///           dbInstanceClass: xvgbsmhvq
///           dbInstanceIdentifier: svbefulaqhcsf
///           dbName: yryxlwvdmghqcfdlhdyykzejtyep
///           dbParameterGroupName: keuvtxklarpjmikkuwqqfanv
///           dbSecurityGroups:
///             - mgcichzarguqhevlwubzgbvs
///           dbSnapshotIdentifier: coykeofgbcwpjeihmmajttm
///           dbSubnetGroupName: yxd
///           dbSystemId: rlbhsqhwmezvevqsme
///           dbiResourceId: nlqlrrljz
///           dedicatedLogVolume: true
///           deleteAutomatedBackups: true
///           deletionProtection: true
///           domain: mkboglzqbejwwfplkhpiwsvndwphik
///           domainAuthSecretArn: dmjcucptjkvsolzcwxwhv
///           domainDnsIps:
///             - celohfbruu
///           domainFqdn: txgpdsxlpqbasbbmpzzkdztlfphm
///           domainIAMRoleName: ljnyfnuzyqodzawuu
///           domainOu: yhtbsdxktvxrtweyoo
///           enableCloudwatchLogsExports:
///             - anqxngk
///           enableIAMDatabaseAuthentication: true
///           enablePerformanceInsights: true
///           endpoint:
///             address: rmsxn
///             hostedZoneId: mvsioevf
///             port: gfpslsfdtnmrahrfppdwaf
///           engine: jztlgxuyyhlwrjkgree
///           engineVersion: fwmhfzboltipjkflr
///           iops: 6
///           kmsKeyId: pbdblzy
///           licenseModel: qcmsltdkpdsznfotmqdvnntnfor
///           manageMasterUserPassword: true
///           masterUserPassword: strxifasjrrb
///           masterUserSecret:
///             kmsKeyId: czgkafaksjqklj
///             secretArn: nxpshhiulxttzwuifbqnamexd
///           masterUsername: lfitzeghwpzjhcbje
///           maxAllocatedStorage: 9
///           monitoringInterval: 17
///           monitoringRoleArn: a
///           multiAZ: true
///           ncharCharacterSetName: cc
///           networkType: bccgoqncxrhuwvgwvwta
///           optionGroupName: mftqhqogtwleqvlpjpbabps
///           performanceInsightsKMSKeyId: jyhbotj
///           performanceInsightsRetentionPeriod: 27
///           port: g
///           preferredBackupWindow: wesxjihubbcfgwqebebkzmmfoipd
///           preferredMaintenanceWindow: gtmzlucaagottcm
///           processorFeatures:
///             - name: coreCount
///               value: qhhoewgkcuvttcihy
///           promotionTier: 12
///           publiclyAccessible: true
///           replicaMode: poucyygmqhpztshwupms
///           restoreTime: nokteyfkzzvhgjtpmiwxajseiavtbk
///           sourceDBClusterIdentifier: gkdeeipcvhmgoabz
///           sourceDBInstanceAutomatedBackupsArn: lisujvucnvopgkehpacmkjshk
///           sourceDBInstanceIdentifier: ypufdzwdqxkygzmrp
///           sourceDbiResourceId: btzodcuervx
///           sourceRegion: ez
///           storageEncrypted: true
///           storageThroughput: 16
///           storageType: ywcy
///           tags:
///             - key: kilbegh
///               value: rdhflka
///           tdeCredentialArn: twmu
///           tdeCredentialPassword: fqedsuqphkwhafmptzeruepeqalyty
///           timezone: euyueykvptytmbnfj
///           useDefaultProcessorFeatures: true
///           useLatestRestorableTime: true
///           vpcSecurityGroups:
///             - nxllphmorxutzaym
///         awsRegion: dmudtaomgrfchc
///         awsSourceSchema: cjfztsurj
///         awsTags:
///           key3142: myscjjenjqhbmtoiyyjauxlu
///         publicCloudConnectorsResourceId: etsvehjovtdbgzuwnmgw
///         publicCloudResourceName: bvkzujojjsvihxyajddbqxygffaqm
///       resourceGroupName: rgrdsDBInstance
///       tags:
///         key7306: yhvoznqrgbna
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
/// $ pulumi import azure-native:awsconnector:RdsDbInstance mlawrgduorvzcrxqyngpsq /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/rdsDBInstances/{name}
/// ```
class RdsDbInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<RdsDBInstancePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RdsDbInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsDbInstance]. {@macro pulumi_awsconnector_rds_db_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsDbInstance(
    String name, {
    RdsDbInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:RdsDbInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RdsDBInstancePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RdsDBInstancePropertiesResponse.fromMap(
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
