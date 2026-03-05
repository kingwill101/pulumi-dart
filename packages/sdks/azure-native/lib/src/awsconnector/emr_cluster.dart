import 'package:pulumi/pulumi.dart' as pulumi;
import 'emr_cluster_args.dart';
import 'emr_cluster_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EmrClusters_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var emrCluster = new AzureNative.AwsConnector.EmrCluster("emrCluster", new()
///     {
///         Location = "gxjyaumpubnajcudsqwk",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.EmrClusterPropertiesArgs
///         {
///             Arn = "hvhwzh",
///             AwsAccountId = "tsnkbdcacnozmtgvxjflzydxeu",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEmrClusterPropertiesArgs
///             {
///                 Applications = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ApplicationArgs
///                     {
///                         AdditionalInfo =
///                         {
///                             { "key299", "utebwgfwrjdsmcdauxfdp" },
///                         },
///                         Args = new[]
///                         {
///                             "sumnqhhlrszgzznshwr",
///                         },
///                         Name = "kapcvpwdf",
///                         Version = "yccwkryikpyu",
///                     },
///                 },
///                 AutoScalingRole = "yuplht",
///                 AutoTerminate = true,
///                 ClusterArn = "bwnxmqzwlykxvewsdujzovqs",
///                 Configurations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ConfigurationArgs
///                     {
///                         Classification = "ahweyaesthmgtdiv",
///                         Configurations = new() { },
///                         Properties =
///                         {
///                             { "key6744", "jfktwevmtaitzgjhgrxhcsyaf" },
///                         },
///                     },
///                 },
///                 CustomAmiId = "iwlvorsznjsaunx",
///                 EbsRootVolumeIops = 28,
///                 EbsRootVolumeSize = 25,
///                 EbsRootVolumeThroughput = 17,
///                 Ec2InstanceAttributes = new AzureNative.AwsConnector.Inputs.Ec2InstanceAttributesArgs
///                 {
///                     AdditionalMasterSecurityGroups = new[]
///                     {
///                         "pzihpojfcoxrdcrosktssgf",
///                     },
///                     AdditionalSlaveSecurityGroups = new[]
///                     {
///                         "rdaccocuctxwwzt",
///                     },
///                     Ec2AvailabilityZone = "bwaaomtre",
///                     Ec2KeyName = "jej",
///                     Ec2SubnetId = "ykhysdwgksrwehd",
///                     EmrManagedMasterSecurityGroup = "rjwslxsygj",
///                     EmrManagedSlaveSecurityGroup = "hvmxzsjgkhxnimtofmzlpkf",
///                     IamInstanceProfile = "wxgp",
///                     RequestedEc2AvailabilityZones = new[]
///                     {
///                         "wjzsvq",
///                     },
///                     RequestedEc2SubnetIds = new[]
///                     {
///                         "nliztbuhuhkve",
///                     },
///                     ServiceAccessSecurityGroup = "supzzejzwqetvnebvhefvwofww",
///                 },
///                 Id = "usolewchtbnpfarqidjcaetetbbnww",
///                 InstanceCollectionType = new AzureNative.AwsConnector.Inputs.InstanceCollectionTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.InstanceCollectionType.INSTANCE_FLEET,
///                 },
///                 KerberosAttributes = new AzureNative.AwsConnector.Inputs.KerberosAttributesArgs
///                 {
///                     AdDomainJoinPassword = "nhrnfruuygxsvhumivr",
///                     AdDomainJoinUser = "ezsezwfzesdunmtiegxbsomqqk",
///                     CrossRealmTrustPrincipalPassword = "rpvurwogufbkyluimlirujvpwl",
///                     KdcAdminPassword = "yzsewywylqtqouxwulr",
///                     Realm = "rraygrjruzeqrozds",
///                 },
///                 LogEncryptionKmsKeyId = "p",
///                 LogUri = "xrdeudkf",
///                 MasterPublicDnsName = "ztuajioptfwewm",
///                 Name = "bhkvffeitkj",
///                 NormalizedInstanceHours = 16,
///                 OsReleaseLabel = "huxdgdaqkknvleyvhgydjbidn",
///                 OutpostArn = "wnoxdzcyqfbreqnkorlwtfvmzpcu",
///                 PlacementGroups = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.PlacementGroupConfigArgs
///                     {
///                         InstanceRole = new AzureNative.AwsConnector.Inputs.InstanceRoleTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.InstanceRoleType.CORE,
///                         },
///                         PlacementStrategy = new AzureNative.AwsConnector.Inputs.PlacementGroupStrategyEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.PlacementGroupStrategy.CLUSTER,
///                         },
///                     },
///                 },
///                 ReleaseLabel = "lpmpniehmkeuwyyh",
///                 RepoUpgradeOnBoot = new AzureNative.AwsConnector.Inputs.RepoUpgradeOnBootEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.RepoUpgradeOnBoot.NONE,
///                 },
///                 RequestedAmiVersion = "kwlohrrhuxcgnok",
///                 RunningAmiVersion = "wd",
///                 ScaleDownBehavior = new AzureNative.AwsConnector.Inputs.ScaleDownBehaviorEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ScaleDownBehavior.TERMINATE_AT_INSTANCE_HOUR,
///                 },
///                 SecurityConfiguration = "njgb",
///                 ServiceRole = "msbrnoepcyrbaazxsmwbhmqrzubm",
///                 Status = new AzureNative.AwsConnector.Inputs.EmrClusterStatusArgs
///                 {
///                     ErrorDetails = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.ErrorDetailArgs
///                         {
///                             ErrorCode = "lklafbu",
///                             ErrorData = new[]
///                             {
///                                 null,
///                             },
///                             ErrorMessage = "hhoucsczmnnflofzyxt",
///                         },
///                     },
///                     State = new AzureNative.AwsConnector.Inputs.ClusterStateEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.ClusterState.BOOTSTRAPPING,
///                     },
///                     StateChangeReason = new AzureNative.AwsConnector.Inputs.ClusterStateChangeReasonArgs
///                     {
///                         Code = new AzureNative.AwsConnector.Inputs.ClusterStateChangeReasonCodeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.ClusterStateChangeReasonCode.ALL_STEPS_COMPLETED,
///                         },
///                         Message = "sxjkazmayqtbqnbaslxpxun",
///                     },
///                     Timeline = new AzureNative.AwsConnector.Inputs.ClusterTimelineArgs
///                     {
///                         CreationDateTime = "2024-10-08T03:51:42.281Z",
///                         EndDateTime = "2024-10-08T03:51:42.281Z",
///                         ReadyDateTime = "2024-10-08T03:51:42.281Z",
///                     },
///                 },
///                 StepConcurrencyLevel = 8,
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "vfcae",
///                         Value = "gibogfcbfiielvixdxeb",
///                     },
///                 },
///                 TerminationProtected = true,
///                 UnhealthyNodeReplacement = true,
///                 VisibleToAllUsers = true,
///             },
///             AwsRegion = "rbbkoztkjhvdu",
///             AwsSourceSchema = "sexomixwzozkllipdmi",
///             AwsTags =
///             {
///                 { "key6409", "fsgzxbnbmfnv" },
///             },
///             PublicCloudConnectorsResourceId = "gjirecopxmcdpdljkxexxoawwd",
///             PublicCloudResourceName = "aulznvgpxpjdvghbszbwxycew",
///         },
///         ResourceGroupName = "rgemrCluster",
///         Tags =
///         {
///             { "key4944", "rpsyifovzprbxzcudooiqiqliub" },
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
/// 		_, err := awsconnector.NewEmrCluster(ctx, "emrCluster", &awsconnector.EmrClusterArgs{
/// 			Location: pulumi.String("gxjyaumpubnajcudsqwk"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.EmrClusterPropertiesArgs{
/// 				Arn:          pulumi.String("hvhwzh"),
/// 				AwsAccountId: pulumi.String("tsnkbdcacnozmtgvxjflzydxeu"),
/// 				AwsProperties: &awsconnector.AwsEmrClusterPropertiesArgs{
/// 					Applications: awsconnector.ApplicationArray{
/// 						&awsconnector.ApplicationArgs{
/// 							AdditionalInfo: pulumi.StringMap{
/// 								"key299": pulumi.String("utebwgfwrjdsmcdauxfdp"),
/// 							},
/// 							Args: pulumi.StringArray{
/// 								pulumi.String("sumnqhhlrszgzznshwr"),
/// 							},
/// 							Name:    pulumi.String("kapcvpwdf"),
/// 							Version: pulumi.String("yccwkryikpyu"),
/// 						},
/// 					},
/// 					AutoScalingRole: pulumi.String("yuplht"),
/// 					AutoTerminate:   pulumi.Bool(true),
/// 					ClusterArn:      pulumi.String("bwnxmqzwlykxvewsdujzovqs"),
/// 					Configurations: awsconnector.ConfigurationArray{
/// 						&awsconnector.ConfigurationArgs{
/// 							Classification: pulumi.String("ahweyaesthmgtdiv"),
/// 							Configurations: awsconnector.ConfigurationArray{},
/// 							Properties: pulumi.StringMap{
/// 								"key6744": pulumi.String("jfktwevmtaitzgjhgrxhcsyaf"),
/// 							},
/// 						},
/// 					},
/// 					CustomAmiId:             pulumi.String("iwlvorsznjsaunx"),
/// 					EbsRootVolumeIops:       pulumi.Int(28),
/// 					EbsRootVolumeSize:       pulumi.Int(25),
/// 					EbsRootVolumeThroughput: pulumi.Int(17),
/// 					Ec2InstanceAttributes: &awsconnector.Ec2InstanceAttributesArgs{
/// 						AdditionalMasterSecurityGroups: pulumi.StringArray{
/// 							pulumi.String("pzihpojfcoxrdcrosktssgf"),
/// 						},
/// 						AdditionalSlaveSecurityGroups: pulumi.StringArray{
/// 							pulumi.String("rdaccocuctxwwzt"),
/// 						},
/// 						Ec2AvailabilityZone:           pulumi.String("bwaaomtre"),
/// 						Ec2KeyName:                    pulumi.String("jej"),
/// 						Ec2SubnetId:                   pulumi.String("ykhysdwgksrwehd"),
/// 						EmrManagedMasterSecurityGroup: pulumi.String("rjwslxsygj"),
/// 						EmrManagedSlaveSecurityGroup:  pulumi.String("hvmxzsjgkhxnimtofmzlpkf"),
/// 						IamInstanceProfile:            pulumi.String("wxgp"),
/// 						RequestedEc2AvailabilityZones: pulumi.StringArray{
/// 							pulumi.String("wjzsvq"),
/// 						},
/// 						RequestedEc2SubnetIds: pulumi.StringArray{
/// 							pulumi.String("nliztbuhuhkve"),
/// 						},
/// 						ServiceAccessSecurityGroup: pulumi.String("supzzejzwqetvnebvhefvwofww"),
/// 					},
/// 					Id: pulumi.String("usolewchtbnpfarqidjcaetetbbnww"),
/// 					InstanceCollectionType: &awsconnector.InstanceCollectionTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.InstanceCollectionType_INSTANCE_FLEET),
/// 					},
/// 					KerberosAttributes: &awsconnector.KerberosAttributesArgs{
/// 						AdDomainJoinPassword:             pulumi.String("nhrnfruuygxsvhumivr"),
/// 						AdDomainJoinUser:                 pulumi.String("ezsezwfzesdunmtiegxbsomqqk"),
/// 						CrossRealmTrustPrincipalPassword: pulumi.String("rpvurwogufbkyluimlirujvpwl"),
/// 						KdcAdminPassword:                 pulumi.String("yzsewywylqtqouxwulr"),
/// 						Realm:                            pulumi.String("rraygrjruzeqrozds"),
/// 					},
/// 					LogEncryptionKmsKeyId:   pulumi.String("p"),
/// 					LogUri:                  pulumi.String("xrdeudkf"),
/// 					MasterPublicDnsName:     pulumi.String("ztuajioptfwewm"),
/// 					Name:                    pulumi.String("bhkvffeitkj"),
/// 					NormalizedInstanceHours: pulumi.Int(16),
/// 					OsReleaseLabel:          pulumi.String("huxdgdaqkknvleyvhgydjbidn"),
/// 					OutpostArn:              pulumi.String("wnoxdzcyqfbreqnkorlwtfvmzpcu"),
/// 					PlacementGroups: awsconnector.PlacementGroupConfigArray{
/// 						&awsconnector.PlacementGroupConfigArgs{
/// 							InstanceRole: &awsconnector.InstanceRoleTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.InstanceRoleTypeCORE),
/// 							},
/// 							PlacementStrategy: &awsconnector.PlacementGroupStrategyEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.PlacementGroupStrategyCLUSTER),
/// 							},
/// 						},
/// 					},
/// 					ReleaseLabel: pulumi.String("lpmpniehmkeuwyyh"),
/// 					RepoUpgradeOnBoot: &awsconnector.RepoUpgradeOnBootEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.RepoUpgradeOnBootNONE),
/// 					},
/// 					RequestedAmiVersion: pulumi.String("kwlohrrhuxcgnok"),
/// 					RunningAmiVersion:   pulumi.String("wd"),
/// 					ScaleDownBehavior: &awsconnector.ScaleDownBehaviorEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ScaleDownBehavior_TERMINATE_AT_INSTANCE_HOUR),
/// 					},
/// 					SecurityConfiguration: pulumi.String("njgb"),
/// 					ServiceRole:           pulumi.String("msbrnoepcyrbaazxsmwbhmqrzubm"),
/// 					Status: &awsconnector.EmrClusterStatusArgs{
/// 						ErrorDetails: awsconnector.ErrorDetailArray{
/// 							&awsconnector.ErrorDetailArgs{
/// 								ErrorCode: pulumi.String("lklafbu"),
/// 								ErrorData: pulumi.Array{
/// 									pulumi.Any(map[string]interface{}{}),
/// 								},
/// 								ErrorMessage: pulumi.String("hhoucsczmnnflofzyxt"),
/// 							},
/// 						},
/// 						State: &awsconnector.ClusterStateEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.ClusterStateBOOTSTRAPPING),
/// 						},
/// 						StateChangeReason: &awsconnector.ClusterStateChangeReasonArgs{
/// 							Code: &awsconnector.ClusterStateChangeReasonCodeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.ClusterStateChangeReasonCode_ALL_STEPS_COMPLETED),
/// 							},
/// 							Message: pulumi.String("sxjkazmayqtbqnbaslxpxun"),
/// 						},
/// 						Timeline: &awsconnector.ClusterTimelineArgs{
/// 							CreationDateTime: pulumi.String("2024-10-08T03:51:42.281Z"),
/// 							EndDateTime:      pulumi.String("2024-10-08T03:51:42.281Z"),
/// 							ReadyDateTime:    pulumi.String("2024-10-08T03:51:42.281Z"),
/// 						},
/// 					},
/// 					StepConcurrencyLevel: pulumi.Int(8),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("vfcae"),
/// 							Value: pulumi.String("gibogfcbfiielvixdxeb"),
/// 						},
/// 					},
/// 					TerminationProtected:     pulumi.Bool(true),
/// 					UnhealthyNodeReplacement: pulumi.Bool(true),
/// 					VisibleToAllUsers:        pulumi.Bool(true),
/// 				},
/// 				AwsRegion:       pulumi.String("rbbkoztkjhvdu"),
/// 				AwsSourceSchema: pulumi.String("sexomixwzozkllipdmi"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6409": pulumi.String("fsgzxbnbmfnv"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("gjirecopxmcdpdljkxexxoawwd"),
/// 				PublicCloudResourceName:         pulumi.String("aulznvgpxpjdvghbszbwxycew"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgemrCluster"),
/// 			Tags: pulumi.StringMap{
/// 				"key4944": pulumi.String("rpsyifovzprbxzcudooiqiqliub"),
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
/// import com.pulumi.azurenative.awsconnector.EmrCluster;
/// import com.pulumi.azurenative.awsconnector.EmrClusterArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EmrClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEmrClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2InstanceAttributesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceCollectionTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.KerberosAttributesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RepoUpgradeOnBootEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ScaleDownBehaviorEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EmrClusterStatusArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ClusterStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ClusterStateChangeReasonArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ClusterStateChangeReasonCodeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ClusterTimelineArgs;
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
///         var emrCluster = new EmrCluster("emrCluster", EmrClusterArgs.builder()
///             .location("gxjyaumpubnajcudsqwk")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(EmrClusterPropertiesArgs.builder()
///                 .arn("hvhwzh")
///                 .awsAccountId("tsnkbdcacnozmtgvxjflzydxeu")
///                 .awsProperties(Map.ofEntries(
///                     Map.entry("applications", ApplicationArgs.builder()
///                         .additionalInfo(Map.of("key299", "utebwgfwrjdsmcdauxfdp"))
///                         .args("sumnqhhlrszgzznshwr")
///                         .name("kapcvpwdf")
///                         .version("yccwkryikpyu")
///                         .build()),
///                     Map.entry("autoScalingRole", "yuplht"),
///                     Map.entry("autoTerminate", true),
///                     Map.entry("clusterArn", "bwnxmqzwlykxvewsdujzovqs"),
///                     Map.entry("configurations", ConfigurationArgs.builder()
///                         .classification("ahweyaesthmgtdiv")
///                         .configurations()
///                         .properties(Map.of("key6744", "jfktwevmtaitzgjhgrxhcsyaf"))
///                         .build()),
///                     Map.entry("customAmiId", "iwlvorsznjsaunx"),
///                     Map.entry("ebsRootVolumeIops", 28),
///                     Map.entry("ebsRootVolumeSize", 25),
///                     Map.entry("ebsRootVolumeThroughput", 17),
///                     Map.entry("ec2InstanceAttributes", Ec2InstanceAttributesArgs.builder()
///                         .additionalMasterSecurityGroups("pzihpojfcoxrdcrosktssgf")
///                         .additionalSlaveSecurityGroups("rdaccocuctxwwzt")
///                         .ec2AvailabilityZone("bwaaomtre")
///                         .ec2KeyName("jej")
///                         .ec2SubnetId("ykhysdwgksrwehd")
///                         .emrManagedMasterSecurityGroup("rjwslxsygj")
///                         .emrManagedSlaveSecurityGroup("hvmxzsjgkhxnimtofmzlpkf")
///                         .iamInstanceProfile("wxgp")
///                         .requestedEc2AvailabilityZones("wjzsvq")
///                         .requestedEc2SubnetIds("nliztbuhuhkve")
///                         .serviceAccessSecurityGroup("supzzejzwqetvnebvhefvwofww")
///                         .build()),
///                     Map.entry("id", "usolewchtbnpfarqidjcaetetbbnww"),
///                     Map.entry("instanceCollectionType", InstanceCollectionTypeEnumValueArgs.builder()
///                         .value("INSTANCE_FLEET")
///                         .build()),
///                     Map.entry("kerberosAttributes", KerberosAttributesArgs.builder()
///                         .adDomainJoinPassword("nhrnfruuygxsvhumivr")
///                         .adDomainJoinUser("ezsezwfzesdunmtiegxbsomqqk")
///                         .crossRealmTrustPrincipalPassword("rpvurwogufbkyluimlirujvpwl")
///                         .kdcAdminPassword("yzsewywylqtqouxwulr")
///                         .realm("rraygrjruzeqrozds")
///                         .build()),
///                     Map.entry("logEncryptionKmsKeyId", "p"),
///                     Map.entry("logUri", "xrdeudkf"),
///                     Map.entry("masterPublicDnsName", "ztuajioptfwewm"),
///                     Map.entry("name", "bhkvffeitkj"),
///                     Map.entry("normalizedInstanceHours", 16),
///                     Map.entry("osReleaseLabel", "huxdgdaqkknvleyvhgydjbidn"),
///                     Map.entry("outpostArn", "wnoxdzcyqfbreqnkorlwtfvmzpcu"),
///                     Map.entry("placementGroups", PlacementGroupConfigArgs.builder()
///                         .instanceRole(InstanceRoleTypeEnumValueArgs.builder()
///                             .value("CORE")
///                             .build())
///                         .placementStrategy(PlacementGroupStrategyEnumValueArgs.builder()
///                             .value("CLUSTER")
///                             .build())
///                         .build()),
///                     Map.entry("releaseLabel", "lpmpniehmkeuwyyh"),
///                     Map.entry("repoUpgradeOnBoot", RepoUpgradeOnBootEnumValueArgs.builder()
///                         .value("NONE")
///                         .build()),
///                     Map.entry("requestedAmiVersion", "kwlohrrhuxcgnok"),
///                     Map.entry("runningAmiVersion", "wd"),
///                     Map.entry("scaleDownBehavior", ScaleDownBehaviorEnumValueArgs.builder()
///                         .value("TERMINATE_AT_INSTANCE_HOUR")
///                         .build()),
///                     Map.entry("securityConfiguration", "njgb"),
///                     Map.entry("serviceRole", "msbrnoepcyrbaazxsmwbhmqrzubm"),
///                     Map.entry("status", EmrClusterStatusArgs.builder()
///                         .errorDetails(ErrorDetailArgs.builder()
///                             .errorCode("lklafbu")
///                             .errorData(Map.ofEntries(
///                             ))
///                             .errorMessage("hhoucsczmnnflofzyxt")
///                             .build())
///                         .state(ClusterStateEnumValueArgs.builder()
///                             .value("BOOTSTRAPPING")
///                             .build())
///                         .stateChangeReason(ClusterStateChangeReasonArgs.builder()
///                             .code(ClusterStateChangeReasonCodeEnumValueArgs.builder()
///                                 .value("ALL_STEPS_COMPLETED")
///                                 .build())
///                             .message("sxjkazmayqtbqnbaslxpxun")
///                             .build())
///                         .timeline(ClusterTimelineArgs.builder()
///                             .creationDateTime("2024-10-08T03:51:42.281Z")
///                             .endDateTime("2024-10-08T03:51:42.281Z")
///                             .readyDateTime("2024-10-08T03:51:42.281Z")
///                             .build())
///                         .build()),
///                     Map.entry("stepConcurrencyLevel", 8),
///                     Map.entry("tags", TagArgs.builder()
///                         .key("vfcae")
///                         .value("gibogfcbfiielvixdxeb")
///                         .build()),
///                     Map.entry("terminationProtected", true),
///                     Map.entry("unhealthyNodeReplacement", true),
///                     Map.entry("visibleToAllUsers", true)
///                 ))
///                 .awsRegion("rbbkoztkjhvdu")
///                 .awsSourceSchema("sexomixwzozkllipdmi")
///                 .awsTags(Map.of("key6409", "fsgzxbnbmfnv"))
///                 .publicCloudConnectorsResourceId("gjirecopxmcdpdljkxexxoawwd")
///                 .publicCloudResourceName("aulznvgpxpjdvghbszbwxycew")
///                 .build())
///             .resourceGroupName("rgemrCluster")
///             .tags(Map.of("key4944", "rpsyifovzprbxzcudooiqiqliub"))
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
/// const emrCluster = new azure_native.awsconnector.EmrCluster("emrCluster", {
///     location: "gxjyaumpubnajcudsqwk",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "hvhwzh",
///         awsAccountId: "tsnkbdcacnozmtgvxjflzydxeu",
///         awsProperties: {
///             applications: [{
///                 additionalInfo: {
///                     key299: "utebwgfwrjdsmcdauxfdp",
///                 },
///                 args: ["sumnqhhlrszgzznshwr"],
///                 name: "kapcvpwdf",
///                 version: "yccwkryikpyu",
///             }],
///             autoScalingRole: "yuplht",
///             autoTerminate: true,
///             clusterArn: "bwnxmqzwlykxvewsdujzovqs",
///             configurations: [{
///                 classification: "ahweyaesthmgtdiv",
///                 configurations: [],
///                 properties: {
///                     key6744: "jfktwevmtaitzgjhgrxhcsyaf",
///                 },
///             }],
///             customAmiId: "iwlvorsznjsaunx",
///             ebsRootVolumeIops: 28,
///             ebsRootVolumeSize: 25,
///             ebsRootVolumeThroughput: 17,
///             ec2InstanceAttributes: {
///                 additionalMasterSecurityGroups: ["pzihpojfcoxrdcrosktssgf"],
///                 additionalSlaveSecurityGroups: ["rdaccocuctxwwzt"],
///                 ec2AvailabilityZone: "bwaaomtre",
///                 ec2KeyName: "jej",
///                 ec2SubnetId: "ykhysdwgksrwehd",
///                 emrManagedMasterSecurityGroup: "rjwslxsygj",
///                 emrManagedSlaveSecurityGroup: "hvmxzsjgkhxnimtofmzlpkf",
///                 iamInstanceProfile: "wxgp",
///                 requestedEc2AvailabilityZones: ["wjzsvq"],
///                 requestedEc2SubnetIds: ["nliztbuhuhkve"],
///                 serviceAccessSecurityGroup: "supzzejzwqetvnebvhefvwofww",
///             },
///             id: "usolewchtbnpfarqidjcaetetbbnww",
///             instanceCollectionType: {
///                 value: azure_native.awsconnector.InstanceCollectionType.INSTANCE_FLEET,
///             },
///             kerberosAttributes: {
///                 adDomainJoinPassword: "nhrnfruuygxsvhumivr",
///                 adDomainJoinUser: "ezsezwfzesdunmtiegxbsomqqk",
///                 crossRealmTrustPrincipalPassword: "rpvurwogufbkyluimlirujvpwl",
///                 kdcAdminPassword: "yzsewywylqtqouxwulr",
///                 realm: "rraygrjruzeqrozds",
///             },
///             logEncryptionKmsKeyId: "p",
///             logUri: "xrdeudkf",
///             masterPublicDnsName: "ztuajioptfwewm",
///             name: "bhkvffeitkj",
///             normalizedInstanceHours: 16,
///             osReleaseLabel: "huxdgdaqkknvleyvhgydjbidn",
///             outpostArn: "wnoxdzcyqfbreqnkorlwtfvmzpcu",
///             placementGroups: [{
///                 instanceRole: {
///                     value: azure_native.awsconnector.InstanceRoleType.CORE,
///                 },
///                 placementStrategy: {
///                     value: azure_native.awsconnector.PlacementGroupStrategy.CLUSTER,
///                 },
///             }],
///             releaseLabel: "lpmpniehmkeuwyyh",
///             repoUpgradeOnBoot: {
///                 value: azure_native.awsconnector.RepoUpgradeOnBoot.NONE,
///             },
///             requestedAmiVersion: "kwlohrrhuxcgnok",
///             runningAmiVersion: "wd",
///             scaleDownBehavior: {
///                 value: azure_native.awsconnector.ScaleDownBehavior.TERMINATE_AT_INSTANCE_HOUR,
///             },
///             securityConfiguration: "njgb",
///             serviceRole: "msbrnoepcyrbaazxsmwbhmqrzubm",
///             status: {
///                 errorDetails: [{
///                     errorCode: "lklafbu",
///                     errorData: [{}],
///                     errorMessage: "hhoucsczmnnflofzyxt",
///                 }],
///                 state: {
///                     value: azure_native.awsconnector.ClusterState.BOOTSTRAPPING,
///                 },
///                 stateChangeReason: {
///                     code: {
///                         value: azure_native.awsconnector.ClusterStateChangeReasonCode.ALL_STEPS_COMPLETED,
///                     },
///                     message: "sxjkazmayqtbqnbaslxpxun",
///                 },
///                 timeline: {
///                     creationDateTime: "2024-10-08T03:51:42.281Z",
///                     endDateTime: "2024-10-08T03:51:42.281Z",
///                     readyDateTime: "2024-10-08T03:51:42.281Z",
///                 },
///             },
///             stepConcurrencyLevel: 8,
///             tags: [{
///                 key: "vfcae",
///                 value: "gibogfcbfiielvixdxeb",
///             }],
///             terminationProtected: true,
///             unhealthyNodeReplacement: true,
///             visibleToAllUsers: true,
///         },
///         awsRegion: "rbbkoztkjhvdu",
///         awsSourceSchema: "sexomixwzozkllipdmi",
///         awsTags: {
///             key6409: "fsgzxbnbmfnv",
///         },
///         publicCloudConnectorsResourceId: "gjirecopxmcdpdljkxexxoawwd",
///         publicCloudResourceName: "aulznvgpxpjdvghbszbwxycew",
///     },
///     resourceGroupName: "rgemrCluster",
///     tags: {
///         key4944: "rpsyifovzprbxzcudooiqiqliub",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// emr_cluster = azure_native.awsconnector.EmrCluster("emrCluster",
///     location="gxjyaumpubnajcudsqwk",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "hvhwzh",
///         "aws_account_id": "tsnkbdcacnozmtgvxjflzydxeu",
///         "aws_properties": {
///             "applications": [{
///                 "additional_info": {
///                     "key299": "utebwgfwrjdsmcdauxfdp",
///                 },
///                 "args": ["sumnqhhlrszgzznshwr"],
///                 "name": "kapcvpwdf",
///                 "version": "yccwkryikpyu",
///             }],
///             "auto_scaling_role": "yuplht",
///             "auto_terminate": True,
///             "cluster_arn": "bwnxmqzwlykxvewsdujzovqs",
///             "configurations": [{
///                 "classification": "ahweyaesthmgtdiv",
///                 "configurations": [],
///                 "properties": {
///                     "key6744": "jfktwevmtaitzgjhgrxhcsyaf",
///                 },
///             }],
///             "custom_ami_id": "iwlvorsznjsaunx",
///             "ebs_root_volume_iops": 28,
///             "ebs_root_volume_size": 25,
///             "ebs_root_volume_throughput": 17,
///             "ec2_instance_attributes": {
///                 "additional_master_security_groups": ["pzihpojfcoxrdcrosktssgf"],
///                 "additional_slave_security_groups": ["rdaccocuctxwwzt"],
///                 "ec2_availability_zone": "bwaaomtre",
///                 "ec2_key_name": "jej",
///                 "ec2_subnet_id": "ykhysdwgksrwehd",
///                 "emr_managed_master_security_group": "rjwslxsygj",
///                 "emr_managed_slave_security_group": "hvmxzsjgkhxnimtofmzlpkf",
///                 "iam_instance_profile": "wxgp",
///                 "requested_ec2_availability_zones": ["wjzsvq"],
///                 "requested_ec2_subnet_ids": ["nliztbuhuhkve"],
///                 "service_access_security_group": "supzzejzwqetvnebvhefvwofww",
///             },
///             "id": "usolewchtbnpfarqidjcaetetbbnww",
///             "instance_collection_type": {
///                 "value": azure_native.awsconnector.InstanceCollectionType.INSTANC_E_FLEET,
///             },
///             "kerberos_attributes": {
///                 "ad_domain_join_password": "nhrnfruuygxsvhumivr",
///                 "ad_domain_join_user": "ezsezwfzesdunmtiegxbsomqqk",
///                 "cross_realm_trust_principal_password": "rpvurwogufbkyluimlirujvpwl",
///                 "kdc_admin_password": "yzsewywylqtqouxwulr",
///                 "realm": "rraygrjruzeqrozds",
///             },
///             "log_encryption_kms_key_id": "p",
///             "log_uri": "xrdeudkf",
///             "master_public_dns_name": "ztuajioptfwewm",
///             "name": "bhkvffeitkj",
///             "normalized_instance_hours": 16,
///             "os_release_label": "huxdgdaqkknvleyvhgydjbidn",
///             "outpost_arn": "wnoxdzcyqfbreqnkorlwtfvmzpcu",
///             "placement_groups": [{
///                 "instance_role": {
///                     "value": azure_native.awsconnector.InstanceRoleType.CORE,
///                 },
///                 "placement_strategy": {
///                     "value": azure_native.awsconnector.PlacementGroupStrategy.CLUSTER,
///                 },
///             }],
///             "release_label": "lpmpniehmkeuwyyh",
///             "repo_upgrade_on_boot": {
///                 "value": azure_native.awsconnector.RepoUpgradeOnBoot.NONE,
///             },
///             "requested_ami_version": "kwlohrrhuxcgnok",
///             "running_ami_version": "wd",
///             "scale_down_behavior": {
///                 "value": azure_native.awsconnector.ScaleDownBehavior.TERMINAT_E_A_T_INSTANC_E_HOUR,
///             },
///             "security_configuration": "njgb",
///             "service_role": "msbrnoepcyrbaazxsmwbhmqrzubm",
///             "status": {
///                 "error_details": [{
///                     "error_code": "lklafbu",
///                     "error_data": [{}],
///                     "error_message": "hhoucsczmnnflofzyxt",
///                 }],
///                 "state": {
///                     "value": azure_native.awsconnector.ClusterState.BOOTSTRAPPING,
///                 },
///                 "state_change_reason": {
///                     "code": {
///                         "value": azure_native.awsconnector.ClusterStateChangeReasonCode.AL_L_STEP_S_COMPLETED,
///                     },
///                     "message": "sxjkazmayqtbqnbaslxpxun",
///                 },
///                 "timeline": {
///                     "creation_date_time": "2024-10-08T03:51:42.281Z",
///                     "end_date_time": "2024-10-08T03:51:42.281Z",
///                     "ready_date_time": "2024-10-08T03:51:42.281Z",
///                 },
///             },
///             "step_concurrency_level": 8,
///             "tags": [{
///                 "key": "vfcae",
///                 "value": "gibogfcbfiielvixdxeb",
///             }],
///             "termination_protected": True,
///             "unhealthy_node_replacement": True,
///             "visible_to_all_users": True,
///         },
///         "aws_region": "rbbkoztkjhvdu",
///         "aws_source_schema": "sexomixwzozkllipdmi",
///         "aws_tags": {
///             "key6409": "fsgzxbnbmfnv",
///         },
///         "public_cloud_connectors_resource_id": "gjirecopxmcdpdljkxexxoawwd",
///         "public_cloud_resource_name": "aulznvgpxpjdvghbszbwxycew",
///     },
///     resource_group_name="rgemrCluster",
///     tags={
///         "key4944": "rpsyifovzprbxzcudooiqiqliub",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   emrCluster:
///     type: azure-native:awsconnector:EmrCluster
///     properties:
///       location: gxjyaumpubnajcudsqwk
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: hvhwzh
///         awsAccountId: tsnkbdcacnozmtgvxjflzydxeu
///         awsProperties:
///           applications:
///             - additionalInfo:
///                 key299: utebwgfwrjdsmcdauxfdp
///               args:
///                 - sumnqhhlrszgzznshwr
///               name: kapcvpwdf
///               version: yccwkryikpyu
///           autoScalingRole: yuplht
///           autoTerminate: true
///           clusterArn: bwnxmqzwlykxvewsdujzovqs
///           configurations:
///             - classification: ahweyaesthmgtdiv
///               configurations: []
///               properties:
///                 key6744: jfktwevmtaitzgjhgrxhcsyaf
///           customAmiId: iwlvorsznjsaunx
///           ebsRootVolumeIops: 28
///           ebsRootVolumeSize: 25
///           ebsRootVolumeThroughput: 17
///           ec2InstanceAttributes:
///             additionalMasterSecurityGroups:
///               - pzihpojfcoxrdcrosktssgf
///             additionalSlaveSecurityGroups:
///               - rdaccocuctxwwzt
///             ec2AvailabilityZone: bwaaomtre
///             ec2KeyName: jej
///             ec2SubnetId: ykhysdwgksrwehd
///             emrManagedMasterSecurityGroup: rjwslxsygj
///             emrManagedSlaveSecurityGroup: hvmxzsjgkhxnimtofmzlpkf
///             iamInstanceProfile: wxgp
///             requestedEc2AvailabilityZones:
///               - wjzsvq
///             requestedEc2SubnetIds:
///               - nliztbuhuhkve
///             serviceAccessSecurityGroup: supzzejzwqetvnebvhefvwofww
///           id: usolewchtbnpfarqidjcaetetbbnww
///           instanceCollectionType:
///             value: INSTANCE_FLEET
///           kerberosAttributes:
///             adDomainJoinPassword: nhrnfruuygxsvhumivr
///             adDomainJoinUser: ezsezwfzesdunmtiegxbsomqqk
///             crossRealmTrustPrincipalPassword: rpvurwogufbkyluimlirujvpwl
///             kdcAdminPassword: yzsewywylqtqouxwulr
///             realm: rraygrjruzeqrozds
///           logEncryptionKmsKeyId: p
///           logUri: xrdeudkf
///           masterPublicDnsName: ztuajioptfwewm
///           name: bhkvffeitkj
///           normalizedInstanceHours: 16
///           osReleaseLabel: huxdgdaqkknvleyvhgydjbidn
///           outpostArn: wnoxdzcyqfbreqnkorlwtfvmzpcu
///           placementGroups:
///             - instanceRole:
///                 value: CORE
///               placementStrategy:
///                 value: CLUSTER
///           releaseLabel: lpmpniehmkeuwyyh
///           repoUpgradeOnBoot:
///             value: NONE
///           requestedAmiVersion: kwlohrrhuxcgnok
///           runningAmiVersion: wd
///           scaleDownBehavior:
///             value: TERMINATE_AT_INSTANCE_HOUR
///           securityConfiguration: njgb
///           serviceRole: msbrnoepcyrbaazxsmwbhmqrzubm
///           status:
///             errorDetails:
///               - errorCode: lklafbu
///                 errorData:
///                   - {}
///                 errorMessage: hhoucsczmnnflofzyxt
///             state:
///               value: BOOTSTRAPPING
///             stateChangeReason:
///               code:
///                 value: ALL_STEPS_COMPLETED
///               message: sxjkazmayqtbqnbaslxpxun
///             timeline:
///               creationDateTime: 2024-10-08T03:51:42.281Z
///               endDateTime: 2024-10-08T03:51:42.281Z
///               readyDateTime: 2024-10-08T03:51:42.281Z
///           stepConcurrencyLevel: 8
///           tags:
///             - key: vfcae
///               value: gibogfcbfiielvixdxeb
///           terminationProtected: true
///           unhealthyNodeReplacement: true
///           visibleToAllUsers: true
///         awsRegion: rbbkoztkjhvdu
///         awsSourceSchema: sexomixwzozkllipdmi
///         awsTags:
///           key6409: fsgzxbnbmfnv
///         publicCloudConnectorsResourceId: gjirecopxmcdpdljkxexxoawwd
///         publicCloudResourceName: aulznvgpxpjdvghbszbwxycew
///       resourceGroupName: rgemrCluster
///       tags:
///         key4944: rpsyifovzprbxzcudooiqiqliub
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
/// $ pulumi import azure-native:awsconnector:EmrCluster kmdpxexhrplqjddfybxybrrb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/emrClusters/{name}
/// ```
class EmrCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<EmrClusterPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EmrCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmrCluster]. {@macro pulumi_awsconnector_emr_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmrCluster(
    String name, {
    EmrClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:EmrCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EmrClusterPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EmrClusterPropertiesResponse.fromMap(
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
