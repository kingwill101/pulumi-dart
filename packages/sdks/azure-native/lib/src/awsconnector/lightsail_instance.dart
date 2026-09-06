import 'package:pulumi/pulumi.dart' as pulumi;
import 'lightsail_instance_args.dart';
import 'lightsail_instance_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LightsailInstances_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lightsailInstance = new AzureNative.AwsConnector.LightsailInstance("lightsailInstance", new()
///     {
///         Location = "cry",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.LightsailInstancePropertiesArgs
///         {
///             Arn = "dcvwurrexherolt",
///             AwsAccountId = "bclcfxetkkugpyilojpvoypui",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsLightsailInstancePropertiesArgs
///             {
///                 AddOns = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.AddOnArgs
///                     {
///                         AddOnType = "dk",
///                         AutoSnapshotAddOnRequest = new AzureNative.AwsConnector.Inputs.AutoSnapshotAddOnArgs
///                         {
///                             SnapshotTimeOfDay = "mnthrtsoittlqrvxnwvrbaxaazh",
///                         },
///                         Status = AzureNative.AwsConnector.AddOnStatus.Disabled,
///                     },
///                 },
///                 AvailabilityZone = "an",
///                 BlueprintId = "fcezpmlwqhchkvmrdnywpr",
///                 BundleId = "yckqxqitrffsidmdxkrmaulfgmrj",
///                 Hardware = new AzureNative.AwsConnector.Inputs.HardwareArgs
///                 {
///                     CpuCount = 30,
///                     Disks = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.DiskArgs
///                         {
///                             AttachedTo = "qoievao",
///                             AttachmentState = "ujinucmjcnzuosaqycrkndh",
///                             DiskName = "tmfpjhluaytgmpxxqtccohpge",
///                             Iops = 11,
///                             IsSystemDisk = true,
///                             Path = "urbubhyieizmbnyddjkyaadmod",
///                             SizeInGb = "vpd",
///                         },
///                     },
///                     RamSizeInGb = 4,
///                 },
///                 InstanceArn = "mnodcgqlejrhlctqngwxyoqewk",
///                 InstanceName = "xfxnlievrppfrt",
///                 IsStaticIp = true,
///                 KeyPairName = "wtwjhokvviiafrsb",
///                 Location = new AzureNative.AwsConnector.Inputs.LocationArgs
///                 {
///                     AvailabilityZone = "t",
///                     RegionName = "zgmew",
///                 },
///                 Networking = new AzureNative.AwsConnector.Inputs.NetworkingArgs
///                 {
///                     MonthlyTransfer = new AzureNative.AwsConnector.Inputs.MonthlyTransferArgs
///                     {
///                         GbPerMonthAllocated = "dvbefi",
///                     },
///                     Ports = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.PortArgs
///                         {
///                             AccessDirection = "bybrpghkgcvx",
///                             AccessFrom = "kslf",
///                             AccessType = "dcqaucgpbxngw",
///                             CidrListAliases = new[]
///                             {
///                                 "btgxaahlpibcqefsgcghfd",
///                             },
///                             Cidrs = new[]
///                             {
///                                 "lhmvhnh",
///                             },
///                             CommonName = "t",
///                             FromPort = 23,
///                             Ipv6Cidrs = new[]
///                             {
///                                 "qladlrdxfiad",
///                             },
///                             Protocol = "bzikwazzeydyrukrjhsaogkkxua",
///                             ToPort = 13,
///                         },
///                     },
///                 },
///                 PrivateIpAddress = "ieeqsrklgnc",
///                 PublicIpAddress = "vonneqx",
///                 ResourceType = "obxjqk",
///                 SshKeyName = "vjifxmchpparahfut",
///                 State = new AzureNative.AwsConnector.Inputs.StateArgs
///                 {
///                     Code = 29,
///                     Name = "xdtssqcrsvaqphv",
///                 },
///                 SupportCode = "nxvcadptkoljiizhffgqdqqzkc",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "oeyvtbbbaviazuesvytzykdrje",
///                         Value = "vbybagbqynriyix",
///                     },
///                 },
///                 UserData = "f",
///                 UserName = "rhivoaleeqwog",
///             },
///             AwsRegion = "zjxqlmimpqxec",
///             AwsSourceSchema = "zzcfeeoutptp",
///             AwsTags =
///             {
///                 { "key8646", "ilziiib" },
///             },
///             PublicCloudConnectorsResourceId = "vsgxzwhzepjvcjjoqj",
///             PublicCloudResourceName = "ibkgqwotzyy",
///         },
///         ResourceGroupName = "rglightsailInstance",
///         Tags =
///         {
///             { "key2601", "s" },
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
/// 		_, err := awsconnector.NewLightsailInstance(ctx, "lightsailInstance", &awsconnector.LightsailInstanceArgs{
/// 			Location: pulumi.String("cry"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.LightsailInstancePropertiesArgs{
/// 				Arn:          pulumi.String("dcvwurrexherolt"),
/// 				AwsAccountId: pulumi.String("bclcfxetkkugpyilojpvoypui"),
/// 				AwsProperties: &awsconnector.AwsLightsailInstancePropertiesArgs{
/// 					AddOns: awsconnector.AddOnArray{
/// 						&awsconnector.AddOnArgs{
/// 							AddOnType: pulumi.String("dk"),
/// 							AutoSnapshotAddOnRequest: &awsconnector.AutoSnapshotAddOnArgs{
/// 								SnapshotTimeOfDay: pulumi.String("mnthrtsoittlqrvxnwvrbaxaazh"),
/// 							},
/// 							Status: pulumi.String(awsconnector.AddOnStatusDisabled),
/// 						},
/// 					},
/// 					AvailabilityZone: pulumi.String("an"),
/// 					BlueprintId:      pulumi.String("fcezpmlwqhchkvmrdnywpr"),
/// 					BundleId:         pulumi.String("yckqxqitrffsidmdxkrmaulfgmrj"),
/// 					Hardware: &awsconnector.HardwareArgs{
/// 						CpuCount: pulumi.Int(30),
/// 						Disks: awsconnector.DiskArray{
/// 							&awsconnector.DiskArgs{
/// 								AttachedTo:      pulumi.String("qoievao"),
/// 								AttachmentState: pulumi.String("ujinucmjcnzuosaqycrkndh"),
/// 								DiskName:        pulumi.String("tmfpjhluaytgmpxxqtccohpge"),
/// 								Iops:            pulumi.Int(11),
/// 								IsSystemDisk:    pulumi.Bool(true),
/// 								Path:            pulumi.String("urbubhyieizmbnyddjkyaadmod"),
/// 								SizeInGb:        pulumi.String("vpd"),
/// 							},
/// 						},
/// 						RamSizeInGb: pulumi.Int(4),
/// 					},
/// 					InstanceArn:  pulumi.String("mnodcgqlejrhlctqngwxyoqewk"),
/// 					InstanceName: pulumi.String("xfxnlievrppfrt"),
/// 					IsStaticIp:   pulumi.Bool(true),
/// 					KeyPairName:  pulumi.String("wtwjhokvviiafrsb"),
/// 					Location: &awsconnector.LocationArgs{
/// 						AvailabilityZone: pulumi.String("t"),
/// 						RegionName:       pulumi.String("zgmew"),
/// 					},
/// 					Networking: &awsconnector.NetworkingArgs{
/// 						MonthlyTransfer: &awsconnector.MonthlyTransferArgs{
/// 							GbPerMonthAllocated: pulumi.String("dvbefi"),
/// 						},
/// 						Ports: awsconnector.PortArray{
/// 							&awsconnector.PortArgs{
/// 								AccessDirection: pulumi.String("bybrpghkgcvx"),
/// 								AccessFrom:      pulumi.String("kslf"),
/// 								AccessType:      pulumi.String("dcqaucgpbxngw"),
/// 								CidrListAliases: pulumi.StringArray{
/// 									pulumi.String("btgxaahlpibcqefsgcghfd"),
/// 								},
/// 								Cidrs: pulumi.StringArray{
/// 									pulumi.String("lhmvhnh"),
/// 								},
/// 								CommonName: pulumi.String("t"),
/// 								FromPort:   pulumi.Int(23),
/// 								Ipv6Cidrs: pulumi.StringArray{
/// 									pulumi.String("qladlrdxfiad"),
/// 								},
/// 								Protocol: pulumi.String("bzikwazzeydyrukrjhsaogkkxua"),
/// 								ToPort:   pulumi.Int(13),
/// 							},
/// 						},
/// 					},
/// 					PrivateIpAddress: pulumi.String("ieeqsrklgnc"),
/// 					PublicIpAddress:  pulumi.String("vonneqx"),
/// 					ResourceType:     pulumi.String("obxjqk"),
/// 					SshKeyName:       pulumi.String("vjifxmchpparahfut"),
/// 					State: &awsconnector.StateArgs{
/// 						Code: pulumi.Int(29),
/// 						Name: pulumi.String("xdtssqcrsvaqphv"),
/// 					},
/// 					SupportCode: pulumi.String("nxvcadptkoljiizhffgqdqqzkc"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("oeyvtbbbaviazuesvytzykdrje"),
/// 							Value: pulumi.String("vbybagbqynriyix"),
/// 						},
/// 					},
/// 					UserData: pulumi.String("f"),
/// 					UserName: pulumi.String("rhivoaleeqwog"),
/// 				},
/// 				AwsRegion:       pulumi.String("zjxqlmimpqxec"),
/// 				AwsSourceSchema: pulumi.String("zzcfeeoutptp"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8646": pulumi.String("ilziiib"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("vsgxzwhzepjvcjjoqj"),
/// 				PublicCloudResourceName:         pulumi.String("ibkgqwotzyy"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rglightsailInstance"),
/// 			Tags: pulumi.StringMap{
/// 				"key2601": pulumi.String("s"),
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
/// resource "azure-native_awsconnector_lightsailinstance" "lightsailInstance" {
///   location = "cry"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "dcvwurrexherolt"
///     aws_account_id = "bclcfxetkkugpyilojpvoypui"
///     aws_properties = {
///       add_ons = [{
///         "addOnType" = "dk"
///         "autoSnapshotAddOnRequest" = {
///           "snapshotTimeOfDay" = "mnthrtsoittlqrvxnwvrbaxaazh"
///         }
///         "status" = "Disabled"
///       }]
///       availability_zone = "an"
///       blueprint_id      = "fcezpmlwqhchkvmrdnywpr"
///       bundle_id         = "yckqxqitrffsidmdxkrmaulfgmrj"
///       hardware = {
///         cpu_count = 30
///         disks = [{
///           "attachedTo"      = "qoievao"
///           "attachmentState" = "ujinucmjcnzuosaqycrkndh"
///           "diskName"        = "tmfpjhluaytgmpxxqtccohpge"
///           "iops"            = 11
///           "isSystemDisk"    = true
///           "path"            = "urbubhyieizmbnyddjkyaadmod"
///           "sizeInGb"        = "vpd"
///         }]
///         ram_size_in_gb = 4
///       }
///       instance_arn  = "mnodcgqlejrhlctqngwxyoqewk"
///       instance_name = "xfxnlievrppfrt"
///       is_static_ip  = true
///       key_pair_name = "wtwjhokvviiafrsb"
///       location = {
///         availability_zone = "t"
///         region_name       = "zgmew"
///       }
///       networking = {
///         monthly_transfer = {
///           gb_per_month_allocated = "dvbefi"
///         }
///         ports = [{
///           "accessDirection" = "bybrpghkgcvx"
///           "accessFrom"      = "kslf"
///           "accessType"      = "dcqaucgpbxngw"
///           "cidrListAliases" = ["btgxaahlpibcqefsgcghfd"]
///           "cidrs"           = ["lhmvhnh"]
///           "commonName"      = "t"
///           "fromPort"        = 23
///           "ipv6Cidrs"       = ["qladlrdxfiad"]
///           "protocol"        = "bzikwazzeydyrukrjhsaogkkxua"
///           "toPort"          = 13
///         }]
///       }
///       private_ip_address = "ieeqsrklgnc"
///       public_ip_address  = "vonneqx"
///       resource_type      = "obxjqk"
///       ssh_key_name       = "vjifxmchpparahfut"
///       state = {
///         code = 29
///         name = "xdtssqcrsvaqphv"
///       }
///       support_code = "nxvcadptkoljiizhffgqdqqzkc"
///       tags = [{
///         "key"   = "oeyvtbbbaviazuesvytzykdrje"
///         "value" = "vbybagbqynriyix"
///       }]
///       user_data = "f"
///       user_name = "rhivoaleeqwog"
///     }
///     aws_region        = "zjxqlmimpqxec"
///     aws_source_schema = "zzcfeeoutptp"
///     aws_tags = {
///       "key8646" = "ilziiib"
///     }
///     public_cloud_connectors_resource_id = "vsgxzwhzepjvcjjoqj"
///     public_cloud_resource_name          = "ibkgqwotzyy"
///   }
///   resource_group_name = "rglightsailInstance"
///   tags = {
///     "key2601" = "s"
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
/// import com.pulumi.azurenative.awsconnector.LightsailInstance;
/// import com.pulumi.azurenative.awsconnector.LightsailInstanceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LightsailInstancePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsLightsailInstancePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.HardwareArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LocationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.NetworkingArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MonthlyTransferArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.StateArgs;
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
///         var lightsailInstance = new LightsailInstance("lightsailInstance", LightsailInstanceArgs.builder()
///             .location("cry")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(LightsailInstancePropertiesArgs.builder()
///                 .arn("dcvwurrexherolt")
///                 .awsAccountId("bclcfxetkkugpyilojpvoypui")
///                 .awsProperties(AwsLightsailInstancePropertiesArgs.builder()
///                     .addOns(AddOnArgs.builder()
///                         .addOnType("dk")
///                         .autoSnapshotAddOnRequest(AutoSnapshotAddOnArgs.builder()
///                             .snapshotTimeOfDay("mnthrtsoittlqrvxnwvrbaxaazh")
///                             .build())
///                         .status("Disabled")
///                         .build())
///                     .availabilityZone("an")
///                     .blueprintId("fcezpmlwqhchkvmrdnywpr")
///                     .bundleId("yckqxqitrffsidmdxkrmaulfgmrj")
///                     .hardware(HardwareArgs.builder()
///                         .cpuCount(30)
///                         .disks(DiskArgs.builder()
///                             .attachedTo("qoievao")
///                             .attachmentState("ujinucmjcnzuosaqycrkndh")
///                             .diskName("tmfpjhluaytgmpxxqtccohpge")
///                             .iops(11)
///                             .isSystemDisk(true)
///                             .path("urbubhyieizmbnyddjkyaadmod")
///                             .sizeInGb("vpd")
///                             .build())
///                         .ramSizeInGb(4)
///                         .build())
///                     .instanceArn("mnodcgqlejrhlctqngwxyoqewk")
///                     .instanceName("xfxnlievrppfrt")
///                     .isStaticIp(true)
///                     .keyPairName("wtwjhokvviiafrsb")
///                     .location(LocationArgs.builder()
///                         .availabilityZone("t")
///                         .regionName("zgmew")
///                         .build())
///                     .networking(NetworkingArgs.builder()
///                         .monthlyTransfer(MonthlyTransferArgs.builder()
///                             .gbPerMonthAllocated("dvbefi")
///                             .build())
///                         .ports(PortArgs.builder()
///                             .accessDirection("bybrpghkgcvx")
///                             .accessFrom("kslf")
///                             .accessType("dcqaucgpbxngw")
///                             .cidrListAliases("btgxaahlpibcqefsgcghfd")
///                             .cidrs("lhmvhnh")
///                             .commonName("t")
///                             .fromPort(23)
///                             .ipv6Cidrs("qladlrdxfiad")
///                             .protocol("bzikwazzeydyrukrjhsaogkkxua")
///                             .toPort(13)
///                             .build())
///                         .build())
///                     .privateIpAddress("ieeqsrklgnc")
///                     .publicIpAddress("vonneqx")
///                     .resourceType("obxjqk")
///                     .sshKeyName("vjifxmchpparahfut")
///                     .state(StateArgs.builder()
///                         .code(29)
///                         .name("xdtssqcrsvaqphv")
///                         .build())
///                     .supportCode("nxvcadptkoljiizhffgqdqqzkc")
///                     .tags(TagArgs.builder()
///                         .key("oeyvtbbbaviazuesvytzykdrje")
///                         .value("vbybagbqynriyix")
///                         .build())
///                     .userData("f")
///                     .userName("rhivoaleeqwog")
///                     .build())
///                 .awsRegion("zjxqlmimpqxec")
///                 .awsSourceSchema("zzcfeeoutptp")
///                 .awsTags(Map.of("key8646", "ilziiib"))
///                 .publicCloudConnectorsResourceId("vsgxzwhzepjvcjjoqj")
///                 .publicCloudResourceName("ibkgqwotzyy")
///                 .build())
///             .resourceGroupName("rglightsailInstance")
///             .tags(Map.of("key2601", "s"))
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
/// const lightsailInstance = new azure_native.awsconnector.LightsailInstance("lightsailInstance", {
///     location: "cry",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "dcvwurrexherolt",
///         awsAccountId: "bclcfxetkkugpyilojpvoypui",
///         awsProperties: {
///             addOns: [{
///                 addOnType: "dk",
///                 autoSnapshotAddOnRequest: {
///                     snapshotTimeOfDay: "mnthrtsoittlqrvxnwvrbaxaazh",
///                 },
///                 status: azure_native.awsconnector.AddOnStatus.Disabled,
///             }],
///             availabilityZone: "an",
///             blueprintId: "fcezpmlwqhchkvmrdnywpr",
///             bundleId: "yckqxqitrffsidmdxkrmaulfgmrj",
///             hardware: {
///                 cpuCount: 30,
///                 disks: [{
///                     attachedTo: "qoievao",
///                     attachmentState: "ujinucmjcnzuosaqycrkndh",
///                     diskName: "tmfpjhluaytgmpxxqtccohpge",
///                     iops: 11,
///                     isSystemDisk: true,
///                     path: "urbubhyieizmbnyddjkyaadmod",
///                     sizeInGb: "vpd",
///                 }],
///                 ramSizeInGb: 4,
///             },
///             instanceArn: "mnodcgqlejrhlctqngwxyoqewk",
///             instanceName: "xfxnlievrppfrt",
///             isStaticIp: true,
///             keyPairName: "wtwjhokvviiafrsb",
///             location: {
///                 availabilityZone: "t",
///                 regionName: "zgmew",
///             },
///             networking: {
///                 monthlyTransfer: {
///                     gbPerMonthAllocated: "dvbefi",
///                 },
///                 ports: [{
///                     accessDirection: "bybrpghkgcvx",
///                     accessFrom: "kslf",
///                     accessType: "dcqaucgpbxngw",
///                     cidrListAliases: ["btgxaahlpibcqefsgcghfd"],
///                     cidrs: ["lhmvhnh"],
///                     commonName: "t",
///                     fromPort: 23,
///                     ipv6Cidrs: ["qladlrdxfiad"],
///                     protocol: "bzikwazzeydyrukrjhsaogkkxua",
///                     toPort: 13,
///                 }],
///             },
///             privateIpAddress: "ieeqsrklgnc",
///             publicIpAddress: "vonneqx",
///             resourceType: "obxjqk",
///             sshKeyName: "vjifxmchpparahfut",
///             state: {
///                 code: 29,
///                 name: "xdtssqcrsvaqphv",
///             },
///             supportCode: "nxvcadptkoljiizhffgqdqqzkc",
///             tags: [{
///                 key: "oeyvtbbbaviazuesvytzykdrje",
///                 value: "vbybagbqynriyix",
///             }],
///             userData: "f",
///             userName: "rhivoaleeqwog",
///         },
///         awsRegion: "zjxqlmimpqxec",
///         awsSourceSchema: "zzcfeeoutptp",
///         awsTags: {
///             key8646: "ilziiib",
///         },
///         publicCloudConnectorsResourceId: "vsgxzwhzepjvcjjoqj",
///         publicCloudResourceName: "ibkgqwotzyy",
///     },
///     resourceGroupName: "rglightsailInstance",
///     tags: {
///         key2601: "s",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// lightsail_instance = azure_native.awsconnector.LightsailInstance("lightsailInstance",
///     location="cry",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "dcvwurrexherolt",
///         "aws_account_id": "bclcfxetkkugpyilojpvoypui",
///         "aws_properties": {
///             "add_ons": [{
///                 "add_on_type": "dk",
///                 "auto_snapshot_add_on_request": {
///                     "snapshot_time_of_day": "mnthrtsoittlqrvxnwvrbaxaazh",
///                 },
///                 "status": azure_native.awsconnector.AddOnStatus.DISABLED,
///             }],
///             "availability_zone": "an",
///             "blueprint_id": "fcezpmlwqhchkvmrdnywpr",
///             "bundle_id": "yckqxqitrffsidmdxkrmaulfgmrj",
///             "hardware": {
///                 "cpu_count": 30,
///                 "disks": [{
///                     "attached_to": "qoievao",
///                     "attachment_state": "ujinucmjcnzuosaqycrkndh",
///                     "disk_name": "tmfpjhluaytgmpxxqtccohpge",
///                     "iops": 11,
///                     "is_system_disk": True,
///                     "path": "urbubhyieizmbnyddjkyaadmod",
///                     "size_in_gb": "vpd",
///                 }],
///                 "ram_size_in_gb": 4,
///             },
///             "instance_arn": "mnodcgqlejrhlctqngwxyoqewk",
///             "instance_name": "xfxnlievrppfrt",
///             "is_static_ip": True,
///             "key_pair_name": "wtwjhokvviiafrsb",
///             "location": {
///                 "availability_zone": "t",
///                 "region_name": "zgmew",
///             },
///             "networking": {
///                 "monthly_transfer": {
///                     "gb_per_month_allocated": "dvbefi",
///                 },
///                 "ports": [{
///                     "access_direction": "bybrpghkgcvx",
///                     "access_from": "kslf",
///                     "access_type": "dcqaucgpbxngw",
///                     "cidr_list_aliases": ["btgxaahlpibcqefsgcghfd"],
///                     "cidrs": ["lhmvhnh"],
///                     "common_name": "t",
///                     "from_port": 23,
///                     "ipv6_cidrs": ["qladlrdxfiad"],
///                     "protocol": "bzikwazzeydyrukrjhsaogkkxua",
///                     "to_port": 13,
///                 }],
///             },
///             "private_ip_address": "ieeqsrklgnc",
///             "public_ip_address": "vonneqx",
///             "resource_type": "obxjqk",
///             "ssh_key_name": "vjifxmchpparahfut",
///             "state": {
///                 "code": 29,
///                 "name": "xdtssqcrsvaqphv",
///             },
///             "support_code": "nxvcadptkoljiizhffgqdqqzkc",
///             "tags": [{
///                 "key": "oeyvtbbbaviazuesvytzykdrje",
///                 "value": "vbybagbqynriyix",
///             }],
///             "user_data": "f",
///             "user_name": "rhivoaleeqwog",
///         },
///         "aws_region": "zjxqlmimpqxec",
///         "aws_source_schema": "zzcfeeoutptp",
///         "aws_tags": {
///             "key8646": "ilziiib",
///         },
///         "public_cloud_connectors_resource_id": "vsgxzwhzepjvcjjoqj",
///         "public_cloud_resource_name": "ibkgqwotzyy",
///     },
///     resource_group_name="rglightsailInstance",
///     tags={
///         "key2601": "s",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   lightsailInstance:
///     type: azure-native:awsconnector:LightsailInstance
///     properties:
///       location: cry
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: dcvwurrexherolt
///         awsAccountId: bclcfxetkkugpyilojpvoypui
///         awsProperties:
///           addOns:
///             - addOnType: dk
///               autoSnapshotAddOnRequest:
///                 snapshotTimeOfDay: mnthrtsoittlqrvxnwvrbaxaazh
///               status: Disabled
///           availabilityZone: an
///           blueprintId: fcezpmlwqhchkvmrdnywpr
///           bundleId: yckqxqitrffsidmdxkrmaulfgmrj
///           hardware:
///             cpuCount: 30
///             disks:
///               - attachedTo: qoievao
///                 attachmentState: ujinucmjcnzuosaqycrkndh
///                 diskName: tmfpjhluaytgmpxxqtccohpge
///                 iops: 11
///                 isSystemDisk: true
///                 path: urbubhyieizmbnyddjkyaadmod
///                 sizeInGb: vpd
///             ramSizeInGb: 4
///           instanceArn: mnodcgqlejrhlctqngwxyoqewk
///           instanceName: xfxnlievrppfrt
///           isStaticIp: true
///           keyPairName: wtwjhokvviiafrsb
///           location:
///             availabilityZone: t
///             regionName: zgmew
///           networking:
///             monthlyTransfer:
///               gbPerMonthAllocated: dvbefi
///             ports:
///               - accessDirection: bybrpghkgcvx
///                 accessFrom: kslf
///                 accessType: dcqaucgpbxngw
///                 cidrListAliases:
///                   - btgxaahlpibcqefsgcghfd
///                 cidrs:
///                   - lhmvhnh
///                 commonName: t
///                 fromPort: 23
///                 ipv6Cidrs:
///                   - qladlrdxfiad
///                 protocol: bzikwazzeydyrukrjhsaogkkxua
///                 toPort: 13
///           privateIpAddress: ieeqsrklgnc
///           publicIpAddress: vonneqx
///           resourceType: obxjqk
///           sshKeyName: vjifxmchpparahfut
///           state:
///             code: 29
///             name: xdtssqcrsvaqphv
///           supportCode: nxvcadptkoljiizhffgqdqqzkc
///           tags:
///             - key: oeyvtbbbaviazuesvytzykdrje
///               value: vbybagbqynriyix
///           userData: f
///           userName: rhivoaleeqwog
///         awsRegion: zjxqlmimpqxec
///         awsSourceSchema: zzcfeeoutptp
///         awsTags:
///           key8646: ilziiib
///         publicCloudConnectorsResourceId: vsgxzwhzepjvcjjoqj
///         publicCloudResourceName: ibkgqwotzyy
///       resourceGroupName: rglightsailInstance
///       tags:
///         key2601: s
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
/// $ pulumi import azure-native:awsconnector:LightsailInstance cbectofyydqecqgockmputsryovezv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/lightsailInstances/{name}
/// ```
class LightsailInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<LightsailInstancePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LightsailInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LightsailInstance]. {@macro pulumi_awsconnector_lightsail_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LightsailInstance(
    String name, {
    LightsailInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:LightsailInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LightsailInstancePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LightsailInstancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LightsailInstance] resource.
  LightsailInstance.reference(String urn)
    : super(
        'azure-native:awsconnector:LightsailInstance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LightsailInstancePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LightsailInstancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
