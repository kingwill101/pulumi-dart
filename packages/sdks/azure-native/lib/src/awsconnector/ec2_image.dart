import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_image_args.dart';
import 'ec2_image_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2Images_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Image = new AzureNative.AwsConnector.Ec2Image("ec2Image", new()
///     {
///         Location = "rskzngterhbdzpdgzthkwkfsim",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2ImagePropertiesArgs
///         {
///             Arn = "qaahwnaabcqlufiiwhkwhv",
///             AwsAccountId = "yvwtilsspffh",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2ImagePropertiesArgs
///             {
///                 Architecture = new AzureNative.AwsConnector.Inputs.ArchitectureValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ArchitectureValues.Arm64,
///                 },
///                 BlockDeviceMappings = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.BlockDeviceMappingArgs
///                     {
///                         DeviceName = "foqeiqkjrwirhz",
///                         Ebs = new AzureNative.AwsConnector.Inputs.EbsBlockDeviceArgs
///                         {
///                             DeleteOnTermination = true,
///                             Encrypted = true,
///                             Iops = 6,
///                             KmsKeyId = "ilegn",
///                             OutpostArn = "yzyqckzzbmbeimvwrvckybpdil",
///                             SnapshotId = "yjsctqicabclgsmtr",
///                             Throughput = 29,
///                             VolumeSize = 15,
///                             VolumeType = new AzureNative.AwsConnector.Inputs.VolumeTypeEnumValueArgs
///                             {
///                                 Value = AzureNative.AwsConnector.VolumeType.Gp2,
///                             },
///                         },
///                         NoDevice = "rs",
///                         VirtualName = "lgrpmrjfdvrwmfghttgcdgqsfum",
///                     },
///                 },
///                 BootMode = new AzureNative.AwsConnector.Inputs.BootModeValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.BootModeValues.LegacyBios,
///                 },
///                 CreationDate = "iri",
///                 DeprecationTime = "rjbfczermuljog",
///                 DeregistrationProtection = "qgzillhrsaoasehpuum",
///                 Description = "xcucajel",
///                 EnaSupport = true,
///                 Hypervisor = new AzureNative.AwsConnector.Inputs.HypervisorTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.HypervisorType.Ovm,
///                 },
///                 ImageId = "abwaglkivomqynfncjesal",
///                 ImageLocation = "pgjapgkiakctxcpfpmvk",
///                 ImageOwnerAlias = "sqvaqlxrlzhlzbczv",
///                 ImageType = new AzureNative.AwsConnector.Inputs.ImageTypeValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ImageTypeValues.Kernel,
///                 },
///                 ImdsSupport = new AzureNative.AwsConnector.Inputs.ImdsSupportValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ImdsSupportValues.V20,
///                 },
///                 KernelId = "mfsmykrvrtbosarfpfuwahchz",
///                 LastLaunchedTime = "syfznkavvtio",
///                 Name = "secemuogxgahtxnpthro",
///                 OwnerId = "nhuhifhzxvkdxxvaiaibzihkyvbrwh",
///                 Platform = new AzureNative.AwsConnector.Inputs.PlatformValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.PlatformValues.Windows,
///                 },
///                 PlatformDetails = "lisborjwdvhfnwsziqhfnxiqdmdynp",
///                 ProductCodes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ProductCodeArgs
///                     {
///                         ProductCodeId = "gkdidapdrunawxoaa",
///                         ProductCodeType = new AzureNative.AwsConnector.Inputs.ProductCodeValuesEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.ProductCodeValues.Devpay,
///                         },
///                     },
///                 },
///                 Public = true,
///                 RamdiskId = "xrcwfszijxclkazpcletlaoca",
///                 RootDeviceName = "jjgzjpjxtlhvqyvdrnqelzasdmn",
///                 RootDeviceType = new AzureNative.AwsConnector.Inputs.DeviceTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.DeviceType.Ebs,
///                 },
///                 SourceInstanceId = "g",
///                 SriovNetSupport = "sbnokjesjjkngdixqtiijn",
///                 State = new AzureNative.AwsConnector.Inputs.ImageStateEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ImageState.Available,
///                 },
///                 StateReason = new AzureNative.AwsConnector.Inputs.StateReasonArgs
///                 {
///                     Code = "xyfxvbpxwvorfincngvphetvrkhajy",
///                     Message = "qgjrouiqrxyqi",
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "mcszeusqtxavdhmwinblzyofkns",
///                         Value = "ehismpwetbakkwkjtngdrofhipjlko",
///                     },
///                 },
///                 TpmSupport = new AzureNative.AwsConnector.Inputs.TpmSupportValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.TpmSupportValues.V20,
///                 },
///                 UsageOperation = "gdlrmqiw",
///                 VirtualizationType = new AzureNative.AwsConnector.Inputs.VirtualizationTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.VirtualizationType.Hvm,
///                 },
///             },
///             AwsRegion = "chnagdbgxpnwsklnknirzcmbyhif",
///             AwsSourceSchema = "zpslskfplbejouiomrfkp",
///             AwsTags =
///             {
///                 { "key3097", "osnwzuconxacmfwdhcxu" },
///             },
///             PublicCloudConnectorsResourceId = "dth",
///             PublicCloudResourceName = "iwvkviywiipsmvxpemnivpyqwnp",
///         },
///         ResourceGroupName = "rgec2Image",
///         Tags =
///         {
///             { "key733", "rcinsnkdjolysslzbnmptbwfoxc" },
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
/// 		_, err := awsconnector.NewEc2Image(ctx, "ec2Image", &awsconnector.Ec2ImageArgs{
/// 			Location: pulumi.String("rskzngterhbdzpdgzthkwkfsim"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2ImagePropertiesArgs{
/// 				Arn:          pulumi.String("qaahwnaabcqlufiiwhkwhv"),
/// 				AwsAccountId: pulumi.String("yvwtilsspffh"),
/// 				AwsProperties: &awsconnector.AwsEc2ImagePropertiesArgs{
/// 					Architecture: &awsconnector.ArchitectureValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ArchitectureValuesArm64),
/// 					},
/// 					BlockDeviceMappings: awsconnector.BlockDeviceMappingArray{
/// 						&awsconnector.BlockDeviceMappingArgs{
/// 							DeviceName: pulumi.String("foqeiqkjrwirhz"),
/// 							Ebs: &awsconnector.EbsBlockDeviceArgs{
/// 								DeleteOnTermination: pulumi.Bool(true),
/// 								Encrypted:           pulumi.Bool(true),
/// 								Iops:                pulumi.Int(6),
/// 								KmsKeyId:            pulumi.String("ilegn"),
/// 								OutpostArn:          pulumi.String("yzyqckzzbmbeimvwrvckybpdil"),
/// 								SnapshotId:          pulumi.String("yjsctqicabclgsmtr"),
/// 								Throughput:          pulumi.Int(29),
/// 								VolumeSize:          pulumi.Int(15),
/// 								VolumeType: &awsconnector.VolumeTypeEnumValueArgs{
/// 									Value: pulumi.String(awsconnector.VolumeTypeGp2),
/// 								},
/// 							},
/// 							NoDevice:    pulumi.String("rs"),
/// 							VirtualName: pulumi.String("lgrpmrjfdvrwmfghttgcdgqsfum"),
/// 						},
/// 					},
/// 					BootMode: &awsconnector.BootModeValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.BootModeValuesLegacyBios),
/// 					},
/// 					CreationDate:             pulumi.String("iri"),
/// 					DeprecationTime:          pulumi.String("rjbfczermuljog"),
/// 					DeregistrationProtection: pulumi.String("qgzillhrsaoasehpuum"),
/// 					Description:              pulumi.String("xcucajel"),
/// 					EnaSupport:               pulumi.Bool(true),
/// 					Hypervisor: &awsconnector.HypervisorTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.HypervisorTypeOvm),
/// 					},
/// 					ImageId:         pulumi.String("abwaglkivomqynfncjesal"),
/// 					ImageLocation:   pulumi.String("pgjapgkiakctxcpfpmvk"),
/// 					ImageOwnerAlias: pulumi.String("sqvaqlxrlzhlzbczv"),
/// 					ImageType: &awsconnector.ImageTypeValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ImageTypeValuesKernel),
/// 					},
/// 					ImdsSupport: &awsconnector.ImdsSupportValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ImdsSupportValuesV20),
/// 					},
/// 					KernelId:         pulumi.String("mfsmykrvrtbosarfpfuwahchz"),
/// 					LastLaunchedTime: pulumi.String("syfznkavvtio"),
/// 					Name:             pulumi.String("secemuogxgahtxnpthro"),
/// 					OwnerId:          pulumi.String("nhuhifhzxvkdxxvaiaibzihkyvbrwh"),
/// 					Platform: &awsconnector.PlatformValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.PlatformValuesWindows),
/// 					},
/// 					PlatformDetails: pulumi.String("lisborjwdvhfnwsziqhfnxiqdmdynp"),
/// 					ProductCodes: awsconnector.ProductCodeArray{
/// 						&awsconnector.ProductCodeArgs{
/// 							ProductCodeId: pulumi.String("gkdidapdrunawxoaa"),
/// 							ProductCodeType: &awsconnector.ProductCodeValuesEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.ProductCodeValuesDevpay),
/// 							},
/// 						},
/// 					},
/// 					Public:         pulumi.Bool(true),
/// 					RamdiskId:      pulumi.String("xrcwfszijxclkazpcletlaoca"),
/// 					RootDeviceName: pulumi.String("jjgzjpjxtlhvqyvdrnqelzasdmn"),
/// 					RootDeviceType: &awsconnector.DeviceTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.DeviceTypeEbs),
/// 					},
/// 					SourceInstanceId: pulumi.String("g"),
/// 					SriovNetSupport:  pulumi.String("sbnokjesjjkngdixqtiijn"),
/// 					State: &awsconnector.ImageStateEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ImageStateAvailable),
/// 					},
/// 					StateReason: &awsconnector.StateReasonArgs{
/// 						Code:    pulumi.String("xyfxvbpxwvorfincngvphetvrkhajy"),
/// 						Message: pulumi.String("qgjrouiqrxyqi"),
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("mcszeusqtxavdhmwinblzyofkns"),
/// 							Value: pulumi.String("ehismpwetbakkwkjtngdrofhipjlko"),
/// 						},
/// 					},
/// 					TpmSupport: &awsconnector.TpmSupportValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.TpmSupportValuesV20),
/// 					},
/// 					UsageOperation: pulumi.String("gdlrmqiw"),
/// 					VirtualizationType: &awsconnector.VirtualizationTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.VirtualizationTypeHvm),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("chnagdbgxpnwsklnknirzcmbyhif"),
/// 				AwsSourceSchema: pulumi.String("zpslskfplbejouiomrfkp"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3097": pulumi.String("osnwzuconxacmfwdhcxu"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("dth"),
/// 				PublicCloudResourceName:         pulumi.String("iwvkviywiipsmvxpemnivpyqwnp"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2Image"),
/// 			Tags: pulumi.StringMap{
/// 				"key733": pulumi.String("rcinsnkdjolysslzbnmptbwfoxc"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2Image;
/// import com.pulumi.azurenative.awsconnector.Ec2ImageArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2ImagePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2ImagePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ArchitectureValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.BootModeValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.HypervisorTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ImageTypeValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ImdsSupportValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PlatformValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DeviceTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ImageStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.StateReasonArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TpmSupportValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.VirtualizationTypeEnumValueArgs;
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
///         var ec2Image = new Ec2Image("ec2Image", Ec2ImageArgs.builder()
///             .location("rskzngterhbdzpdgzthkwkfsim")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2ImagePropertiesArgs.builder()
///                 .arn("qaahwnaabcqlufiiwhkwhv")
///                 .awsAccountId("yvwtilsspffh")
///                 .awsProperties(AwsEc2ImagePropertiesArgs.builder()
///                     .architecture(ArchitectureValuesEnumValueArgs.builder()
///                         .value("arm64")
///                         .build())
///                     .blockDeviceMappings(BlockDeviceMappingArgs.builder()
///                         .deviceName("foqeiqkjrwirhz")
///                         .ebs(EbsBlockDeviceArgs.builder()
///                             .deleteOnTermination(true)
///                             .encrypted(true)
///                             .iops(6)
///                             .kmsKeyId("ilegn")
///                             .outpostArn("yzyqckzzbmbeimvwrvckybpdil")
///                             .snapshotId("yjsctqicabclgsmtr")
///                             .throughput(29)
///                             .volumeSize(15)
///                             .volumeType(VolumeTypeEnumValueArgs.builder()
///                                 .value("gp2")
///                                 .build())
///                             .build())
///                         .noDevice("rs")
///                         .virtualName("lgrpmrjfdvrwmfghttgcdgqsfum")
///                         .build())
///                     .bootMode(BootModeValuesEnumValueArgs.builder()
///                         .value("legacy-bios")
///                         .build())
///                     .creationDate("iri")
///                     .deprecationTime("rjbfczermuljog")
///                     .deregistrationProtection("qgzillhrsaoasehpuum")
///                     .description("xcucajel")
///                     .enaSupport(true)
///                     .hypervisor(HypervisorTypeEnumValueArgs.builder()
///                         .value("ovm")
///                         .build())
///                     .imageId("abwaglkivomqynfncjesal")
///                     .imageLocation("pgjapgkiakctxcpfpmvk")
///                     .imageOwnerAlias("sqvaqlxrlzhlzbczv")
///                     .imageType(ImageTypeValuesEnumValueArgs.builder()
///                         .value("kernel")
///                         .build())
///                     .imdsSupport(ImdsSupportValuesEnumValueArgs.builder()
///                         .value("v2.0")
///                         .build())
///                     .kernelId("mfsmykrvrtbosarfpfuwahchz")
///                     .lastLaunchedTime("syfznkavvtio")
///                     .name("secemuogxgahtxnpthro")
///                     .ownerId("nhuhifhzxvkdxxvaiaibzihkyvbrwh")
///                     .platform(PlatformValuesEnumValueArgs.builder()
///                         .value("Windows")
///                         .build())
///                     .platformDetails("lisborjwdvhfnwsziqhfnxiqdmdynp")
///                     .productCodes(ProductCodeArgs.builder()
///                         .productCodeId("gkdidapdrunawxoaa")
///                         .productCodeType(ProductCodeValuesEnumValueArgs.builder()
///                             .value("devpay")
///                             .build())
///                         .build())
///                     .public_(true)
///                     .ramdiskId("xrcwfszijxclkazpcletlaoca")
///                     .rootDeviceName("jjgzjpjxtlhvqyvdrnqelzasdmn")
///                     .rootDeviceType(DeviceTypeEnumValueArgs.builder()
///                         .value("ebs")
///                         .build())
///                     .sourceInstanceId("g")
///                     .sriovNetSupport("sbnokjesjjkngdixqtiijn")
///                     .state(ImageStateEnumValueArgs.builder()
///                         .value("available")
///                         .build())
///                     .stateReason(StateReasonArgs.builder()
///                         .code("xyfxvbpxwvorfincngvphetvrkhajy")
///                         .message("qgjrouiqrxyqi")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("mcszeusqtxavdhmwinblzyofkns")
///                         .value("ehismpwetbakkwkjtngdrofhipjlko")
///                         .build())
///                     .tpmSupport(TpmSupportValuesEnumValueArgs.builder()
///                         .value("v2.0")
///                         .build())
///                     .usageOperation("gdlrmqiw")
///                     .virtualizationType(VirtualizationTypeEnumValueArgs.builder()
///                         .value("hvm")
///                         .build())
///                     .build())
///                 .awsRegion("chnagdbgxpnwsklnknirzcmbyhif")
///                 .awsSourceSchema("zpslskfplbejouiomrfkp")
///                 .awsTags(Map.of("key3097", "osnwzuconxacmfwdhcxu"))
///                 .publicCloudConnectorsResourceId("dth")
///                 .publicCloudResourceName("iwvkviywiipsmvxpemnivpyqwnp")
///                 .build())
///             .resourceGroupName("rgec2Image")
///             .tags(Map.of("key733", "rcinsnkdjolysslzbnmptbwfoxc"))
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
/// const ec2Image = new azure_native.awsconnector.Ec2Image("ec2Image", {
///     location: "rskzngterhbdzpdgzthkwkfsim",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "qaahwnaabcqlufiiwhkwhv",
///         awsAccountId: "yvwtilsspffh",
///         awsProperties: {
///             architecture: {
///                 value: azure_native.awsconnector.ArchitectureValues.Arm64,
///             },
///             blockDeviceMappings: [{
///                 deviceName: "foqeiqkjrwirhz",
///                 ebs: {
///                     deleteOnTermination: true,
///                     encrypted: true,
///                     iops: 6,
///                     kmsKeyId: "ilegn",
///                     outpostArn: "yzyqckzzbmbeimvwrvckybpdil",
///                     snapshotId: "yjsctqicabclgsmtr",
///                     throughput: 29,
///                     volumeSize: 15,
///                     volumeType: {
///                         value: azure_native.awsconnector.VolumeType.Gp2,
///                     },
///                 },
///                 noDevice: "rs",
///                 virtualName: "lgrpmrjfdvrwmfghttgcdgqsfum",
///             }],
///             bootMode: {
///                 value: azure_native.awsconnector.BootModeValues.LegacyBios,
///             },
///             creationDate: "iri",
///             deprecationTime: "rjbfczermuljog",
///             deregistrationProtection: "qgzillhrsaoasehpuum",
///             description: "xcucajel",
///             enaSupport: true,
///             hypervisor: {
///                 value: azure_native.awsconnector.HypervisorType.Ovm,
///             },
///             imageId: "abwaglkivomqynfncjesal",
///             imageLocation: "pgjapgkiakctxcpfpmvk",
///             imageOwnerAlias: "sqvaqlxrlzhlzbczv",
///             imageType: {
///                 value: azure_native.awsconnector.ImageTypeValues.Kernel,
///             },
///             imdsSupport: {
///                 value: azure_native.awsconnector.ImdsSupportValues.V20,
///             },
///             kernelId: "mfsmykrvrtbosarfpfuwahchz",
///             lastLaunchedTime: "syfznkavvtio",
///             name: "secemuogxgahtxnpthro",
///             ownerId: "nhuhifhzxvkdxxvaiaibzihkyvbrwh",
///             platform: {
///                 value: azure_native.awsconnector.PlatformValues.Windows,
///             },
///             platformDetails: "lisborjwdvhfnwsziqhfnxiqdmdynp",
///             productCodes: [{
///                 productCodeId: "gkdidapdrunawxoaa",
///                 productCodeType: {
///                     value: azure_native.awsconnector.ProductCodeValues.Devpay,
///                 },
///             }],
///             "public": true,
///             ramdiskId: "xrcwfszijxclkazpcletlaoca",
///             rootDeviceName: "jjgzjpjxtlhvqyvdrnqelzasdmn",
///             rootDeviceType: {
///                 value: azure_native.awsconnector.DeviceType.Ebs,
///             },
///             sourceInstanceId: "g",
///             sriovNetSupport: "sbnokjesjjkngdixqtiijn",
///             state: {
///                 value: azure_native.awsconnector.ImageState.Available,
///             },
///             stateReason: {
///                 code: "xyfxvbpxwvorfincngvphetvrkhajy",
///                 message: "qgjrouiqrxyqi",
///             },
///             tags: [{
///                 key: "mcszeusqtxavdhmwinblzyofkns",
///                 value: "ehismpwetbakkwkjtngdrofhipjlko",
///             }],
///             tpmSupport: {
///                 value: azure_native.awsconnector.TpmSupportValues.V20,
///             },
///             usageOperation: "gdlrmqiw",
///             virtualizationType: {
///                 value: azure_native.awsconnector.VirtualizationType.Hvm,
///             },
///         },
///         awsRegion: "chnagdbgxpnwsklnknirzcmbyhif",
///         awsSourceSchema: "zpslskfplbejouiomrfkp",
///         awsTags: {
///             key3097: "osnwzuconxacmfwdhcxu",
///         },
///         publicCloudConnectorsResourceId: "dth",
///         publicCloudResourceName: "iwvkviywiipsmvxpemnivpyqwnp",
///     },
///     resourceGroupName: "rgec2Image",
///     tags: {
///         key733: "rcinsnkdjolysslzbnmptbwfoxc",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_image = azure_native.awsconnector.Ec2Image("ec2Image",
///     location="rskzngterhbdzpdgzthkwkfsim",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "qaahwnaabcqlufiiwhkwhv",
///         "aws_account_id": "yvwtilsspffh",
///         "aws_properties": {
///             "architecture": {
///                 "value": azure_native.awsconnector.ArchitectureValues.ARM64,
///             },
///             "block_device_mappings": [{
///                 "device_name": "foqeiqkjrwirhz",
///                 "ebs": {
///                     "delete_on_termination": True,
///                     "encrypted": True,
///                     "iops": 6,
///                     "kms_key_id": "ilegn",
///                     "outpost_arn": "yzyqckzzbmbeimvwrvckybpdil",
///                     "snapshot_id": "yjsctqicabclgsmtr",
///                     "throughput": 29,
///                     "volume_size": 15,
///                     "volume_type": {
///                         "value": azure_native.awsconnector.VolumeType.GP2,
///                     },
///                 },
///                 "no_device": "rs",
///                 "virtual_name": "lgrpmrjfdvrwmfghttgcdgqsfum",
///             }],
///             "boot_mode": {
///                 "value": azure_native.awsconnector.BootModeValues.LEGACY_BIOS,
///             },
///             "creation_date": "iri",
///             "deprecation_time": "rjbfczermuljog",
///             "deregistration_protection": "qgzillhrsaoasehpuum",
///             "description": "xcucajel",
///             "ena_support": True,
///             "hypervisor": {
///                 "value": azure_native.awsconnector.HypervisorType.OVM,
///             },
///             "image_id": "abwaglkivomqynfncjesal",
///             "image_location": "pgjapgkiakctxcpfpmvk",
///             "image_owner_alias": "sqvaqlxrlzhlzbczv",
///             "image_type": {
///                 "value": azure_native.awsconnector.ImageTypeValues.KERNEL,
///             },
///             "imds_support": {
///                 "value": azure_native.awsconnector.ImdsSupportValues.V20,
///             },
///             "kernel_id": "mfsmykrvrtbosarfpfuwahchz",
///             "last_launched_time": "syfznkavvtio",
///             "name": "secemuogxgahtxnpthro",
///             "owner_id": "nhuhifhzxvkdxxvaiaibzihkyvbrwh",
///             "platform": {
///                 "value": azure_native.awsconnector.PlatformValues.WINDOWS,
///             },
///             "platform_details": "lisborjwdvhfnwsziqhfnxiqdmdynp",
///             "product_codes": [{
///                 "product_code_id": "gkdidapdrunawxoaa",
///                 "product_code_type": {
///                     "value": azure_native.awsconnector.ProductCodeValues.DEVPAY,
///                 },
///             }],
///             "public": True,
///             "ramdisk_id": "xrcwfszijxclkazpcletlaoca",
///             "root_device_name": "jjgzjpjxtlhvqyvdrnqelzasdmn",
///             "root_device_type": {
///                 "value": azure_native.awsconnector.DeviceType.EBS,
///             },
///             "source_instance_id": "g",
///             "sriov_net_support": "sbnokjesjjkngdixqtiijn",
///             "state": {
///                 "value": azure_native.awsconnector.ImageState.AVAILABLE,
///             },
///             "state_reason": {
///                 "code": "xyfxvbpxwvorfincngvphetvrkhajy",
///                 "message": "qgjrouiqrxyqi",
///             },
///             "tags": [{
///                 "key": "mcszeusqtxavdhmwinblzyofkns",
///                 "value": "ehismpwetbakkwkjtngdrofhipjlko",
///             }],
///             "tpm_support": {
///                 "value": azure_native.awsconnector.TpmSupportValues.V20,
///             },
///             "usage_operation": "gdlrmqiw",
///             "virtualization_type": {
///                 "value": azure_native.awsconnector.VirtualizationType.HVM,
///             },
///         },
///         "aws_region": "chnagdbgxpnwsklnknirzcmbyhif",
///         "aws_source_schema": "zpslskfplbejouiomrfkp",
///         "aws_tags": {
///             "key3097": "osnwzuconxacmfwdhcxu",
///         },
///         "public_cloud_connectors_resource_id": "dth",
///         "public_cloud_resource_name": "iwvkviywiipsmvxpemnivpyqwnp",
///     },
///     resource_group_name="rgec2Image",
///     tags={
///         "key733": "rcinsnkdjolysslzbnmptbwfoxc",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2Image:
///     type: azure-native:awsconnector:Ec2Image
///     properties:
///       location: rskzngterhbdzpdgzthkwkfsim
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: qaahwnaabcqlufiiwhkwhv
///         awsAccountId: yvwtilsspffh
///         awsProperties:
///           architecture:
///             value: arm64
///           blockDeviceMappings:
///             - deviceName: foqeiqkjrwirhz
///               ebs:
///                 deleteOnTermination: true
///                 encrypted: true
///                 iops: 6
///                 kmsKeyId: ilegn
///                 outpostArn: yzyqckzzbmbeimvwrvckybpdil
///                 snapshotId: yjsctqicabclgsmtr
///                 throughput: 29
///                 volumeSize: 15
///                 volumeType:
///                   value: gp2
///               noDevice: rs
///               virtualName: lgrpmrjfdvrwmfghttgcdgqsfum
///           bootMode:
///             value: legacy-bios
///           creationDate: iri
///           deprecationTime: rjbfczermuljog
///           deregistrationProtection: qgzillhrsaoasehpuum
///           description: xcucajel
///           enaSupport: true
///           hypervisor:
///             value: ovm
///           imageId: abwaglkivomqynfncjesal
///           imageLocation: pgjapgkiakctxcpfpmvk
///           imageOwnerAlias: sqvaqlxrlzhlzbczv
///           imageType:
///             value: kernel
///           imdsSupport:
///             value: v2.0
///           kernelId: mfsmykrvrtbosarfpfuwahchz
///           lastLaunchedTime: syfznkavvtio
///           name: secemuogxgahtxnpthro
///           ownerId: nhuhifhzxvkdxxvaiaibzihkyvbrwh
///           platform:
///             value: Windows
///           platformDetails: lisborjwdvhfnwsziqhfnxiqdmdynp
///           productCodes:
///             - productCodeId: gkdidapdrunawxoaa
///               productCodeType:
///                 value: devpay
///           public: true
///           ramdiskId: xrcwfszijxclkazpcletlaoca
///           rootDeviceName: jjgzjpjxtlhvqyvdrnqelzasdmn
///           rootDeviceType:
///             value: ebs
///           sourceInstanceId: g
///           sriovNetSupport: sbnokjesjjkngdixqtiijn
///           state:
///             value: available
///           stateReason:
///             code: xyfxvbpxwvorfincngvphetvrkhajy
///             message: qgjrouiqrxyqi
///           tags:
///             - key: mcszeusqtxavdhmwinblzyofkns
///               value: ehismpwetbakkwkjtngdrofhipjlko
///           tpmSupport:
///             value: v2.0
///           usageOperation: gdlrmqiw
///           virtualizationType:
///             value: hvm
///         awsRegion: chnagdbgxpnwsklnknirzcmbyhif
///         awsSourceSchema: zpslskfplbejouiomrfkp
///         awsTags:
///           key3097: osnwzuconxacmfwdhcxu
///         publicCloudConnectorsResourceId: dth
///         publicCloudResourceName: iwvkviywiipsmvxpemnivpyqwnp
///       resourceGroupName: rgec2Image
///       tags:
///         key733: rcinsnkdjolysslzbnmptbwfoxc
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
/// $ pulumi import azure-native:awsconnector:Ec2Image pzwam /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2Images/{name}
/// ```
class Ec2Image extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2ImagePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2Image]. {@macro pulumi_awsconnector_ec2_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2Image(
    String name, {
    Ec2ImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:Ec2Image',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2ImagePropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
