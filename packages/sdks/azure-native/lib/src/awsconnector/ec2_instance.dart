import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_instance_args.dart';
import 'ec2_instance_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2Instances_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Instance = new AzureNative.AwsConnector.Ec2Instance("ec2Instance", new()
///     {
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2InstancePropertiesArgs
///         {
///             Arn = "noxwkahrsrcnrpz",
///             AwsAccountId = "hhrjjrfopsrebnklxmr",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2InstancePropertiesArgs
///             {
///                 AmiLaunchIndex = 27,
///                 Architecture = new AzureNative.AwsConnector.Inputs.ArchitectureValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ArchitectureValues.Arm64,
///                 },
///                 BlockDeviceMappings = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.InstanceBlockDeviceMappingArgs
///                     {
///                         DeviceName = "tfaglaaaklzilxzmk",
///                         Ebs = new AzureNative.AwsConnector.Inputs.EbsInstanceBlockDeviceArgs
///                         {
///                             AssociatedResource = "pgkczdagxihtrkzzaiuzennp",
///                             AttachTime = "2024-10-08T03:49:10.616Z",
///                             DeleteOnTermination = true,
///                             Status = new AzureNative.AwsConnector.Inputs.AttachmentStatusEnumValueArgs
///                             {
///                                 Value = AzureNative.AwsConnector.AttachmentStatus.Attached,
///                             },
///                             VolumeId = "ilihhdgfhpylwqnaglcmj",
///                             VolumeOwnerId = "ruylzxnmlundujqdqkqocknldkttka",
///                         },
///                     },
///                 },
///                 BootMode = new AzureNative.AwsConnector.Inputs.BootModeValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.BootModeValues.LegacyBios,
///                 },
///                 CapacityReservationId = "rgxeywdieyjfmp",
///                 CapacityReservationSpecification = new AzureNative.AwsConnector.Inputs.CapacityReservationSpecificationResponseArgs
///                 {
///                     CapacityReservationPreference = new AzureNative.AwsConnector.Inputs.CapacityReservationPreferenceEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.CapacityReservationPreference.None,
///                     },
///                     CapacityReservationTarget = new AzureNative.AwsConnector.Inputs.CapacityReservationTargetResponseArgs
///                     {
///                         CapacityReservationId = "dvdusvbgjrkkuqrelloyysinnzpjb",
///                         CapacityReservationResourceGroupArn = "itnyqqrlujfkasgzbrvljlbh",
///                     },
///                 },
///                 ClientToken = "zgimjubyev",
///                 CpuOptions = new AzureNative.AwsConnector.Inputs.CpuOptionsArgs
///                 {
///                     AmdSevSnp = new AzureNative.AwsConnector.Inputs.AmdSevSnpSpecificationEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.AmdSevSnpSpecification.Disabled,
///                     },
///                     CoreCount = 27,
///                     ThreadsPerCore = 11,
///                 },
///                 CurrentInstanceBootMode = new AzureNative.AwsConnector.Inputs.InstanceBootModeValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.InstanceBootModeValues.LegacyBios,
///                 },
///                 EbsOptimized = true,
///                 ElasticGpuAssociations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ElasticGpuAssociationArgs
///                     {
///                         ElasticGpuAssociationId = "jmxqiqiyocefwrivbcumzx",
///                         ElasticGpuAssociationState = "mkteimwlzs",
///                         ElasticGpuAssociationTime = "sosasrnqg",
///                         ElasticGpuId = "dnpmhib",
///                     },
///                 },
///                 ElasticInferenceAcceleratorAssociations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ElasticInferenceAcceleratorAssociationArgs
///                     {
///                         ElasticInferenceAcceleratorArn = "pnbrdzuzjxuwrtpdc",
///                         ElasticInferenceAcceleratorAssociationId = "uoout",
///                         ElasticInferenceAcceleratorAssociationState = "bwbmjkusisjrxxdonwtxkbgbaxk",
///                         ElasticInferenceAcceleratorAssociationTime = "2024-10-08T03:49:10.617Z",
///                     },
///                 },
///                 EnaSupport = true,
///                 EnclaveOptions = new AzureNative.AwsConnector.Inputs.EnclaveOptionsArgs
///                 {
///                     Enabled = true,
///                 },
///                 HibernationOptions = new AzureNative.AwsConnector.Inputs.HibernationOptionsArgs
///                 {
///                     Configured = true,
///                 },
///                 Hypervisor = new AzureNative.AwsConnector.Inputs.HypervisorTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.HypervisorType.Ovm,
///                 },
///                 IamInstanceProfile = new AzureNative.AwsConnector.Inputs.IamInstanceProfileArgs
///                 {
///                     Arn = "jvju",
///                     Id = "kdzthqdiqjcknesajpbplmkynzokr",
///                 },
///                 ImageId = "oemhjwhbzkbcwocprtn",
///                 InstanceId = "czyyyovcqwce",
///                 InstanceLifecycle = new AzureNative.AwsConnector.Inputs.InstanceLifecycleTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.InstanceLifecycleType.CapacityBlock,
///                 },
///                 InstanceType = new AzureNative.AwsConnector.Inputs.InstanceTypeEnumValueArgs
///                 {
///                     Value = "a1.2xlarge",
///                 },
///                 Ipv6Address = "kuzwkpvttqtjxowkisga",
///                 KernelId = "qqehgoolsvuh",
///                 KeyName = "bxxdzmyclfgrwqwnjajhs",
///                 LaunchTime = "2024-10-08T03:49:10.618Z",
///                 Licenses = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.LicenseConfigurationArgs
///                     {
///                         LicenseConfigurationArn = "q",
///                     },
///                 },
///                 MaintenanceOptions = new AzureNative.AwsConnector.Inputs.InstanceMaintenanceOptionsArgs
///                 {
///                     AutoRecovery = new AzureNative.AwsConnector.Inputs.InstanceAutoRecoveryStateEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.InstanceAutoRecoveryState.Default,
///                     },
///                 },
///                 MetadataOptions = new AzureNative.AwsConnector.Inputs.InstanceMetadataOptionsResponseArgs
///                 {
///                     HttpEndpoint = new AzureNative.AwsConnector.Inputs.InstanceMetadataEndpointStateEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.InstanceMetadataEndpointState.Disabled,
///                     },
///                     HttpProtocolIpv6 = new AzureNative.AwsConnector.Inputs.InstanceMetadataProtocolStateEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.InstanceMetadataProtocolState.Disabled,
///                     },
///                     HttpPutResponseHopLimit = 3,
///                     HttpTokens = new AzureNative.AwsConnector.Inputs.HttpTokensStateEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.HttpTokensState.Optional,
///                     },
///                     InstanceMetadataTags = new AzureNative.AwsConnector.Inputs.InstanceMetadataTagsStateEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.InstanceMetadataTagsState.Disabled,
///                     },
///                     State = new AzureNative.AwsConnector.Inputs.InstanceMetadataOptionsStateEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.InstanceMetadataOptionsState.Applied,
///                     },
///                 },
///                 Monitoring = new AzureNative.AwsConnector.Inputs.MonitoringArgs
///                 {
///                     State = new AzureNative.AwsConnector.Inputs.MonitoringStateEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.MonitoringState.Disabled,
///                     },
///                 },
///                 NetworkInterfaces = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.InstanceNetworkInterfaceArgs
///                     {
///                         Association = new AzureNative.AwsConnector.Inputs.InstanceNetworkInterfaceAssociationArgs
///                         {
///                             CarrierIp = "gyqfkluecfuwebntnygczb",
///                             CustomerOwnedIp = "sw",
///                             IpOwnerId = "fbrkixipyqjnao",
///                             PublicDnsName = "oivnzjavxqmctzvhgmsavgwesabny",
///                             PublicIp = "tojjymqqjmschjp",
///                         },
///                         Attachment = new AzureNative.AwsConnector.Inputs.InstanceNetworkInterfaceAttachmentArgs
///                         {
///                             AttachTime = "2024-10-08T03:49:10.618Z",
///                             AttachmentId = "lsqnlzd",
///                             DeleteOnTermination = true,
///                             DeviceIndex = 11,
///                             EnaSrdSpecification = new AzureNative.AwsConnector.Inputs.InstanceAttachmentEnaSrdSpecificationArgs
///                             {
///                                 EnaSrdEnabled = true,
///                                 EnaSrdUdpSpecification = new AzureNative.AwsConnector.Inputs.InstanceAttachmentEnaSrdUdpSpecificationArgs
///                                 {
///                                     EnaSrdUdpEnabled = true,
///                                 },
///                             },
///                             NetworkCardIndex = 9,
///                             Status = new AzureNative.AwsConnector.Inputs.AttachmentStatusEnumValueArgs
///                             {
///                                 Value = AzureNative.AwsConnector.AttachmentStatus.Attached,
///                             },
///                         },
///                         ConnectionTrackingConfiguration = new AzureNative.AwsConnector.Inputs.ConnectionTrackingSpecificationResponseArgs
///                         {
///                             TcpEstablishedTimeout = 23,
///                             UdpStreamTimeout = 24,
///                             UdpTimeout = 30,
///                         },
///                         Description = "wcdguczvqhelvbuhnx",
///                         Groups = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.GroupIdentifierArgs
///                             {
///                                 GroupId = "nwupmxpxrzdroizfewqupyddewi",
///                                 GroupName = "gvsaaqihzfcwdmeocclatfqm",
///                             },
///                         },
///                         InterfaceType = "mphomintds",
///                         Ipv4Prefixes = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.InstanceIpv4PrefixArgs
///                             {
///                                 Ipv4Prefix = "ortyghjrffqjz",
///                             },
///                         },
///                         Ipv6Addresses = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.InstanceIpv6AddressArgs
///                             {
///                                 Ipv6Address = "z",
///                                 IsPrimaryIpv6 = true,
///                             },
///                         },
///                         Ipv6Prefixes = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.InstanceIpv6PrefixArgs
///                             {
///                                 Ipv6Prefix = "cstrptdpvmberviuvuqfd",
///                             },
///                         },
///                         MacAddress = "k",
///                         NetworkInterfaceId = "qythf",
///                         OwnerId = "fvjysbetbyrzccspcenkpvi",
///                         PrivateDnsName = "yvorusnuuigavdcqqdxecrkmjmhrf",
///                         PrivateIpAddress = "m",
///                         PrivateIpAddresses = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.InstancePrivateIpAddressArgs
///                             {
///                                 Association = new AzureNative.AwsConnector.Inputs.InstanceNetworkInterfaceAssociationArgs
///                                 {
///                                     CarrierIp = "gyqfkluecfuwebntnygczb",
///                                     CustomerOwnedIp = "sw",
///                                     IpOwnerId = "fbrkixipyqjnao",
///                                     PublicDnsName = "oivnzjavxqmctzvhgmsavgwesabny",
///                                     PublicIp = "tojjymqqjmschjp",
///                                 },
///                                 Primary = true,
///                                 PrivateDnsName = "bdezhkhwoerivtfwgqelrsyiphf",
///                                 PrivateIpAddress = "xcqnyrs",
///                             },
///                         },
///                         SourceDestCheck = true,
///                         Status = new AzureNative.AwsConnector.Inputs.NetworkInterfaceStatusEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.NetworkInterfaceStatus.Associated,
///                         },
///                         SubnetId = "euocsemlw",
///                         VpcId = "grahbrhjelkewder",
///                     },
///                 },
///                 OutpostArn = "godjddxeidxe",
///                 Placement = new AzureNative.AwsConnector.Inputs.PlacementArgs
///                 {
///                     Affinity = "xzseileq",
///                     AvailabilityZone = "vsfvyosolmnchbavxfvtizqptgmeg",
///                     GroupId = "davwvkjoij",
///                     GroupName = "txqgn",
///                     HostId = "mvbshbhxclztfwffsu",
///                     HostResourceGroupArn = "zl",
///                     PartitionNumber = 24,
///                     SpreadDomain = "t",
///                     Tenancy = new AzureNative.AwsConnector.Inputs.TenancyEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.Tenancy.Dedicated,
///                     },
///                 },
///                 Platform = new AzureNative.AwsConnector.Inputs.PlatformValuesEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.PlatformValues.Windows,
///                 },
///                 PlatformDetails = "rcwqyqgcruqjcvzcto",
///                 PrivateDnsName = "ieuhntvllhoojakokyt",
///                 PrivateDnsNameOptions = new AzureNative.AwsConnector.Inputs.PrivateDnsNameOptionsResponseArgs
///                 {
///                     EnableResourceNameDnsAAAARecord = true,
///                     EnableResourceNameDnsARecord = true,
///                     HostnameType = new AzureNative.AwsConnector.Inputs.HostnameTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.HostnameType.IpName,
///                     },
///                 },
///                 PrivateIpAddress = "uosximzwwopktgyzlathmorgqah",
///                 ProductCodes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ProductCodeArgs
///                     {
///                         ProductCodeId = "sexxutnmcfhkamhmvjrggoscatni",
///                         ProductCodeType = new AzureNative.AwsConnector.Inputs.ProductCodeValuesEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.ProductCodeValues.Devpay,
///                         },
///                     },
///                 },
///                 PublicDnsName = "qkucqmeldgiumuzribitahwft",
///                 PublicIpAddress = "ialohsszgtpuycimtqi",
///                 RamdiskId = "ggkfkl",
///                 RootDeviceName = "dbfwarbazrbzcjnh",
///                 RootDeviceType = new AzureNative.AwsConnector.Inputs.DeviceTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.DeviceType.Ebs,
///                 },
///                 SecurityGroups = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.GroupIdentifierArgs
///                     {
///                         GroupId = "nwupmxpxrzdroizfewqupyddewi",
///                         GroupName = "gvsaaqihzfcwdmeocclatfqm",
///                     },
///                 },
///                 SourceDestCheck = true,
///                 SpotInstanceRequestId = "qiylxsuuinwyq",
///                 SriovNetSupport = "kiffwvajczdtzwcfeefqespn",
///                 State = new AzureNative.AwsConnector.Inputs.InstanceStateArgs
///                 {
///                     Code = 18,
///                     Name = new AzureNative.AwsConnector.Inputs.InstanceStateNameEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.InstanceStateName.Pending,
///                     },
///                 },
///                 StateReason = new AzureNative.AwsConnector.Inputs.StateReasonArgs
///                 {
///                     Code = "kdnlidwcsckwbplroijtjciufgg",
///                     Message = "dvgendvpuuzx",
///                 },
///                 StateTransitionReason = "arenmfmnvv",
///                 SubnetId = "mgnibedayjllwaidbjh",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "pbvbjvyuqibbevydlslmfple",
///                         Value = "zztbwjxzwgmnjqhegktznmdrqferd",
///                     },
///                 },
///                 TpmSupport = "fvxtckturm",
///                 UsageOperation = "xrctwrcgpcrhlfjzhdvhiovdlcqafq",
///                 UsageOperationUpdateTime = "2024-10-08T03:49:10.619Z",
///                 VirtualizationType = new AzureNative.AwsConnector.Inputs.VirtualizationTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.VirtualizationType.Hvm,
///                 },
///                 VpcId = "g",
///             },
///             AwsRegion = "tcaqttnhykcej",
///             AwsSourceSchema = "tncjfmwlkponefezhigbyno",
///             AwsTags =
///             {
///                 { "key2934", "wyx" },
///             },
///             PublicCloudConnectorsResourceId = "shnvqmmslrarjuzdpyhlnfxxp",
///             PublicCloudResourceName = "sffqiavopmcwltotrpubudq",
///         },
///         ResourceUri = "c",
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
/// 		_, err := awsconnector.NewEc2Instance(ctx, "ec2Instance", &awsconnector.Ec2InstanceArgs{
/// 			Properties: &awsconnector.Ec2InstancePropertiesArgs{
/// 				Arn:          pulumi.String("noxwkahrsrcnrpz"),
/// 				AwsAccountId: pulumi.String("hhrjjrfopsrebnklxmr"),
/// 				AwsProperties: &awsconnector.AwsEc2InstancePropertiesArgs{
/// 					AmiLaunchIndex: pulumi.Int(27),
/// 					Architecture: &awsconnector.ArchitectureValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ArchitectureValuesArm64),
/// 					},
/// 					BlockDeviceMappings: awsconnector.InstanceBlockDeviceMappingArray{
/// 						&awsconnector.InstanceBlockDeviceMappingArgs{
/// 							DeviceName: pulumi.String("tfaglaaaklzilxzmk"),
/// 							Ebs: &awsconnector.EbsInstanceBlockDeviceArgs{
/// 								AssociatedResource:  pulumi.String("pgkczdagxihtrkzzaiuzennp"),
/// 								AttachTime:          pulumi.String("2024-10-08T03:49:10.616Z"),
/// 								DeleteOnTermination: pulumi.Bool(true),
/// 								Status: &awsconnector.AttachmentStatusEnumValueArgs{
/// 									Value: pulumi.String(awsconnector.AttachmentStatusAttached),
/// 								},
/// 								VolumeId:      pulumi.String("ilihhdgfhpylwqnaglcmj"),
/// 								VolumeOwnerId: pulumi.String("ruylzxnmlundujqdqkqocknldkttka"),
/// 							},
/// 						},
/// 					},
/// 					BootMode: &awsconnector.BootModeValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.BootModeValuesLegacyBios),
/// 					},
/// 					CapacityReservationId: pulumi.String("rgxeywdieyjfmp"),
/// 					CapacityReservationSpecification: &awsconnector.CapacityReservationSpecificationResponseArgs{
/// 						CapacityReservationPreference: &awsconnector.CapacityReservationPreferenceEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.CapacityReservationPreferenceNone),
/// 						},
/// 						CapacityReservationTarget: &awsconnector.CapacityReservationTargetResponseArgs{
/// 							CapacityReservationId:               pulumi.String("dvdusvbgjrkkuqrelloyysinnzpjb"),
/// 							CapacityReservationResourceGroupArn: pulumi.String("itnyqqrlujfkasgzbrvljlbh"),
/// 						},
/// 					},
/// 					ClientToken: pulumi.String("zgimjubyev"),
/// 					CpuOptions: &awsconnector.CpuOptionsArgs{
/// 						AmdSevSnp: &awsconnector.AmdSevSnpSpecificationEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.AmdSevSnpSpecificationDisabled),
/// 						},
/// 						CoreCount:      pulumi.Int(27),
/// 						ThreadsPerCore: pulumi.Int(11),
/// 					},
/// 					CurrentInstanceBootMode: &awsconnector.InstanceBootModeValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.InstanceBootModeValuesLegacyBios),
/// 					},
/// 					EbsOptimized: pulumi.Bool(true),
/// 					ElasticGpuAssociations: awsconnector.ElasticGpuAssociationArray{
/// 						&awsconnector.ElasticGpuAssociationArgs{
/// 							ElasticGpuAssociationId:    pulumi.String("jmxqiqiyocefwrivbcumzx"),
/// 							ElasticGpuAssociationState: pulumi.String("mkteimwlzs"),
/// 							ElasticGpuAssociationTime:  pulumi.String("sosasrnqg"),
/// 							ElasticGpuId:               pulumi.String("dnpmhib"),
/// 						},
/// 					},
/// 					ElasticInferenceAcceleratorAssociations: awsconnector.ElasticInferenceAcceleratorAssociationArray{
/// 						&awsconnector.ElasticInferenceAcceleratorAssociationArgs{
/// 							ElasticInferenceAcceleratorArn:              pulumi.String("pnbrdzuzjxuwrtpdc"),
/// 							ElasticInferenceAcceleratorAssociationId:    pulumi.String("uoout"),
/// 							ElasticInferenceAcceleratorAssociationState: pulumi.String("bwbmjkusisjrxxdonwtxkbgbaxk"),
/// 							ElasticInferenceAcceleratorAssociationTime:  pulumi.String("2024-10-08T03:49:10.617Z"),
/// 						},
/// 					},
/// 					EnaSupport: pulumi.Bool(true),
/// 					EnclaveOptions: &awsconnector.EnclaveOptionsArgs{
/// 						Enabled: pulumi.Bool(true),
/// 					},
/// 					HibernationOptions: &awsconnector.HibernationOptionsArgs{
/// 						Configured: pulumi.Bool(true),
/// 					},
/// 					Hypervisor: &awsconnector.HypervisorTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.HypervisorTypeOvm),
/// 					},
/// 					IamInstanceProfile: &awsconnector.IamInstanceProfileTypeArgs{
/// 						Arn: pulumi.String("jvju"),
/// 						Id:  pulumi.String("kdzthqdiqjcknesajpbplmkynzokr"),
/// 					},
/// 					ImageId:    pulumi.String("oemhjwhbzkbcwocprtn"),
/// 					InstanceId: pulumi.String("czyyyovcqwce"),
/// 					InstanceLifecycle: &awsconnector.InstanceLifecycleTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.InstanceLifecycleTypeCapacityBlock),
/// 					},
/// 					InstanceType: &awsconnector.InstanceTypeEnumValueArgs{
/// 						Value: pulumi.String("a1.2xlarge"),
/// 					},
/// 					Ipv6Address: pulumi.String("kuzwkpvttqtjxowkisga"),
/// 					KernelId:    pulumi.String("qqehgoolsvuh"),
/// 					KeyName:     pulumi.String("bxxdzmyclfgrwqwnjajhs"),
/// 					LaunchTime:  pulumi.String("2024-10-08T03:49:10.618Z"),
/// 					Licenses: awsconnector.LicenseConfigurationArray{
/// 						&awsconnector.LicenseConfigurationArgs{
/// 							LicenseConfigurationArn: pulumi.String("q"),
/// 						},
/// 					},
/// 					MaintenanceOptions: &awsconnector.InstanceMaintenanceOptionsArgs{
/// 						AutoRecovery: &awsconnector.InstanceAutoRecoveryStateEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.InstanceAutoRecoveryStateDefault),
/// 						},
/// 					},
/// 					MetadataOptions: &awsconnector.InstanceMetadataOptionsResponseArgs{
/// 						HttpEndpoint: &awsconnector.InstanceMetadataEndpointStateEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.InstanceMetadataEndpointStateDisabled),
/// 						},
/// 						HttpProtocolIpv6: &awsconnector.InstanceMetadataProtocolStateEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.InstanceMetadataProtocolStateDisabled),
/// 						},
/// 						HttpPutResponseHopLimit: pulumi.Int(3),
/// 						HttpTokens: &awsconnector.HttpTokensStateEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.HttpTokensStateOptional),
/// 						},
/// 						InstanceMetadataTags: &awsconnector.InstanceMetadataTagsStateEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.InstanceMetadataTagsStateDisabled),
/// 						},
/// 						State: &awsconnector.InstanceMetadataOptionsStateEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.InstanceMetadataOptionsStateApplied),
/// 						},
/// 					},
/// 					Monitoring: &awsconnector.MonitoringArgs{
/// 						State: &awsconnector.MonitoringStateEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.MonitoringStateDisabled),
/// 						},
/// 					},
/// 					NetworkInterfaces: awsconnector.InstanceNetworkInterfaceArray{
/// 						&awsconnector.InstanceNetworkInterfaceArgs{
/// 							Association: &awsconnector.InstanceNetworkInterfaceAssociationArgs{
/// 								CarrierIp:       pulumi.String("gyqfkluecfuwebntnygczb"),
/// 								CustomerOwnedIp: pulumi.String("sw"),
/// 								IpOwnerId:       pulumi.String("fbrkixipyqjnao"),
/// 								PublicDnsName:   pulumi.String("oivnzjavxqmctzvhgmsavgwesabny"),
/// 								PublicIp:        pulumi.String("tojjymqqjmschjp"),
/// 							},
/// 							Attachment: &awsconnector.InstanceNetworkInterfaceAttachmentArgs{
/// 								AttachTime:          pulumi.String("2024-10-08T03:49:10.618Z"),
/// 								AttachmentId:        pulumi.String("lsqnlzd"),
/// 								DeleteOnTermination: pulumi.Bool(true),
/// 								DeviceIndex:         pulumi.Int(11),
/// 								EnaSrdSpecification: &awsconnector.InstanceAttachmentEnaSrdSpecificationArgs{
/// 									EnaSrdEnabled: pulumi.Bool(true),
/// 									EnaSrdUdpSpecification: &awsconnector.InstanceAttachmentEnaSrdUdpSpecificationArgs{
/// 										EnaSrdUdpEnabled: pulumi.Bool(true),
/// 									},
/// 								},
/// 								NetworkCardIndex: pulumi.Int(9),
/// 								Status: &awsconnector.AttachmentStatusEnumValueArgs{
/// 									Value: pulumi.String(awsconnector.AttachmentStatusAttached),
/// 								},
/// 							},
/// 							ConnectionTrackingConfiguration: &awsconnector.ConnectionTrackingSpecificationResponseArgs{
/// 								TcpEstablishedTimeout: pulumi.Int(23),
/// 								UdpStreamTimeout:      pulumi.Int(24),
/// 								UdpTimeout:            pulumi.Int(30),
/// 							},
/// 							Description: pulumi.String("wcdguczvqhelvbuhnx"),
/// 							Groups: awsconnector.GroupIdentifierArray{
/// 								&awsconnector.GroupIdentifierArgs{
/// 									GroupId:   pulumi.String("nwupmxpxrzdroizfewqupyddewi"),
/// 									GroupName: pulumi.String("gvsaaqihzfcwdmeocclatfqm"),
/// 								},
/// 							},
/// 							InterfaceType: pulumi.String("mphomintds"),
/// 							Ipv4Prefixes: awsconnector.InstanceIpv4PrefixArray{
/// 								&awsconnector.InstanceIpv4PrefixArgs{
/// 									Ipv4Prefix: pulumi.String("ortyghjrffqjz"),
/// 								},
/// 							},
/// 							Ipv6Addresses: awsconnector.InstanceIpv6AddressArray{
/// 								&awsconnector.InstanceIpv6AddressArgs{
/// 									Ipv6Address:   pulumi.String("z"),
/// 									IsPrimaryIpv6: pulumi.Bool(true),
/// 								},
/// 							},
/// 							Ipv6Prefixes: awsconnector.InstanceIpv6PrefixArray{
/// 								&awsconnector.InstanceIpv6PrefixArgs{
/// 									Ipv6Prefix: pulumi.String("cstrptdpvmberviuvuqfd"),
/// 								},
/// 							},
/// 							MacAddress:         pulumi.String("k"),
/// 							NetworkInterfaceId: pulumi.String("qythf"),
/// 							OwnerId:            pulumi.String("fvjysbetbyrzccspcenkpvi"),
/// 							PrivateDnsName:     pulumi.String("yvorusnuuigavdcqqdxecrkmjmhrf"),
/// 							PrivateIpAddress:   pulumi.String("m"),
/// 							PrivateIpAddresses: awsconnector.InstancePrivateIpAddressArray{
/// 								&awsconnector.InstancePrivateIpAddressArgs{
/// 									Association: &awsconnector.InstanceNetworkInterfaceAssociationArgs{
/// 										CarrierIp:       pulumi.String("gyqfkluecfuwebntnygczb"),
/// 										CustomerOwnedIp: pulumi.String("sw"),
/// 										IpOwnerId:       pulumi.String("fbrkixipyqjnao"),
/// 										PublicDnsName:   pulumi.String("oivnzjavxqmctzvhgmsavgwesabny"),
/// 										PublicIp:        pulumi.String("tojjymqqjmschjp"),
/// 									},
/// 									Primary:          pulumi.Bool(true),
/// 									PrivateDnsName:   pulumi.String("bdezhkhwoerivtfwgqelrsyiphf"),
/// 									PrivateIpAddress: pulumi.String("xcqnyrs"),
/// 								},
/// 							},
/// 							SourceDestCheck: pulumi.Bool(true),
/// 							Status: &awsconnector.NetworkInterfaceStatusEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.NetworkInterfaceStatusAssociated),
/// 							},
/// 							SubnetId: pulumi.String("euocsemlw"),
/// 							VpcId:    pulumi.String("grahbrhjelkewder"),
/// 						},
/// 					},
/// 					OutpostArn: pulumi.String("godjddxeidxe"),
/// 					Placement: &awsconnector.PlacementArgs{
/// 						Affinity:             pulumi.String("xzseileq"),
/// 						AvailabilityZone:     pulumi.String("vsfvyosolmnchbavxfvtizqptgmeg"),
/// 						GroupId:              pulumi.String("davwvkjoij"),
/// 						GroupName:            pulumi.String("txqgn"),
/// 						HostId:               pulumi.String("mvbshbhxclztfwffsu"),
/// 						HostResourceGroupArn: pulumi.String("zl"),
/// 						PartitionNumber:      pulumi.Int(24),
/// 						SpreadDomain:         pulumi.String("t"),
/// 						Tenancy: &awsconnector.TenancyEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.TenancyDedicated),
/// 						},
/// 					},
/// 					Platform: &awsconnector.PlatformValuesEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.PlatformValuesWindows),
/// 					},
/// 					PlatformDetails: pulumi.String("rcwqyqgcruqjcvzcto"),
/// 					PrivateDnsName:  pulumi.String("ieuhntvllhoojakokyt"),
/// 					PrivateDnsNameOptions: &awsconnector.PrivateDnsNameOptionsResponseArgs{
/// 						EnableResourceNameDnsAAAARecord: pulumi.Bool(true),
/// 						EnableResourceNameDnsARecord:    pulumi.Bool(true),
/// 						HostnameType: &awsconnector.HostnameTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.HostnameTypeIpName),
/// 						},
/// 					},
/// 					PrivateIpAddress: pulumi.String("uosximzwwopktgyzlathmorgqah"),
/// 					ProductCodes: awsconnector.ProductCodeArray{
/// 						&awsconnector.ProductCodeArgs{
/// 							ProductCodeId: pulumi.String("sexxutnmcfhkamhmvjrggoscatni"),
/// 							ProductCodeType: &awsconnector.ProductCodeValuesEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.ProductCodeValuesDevpay),
/// 							},
/// 						},
/// 					},
/// 					PublicDnsName:   pulumi.String("qkucqmeldgiumuzribitahwft"),
/// 					PublicIpAddress: pulumi.String("ialohsszgtpuycimtqi"),
/// 					RamdiskId:       pulumi.String("ggkfkl"),
/// 					RootDeviceName:  pulumi.String("dbfwarbazrbzcjnh"),
/// 					RootDeviceType: &awsconnector.DeviceTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.DeviceTypeEbs),
/// 					},
/// 					SecurityGroups: awsconnector.GroupIdentifierArray{
/// 						&awsconnector.GroupIdentifierArgs{
/// 							GroupId:   pulumi.String("nwupmxpxrzdroizfewqupyddewi"),
/// 							GroupName: pulumi.String("gvsaaqihzfcwdmeocclatfqm"),
/// 						},
/// 					},
/// 					SourceDestCheck:       pulumi.Bool(true),
/// 					SpotInstanceRequestId: pulumi.String("qiylxsuuinwyq"),
/// 					SriovNetSupport:       pulumi.String("kiffwvajczdtzwcfeefqespn"),
/// 					State: &awsconnector.InstanceStateArgs{
/// 						Code: pulumi.Int(18),
/// 						Name: &awsconnector.InstanceStateNameEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.InstanceStateNamePending),
/// 						},
/// 					},
/// 					StateReason: &awsconnector.StateReasonArgs{
/// 						Code:    pulumi.String("kdnlidwcsckwbplroijtjciufgg"),
/// 						Message: pulumi.String("dvgendvpuuzx"),
/// 					},
/// 					StateTransitionReason: pulumi.String("arenmfmnvv"),
/// 					SubnetId:              pulumi.String("mgnibedayjllwaidbjh"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("pbvbjvyuqibbevydlslmfple"),
/// 							Value: pulumi.String("zztbwjxzwgmnjqhegktznmdrqferd"),
/// 						},
/// 					},
/// 					TpmSupport:               pulumi.String("fvxtckturm"),
/// 					UsageOperation:           pulumi.String("xrctwrcgpcrhlfjzhdvhiovdlcqafq"),
/// 					UsageOperationUpdateTime: pulumi.String("2024-10-08T03:49:10.619Z"),
/// 					VirtualizationType: &awsconnector.VirtualizationTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.VirtualizationTypeHvm),
/// 					},
/// 					VpcId: pulumi.String("g"),
/// 				},
/// 				AwsRegion:       pulumi.String("tcaqttnhykcej"),
/// 				AwsSourceSchema: pulumi.String("tncjfmwlkponefezhigbyno"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2934": pulumi.String("wyx"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("shnvqmmslrarjuzdpyhlnfxxp"),
/// 				PublicCloudResourceName:         pulumi.String("sffqiavopmcwltotrpubudq"),
/// 			},
/// 			ResourceUri: pulumi.String("c"),
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
/// resource "azure-native_awsconnector_ec2instance" "ec2Instance" {
///   properties = {
///     arn            = "noxwkahrsrcnrpz"
///     aws_account_id = "hhrjjrfopsrebnklxmr"
///     aws_properties = {
///       ami_launch_index = 27
///       architecture = {
///         value = "arm64"
///       }
///       block_device_mappings = [{
///         "deviceName" = "tfaglaaaklzilxzmk"
///         "ebs" = {
///           "associatedResource"  = "pgkczdagxihtrkzzaiuzennp"
///           "attachTime"          = "2024-10-08T03:49:10.616Z"
///           "deleteOnTermination" = true
///           "status" = {
///             "value" = "attached"
///           }
///           "volumeId"      = "ilihhdgfhpylwqnaglcmj"
///           "volumeOwnerId" = "ruylzxnmlundujqdqkqocknldkttka"
///         }
///       }]
///       boot_mode = {
///         value = "legacy-bios"
///       }
///       capacity_reservation_id = "rgxeywdieyjfmp"
///       capacity_reservation_specification = {
///         capacity_reservation_preference = {
///           value = "none"
///         }
///         capacity_reservation_target = {
///           capacity_reservation_id                 = "dvdusvbgjrkkuqrelloyysinnzpjb"
///           capacity_reservation_resource_group_arn = "itnyqqrlujfkasgzbrvljlbh"
///         }
///       }
///       client_token = "zgimjubyev"
///       cpu_options = {
///         amd_sev_snp = {
///           value = "disabled"
///         }
///         core_count       = 27
///         threads_per_core = 11
///       }
///       current_instance_boot_mode = {
///         value = "legacy-bios"
///       }
///       ebs_optimized = true
///       elastic_gpu_associations = [{
///         "elasticGpuAssociationId"    = "jmxqiqiyocefwrivbcumzx"
///         "elasticGpuAssociationState" = "mkteimwlzs"
///         "elasticGpuAssociationTime"  = "sosasrnqg"
///         "elasticGpuId"               = "dnpmhib"
///       }]
///       elastic_inference_accelerator_associations = [{
///         "elasticInferenceAcceleratorArn"              = "pnbrdzuzjxuwrtpdc"
///         "elasticInferenceAcceleratorAssociationId"    = "uoout"
///         "elasticInferenceAcceleratorAssociationState" = "bwbmjkusisjrxxdonwtxkbgbaxk"
///         "elasticInferenceAcceleratorAssociationTime"  = "2024-10-08T03:49:10.617Z"
///       }]
///       ena_support = true
///       enclave_options = {
///         enabled = true
///       }
///       hibernation_options = {
///         configured = true
///       }
///       hypervisor = {
///         value = "ovm"
///       }
///       iam_instance_profile = {
///         arn = "jvju"
///         id  = "kdzthqdiqjcknesajpbplmkynzokr"
///       }
///       image_id    = "oemhjwhbzkbcwocprtn"
///       instance_id = "czyyyovcqwce"
///       instance_lifecycle = {
///         value = "capacity-block"
///       }
///       instance_type = {
///         value = "a1.2xlarge"
///       }
///       ipv6_address = "kuzwkpvttqtjxowkisga"
///       kernel_id    = "qqehgoolsvuh"
///       key_name     = "bxxdzmyclfgrwqwnjajhs"
///       launch_time  = "2024-10-08T03:49:10.618Z"
///       licenses = [{
///         "licenseConfigurationArn" = "q"
///       }]
///       maintenance_options = {
///         auto_recovery = {
///           value = "default"
///         }
///       }
///       metadata_options = {
///         http_endpoint = {
///           value = "disabled"
///         }
///         http_protocol_ipv6 = {
///           value = "disabled"
///         }
///         http_put_response_hop_limit = 3
///         http_tokens = {
///           value = "optional"
///         }
///         instance_metadata_tags = {
///           value = "disabled"
///         }
///         state = {
///           value = "applied"
///         }
///       }
///       monitoring = {
///         state = {
///           value = "disabled"
///         }
///       }
///       network_interfaces = [{
///         "association" = {
///           "carrierIp"       = "gyqfkluecfuwebntnygczb"
///           "customerOwnedIp" = "sw"
///           "ipOwnerId"       = "fbrkixipyqjnao"
///           "publicDnsName"   = "oivnzjavxqmctzvhgmsavgwesabny"
///           "publicIp"        = "tojjymqqjmschjp"
///         }
///         "attachment" = {
///           "attachTime"          = "2024-10-08T03:49:10.618Z"
///           "attachmentId"        = "lsqnlzd"
///           "deleteOnTermination" = true
///           "deviceIndex"         = 11
///           "enaSrdSpecification" = {
///             "enaSrdEnabled" = true
///             "enaSrdUdpSpecification" = {
///               "enaSrdUdpEnabled" = true
///             }
///           }
///           "networkCardIndex" = 9
///           "status" = {
///             "value" = "attached"
///           }
///         }
///         "connectionTrackingConfiguration" = {
///           "tcpEstablishedTimeout" = 23
///           "udpStreamTimeout"      = 24
///           "udpTimeout"            = 30
///         }
///         "description" = "wcdguczvqhelvbuhnx"
///         "groups" = [{
///           "groupId"   = "nwupmxpxrzdroizfewqupyddewi"
///           "groupName" = "gvsaaqihzfcwdmeocclatfqm"
///         }]
///         "interfaceType" = "mphomintds"
///         "ipv4Prefixes" = [{
///           "ipv4Prefix" = "ortyghjrffqjz"
///         }]
///         "ipv6Addresses" = [{
///           "ipv6Address"   = "z"
///           "isPrimaryIpv6" = true
///         }]
///         "ipv6Prefixes" = [{
///           "ipv6Prefix" = "cstrptdpvmberviuvuqfd"
///         }]
///         "macAddress"         = "k"
///         "networkInterfaceId" = "qythf"
///         "ownerId"            = "fvjysbetbyrzccspcenkpvi"
///         "privateDnsName"     = "yvorusnuuigavdcqqdxecrkmjmhrf"
///         "privateIpAddress"   = "m"
///         "privateIpAddresses" = [{
///           "association" = {
///             "carrierIp"       = "gyqfkluecfuwebntnygczb"
///             "customerOwnedIp" = "sw"
///             "ipOwnerId"       = "fbrkixipyqjnao"
///             "publicDnsName"   = "oivnzjavxqmctzvhgmsavgwesabny"
///             "publicIp"        = "tojjymqqjmschjp"
///           }
///           "primary"          = true
///           "privateDnsName"   = "bdezhkhwoerivtfwgqelrsyiphf"
///           "privateIpAddress" = "xcqnyrs"
///         }]
///         "sourceDestCheck" = true
///         "status" = {
///           "value" = "associated"
///         }
///         "subnetId" = "euocsemlw"
///         "vpcId"    = "grahbrhjelkewder"
///       }]
///       outpost_arn = "godjddxeidxe"
///       placement = {
///         affinity                = "xzseileq"
///         availability_zone       = "vsfvyosolmnchbavxfvtizqptgmeg"
///         group_id                = "davwvkjoij"
///         group_name              = "txqgn"
///         host_id                 = "mvbshbhxclztfwffsu"
///         host_resource_group_arn = "zl"
///         partition_number        = 24
///         spread_domain           = "t"
///         tenancy = {
///           value = "dedicated"
///         }
///       }
///       platform = {
///         value = "Windows"
///       }
///       platform_details = "rcwqyqgcruqjcvzcto"
///       private_dns_name = "ieuhntvllhoojakokyt"
///       private_dns_name_options = {
///         enable_resource_name_dns_aaaa_record = true
///         enable_resource_name_dns_a_record    = true
///         hostname_type = {
///           value = "ip-name"
///         }
///       }
///       private_ip_address = "uosximzwwopktgyzlathmorgqah"
///       product_codes = [{
///         "productCodeId" = "sexxutnmcfhkamhmvjrggoscatni"
///         "productCodeType" = {
///           "value" = "devpay"
///         }
///       }]
///       public_dns_name   = "qkucqmeldgiumuzribitahwft"
///       public_ip_address = "ialohsszgtpuycimtqi"
///       ramdisk_id        = "ggkfkl"
///       root_device_name  = "dbfwarbazrbzcjnh"
///       root_device_type = {
///         value = "ebs"
///       }
///       security_groups = [{
///         "groupId"   = "nwupmxpxrzdroizfewqupyddewi"
///         "groupName" = "gvsaaqihzfcwdmeocclatfqm"
///       }]
///       source_dest_check        = true
///       spot_instance_request_id = "qiylxsuuinwyq"
///       sriov_net_support        = "kiffwvajczdtzwcfeefqespn"
///       state = {
///         code = 18
///         name = {
///           value = "pending"
///         }
///       }
///       state_reason = {
///         code    = "kdnlidwcsckwbplroijtjciufgg"
///         message = "dvgendvpuuzx"
///       }
///       state_transition_reason = "arenmfmnvv"
///       subnet_id               = "mgnibedayjllwaidbjh"
///       tags = [{
///         "key"   = "pbvbjvyuqibbevydlslmfple"
///         "value" = "zztbwjxzwgmnjqhegktznmdrqferd"
///       }]
///       tpm_support                 = "fvxtckturm"
///       usage_operation             = "xrctwrcgpcrhlfjzhdvhiovdlcqafq"
///       usage_operation_update_time = "2024-10-08T03:49:10.619Z"
///       virtualization_type = {
///         value = "hvm"
///       }
///       vpc_id = "g"
///     }
///     aws_region        = "tcaqttnhykcej"
///     aws_source_schema = "tncjfmwlkponefezhigbyno"
///     aws_tags = {
///       "key2934" = "wyx"
///     }
///     public_cloud_connectors_resource_id = "shnvqmmslrarjuzdpyhlnfxxp"
///     public_cloud_resource_name          = "sffqiavopmcwltotrpubudq"
///   }
///   resource_uri = "c"
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
/// import com.pulumi.azurenative.awsconnector.Ec2Instance;
/// import com.pulumi.azurenative.awsconnector.Ec2InstanceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2InstancePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2InstancePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ArchitectureValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.BootModeValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CapacityReservationSpecificationResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CapacityReservationPreferenceEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CapacityReservationTargetResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CpuOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AmdSevSnpSpecificationEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceBootModeValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EnclaveOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.HibernationOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.HypervisorTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IamInstanceProfileArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceLifecycleTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceMaintenanceOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceAutoRecoveryStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceMetadataOptionsResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceMetadataEndpointStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceMetadataProtocolStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.HttpTokensStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceMetadataTagsStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceMetadataOptionsStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MonitoringArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MonitoringStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PlacementArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TenancyEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PlatformValuesEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PrivateDnsNameOptionsResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.HostnameTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DeviceTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceStateArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceStateNameEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.StateReasonArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.VirtualizationTypeEnumValueArgs;
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
///         var ec2Instance = new Ec2Instance("ec2Instance", Ec2InstanceArgs.builder()
///             .properties(Ec2InstancePropertiesArgs.builder()
///                 .arn("noxwkahrsrcnrpz")
///                 .awsAccountId("hhrjjrfopsrebnklxmr")
///                 .awsProperties(AwsEc2InstancePropertiesArgs.builder()
///                     .amiLaunchIndex(27)
///                     .architecture(ArchitectureValuesEnumValueArgs.builder()
///                         .value("arm64")
///                         .build())
///                     .blockDeviceMappings(InstanceBlockDeviceMappingArgs.builder()
///                         .deviceName("tfaglaaaklzilxzmk")
///                         .ebs(EbsInstanceBlockDeviceArgs.builder()
///                             .associatedResource("pgkczdagxihtrkzzaiuzennp")
///                             .attachTime("2024-10-08T03:49:10.616Z")
///                             .deleteOnTermination(true)
///                             .status(AttachmentStatusEnumValueArgs.builder()
///                                 .value("attached")
///                                 .build())
///                             .volumeId("ilihhdgfhpylwqnaglcmj")
///                             .volumeOwnerId("ruylzxnmlundujqdqkqocknldkttka")
///                             .build())
///                         .build())
///                     .bootMode(BootModeValuesEnumValueArgs.builder()
///                         .value("legacy-bios")
///                         .build())
///                     .capacityReservationId("rgxeywdieyjfmp")
///                     .capacityReservationSpecification(CapacityReservationSpecificationResponseArgs.builder()
///                         .capacityReservationPreference(CapacityReservationPreferenceEnumValueArgs.builder()
///                             .value("none")
///                             .build())
///                         .capacityReservationTarget(CapacityReservationTargetResponseArgs.builder()
///                             .capacityReservationId("dvdusvbgjrkkuqrelloyysinnzpjb")
///                             .capacityReservationResourceGroupArn("itnyqqrlujfkasgzbrvljlbh")
///                             .build())
///                         .build())
///                     .clientToken("zgimjubyev")
///                     .cpuOptions(CpuOptionsArgs.builder()
///                         .amdSevSnp(AmdSevSnpSpecificationEnumValueArgs.builder()
///                             .value("disabled")
///                             .build())
///                         .coreCount(27)
///                         .threadsPerCore(11)
///                         .build())
///                     .currentInstanceBootMode(InstanceBootModeValuesEnumValueArgs.builder()
///                         .value("legacy-bios")
///                         .build())
///                     .ebsOptimized(true)
///                     .elasticGpuAssociations(ElasticGpuAssociationArgs.builder()
///                         .elasticGpuAssociationId("jmxqiqiyocefwrivbcumzx")
///                         .elasticGpuAssociationState("mkteimwlzs")
///                         .elasticGpuAssociationTime("sosasrnqg")
///                         .elasticGpuId("dnpmhib")
///                         .build())
///                     .elasticInferenceAcceleratorAssociations(ElasticInferenceAcceleratorAssociationArgs.builder()
///                         .elasticInferenceAcceleratorArn("pnbrdzuzjxuwrtpdc")
///                         .elasticInferenceAcceleratorAssociationId("uoout")
///                         .elasticInferenceAcceleratorAssociationState("bwbmjkusisjrxxdonwtxkbgbaxk")
///                         .elasticInferenceAcceleratorAssociationTime("2024-10-08T03:49:10.617Z")
///                         .build())
///                     .enaSupport(true)
///                     .enclaveOptions(EnclaveOptionsArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .hibernationOptions(HibernationOptionsArgs.builder()
///                         .configured(true)
///                         .build())
///                     .hypervisor(HypervisorTypeEnumValueArgs.builder()
///                         .value("ovm")
///                         .build())
///                     .iamInstanceProfile(IamInstanceProfileArgs.builder()
///                         .arn("jvju")
///                         .id("kdzthqdiqjcknesajpbplmkynzokr")
///                         .build())
///                     .imageId("oemhjwhbzkbcwocprtn")
///                     .instanceId("czyyyovcqwce")
///                     .instanceLifecycle(InstanceLifecycleTypeEnumValueArgs.builder()
///                         .value("capacity-block")
///                         .build())
///                     .instanceType(InstanceTypeEnumValueArgs.builder()
///                         .value("a1.2xlarge")
///                         .build())
///                     .ipv6Address("kuzwkpvttqtjxowkisga")
///                     .kernelId("qqehgoolsvuh")
///                     .keyName("bxxdzmyclfgrwqwnjajhs")
///                     .launchTime("2024-10-08T03:49:10.618Z")
///                     .licenses(LicenseConfigurationArgs.builder()
///                         .licenseConfigurationArn("q")
///                         .build())
///                     .maintenanceOptions(InstanceMaintenanceOptionsArgs.builder()
///                         .autoRecovery(InstanceAutoRecoveryStateEnumValueArgs.builder()
///                             .value("default")
///                             .build())
///                         .build())
///                     .metadataOptions(InstanceMetadataOptionsResponseArgs.builder()
///                         .httpEndpoint(InstanceMetadataEndpointStateEnumValueArgs.builder()
///                             .value("disabled")
///                             .build())
///                         .httpProtocolIpv6(InstanceMetadataProtocolStateEnumValueArgs.builder()
///                             .value("disabled")
///                             .build())
///                         .httpPutResponseHopLimit(3)
///                         .httpTokens(HttpTokensStateEnumValueArgs.builder()
///                             .value("optional")
///                             .build())
///                         .instanceMetadataTags(InstanceMetadataTagsStateEnumValueArgs.builder()
///                             .value("disabled")
///                             .build())
///                         .state(InstanceMetadataOptionsStateEnumValueArgs.builder()
///                             .value("applied")
///                             .build())
///                         .build())
///                     .monitoring(MonitoringArgs.builder()
///                         .state(MonitoringStateEnumValueArgs.builder()
///                             .value("disabled")
///                             .build())
///                         .build())
///                     .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                         .association(InstanceNetworkInterfaceAssociationArgs.builder()
///                             .carrierIp("gyqfkluecfuwebntnygczb")
///                             .customerOwnedIp("sw")
///                             .ipOwnerId("fbrkixipyqjnao")
///                             .publicDnsName("oivnzjavxqmctzvhgmsavgwesabny")
///                             .publicIp("tojjymqqjmschjp")
///                             .build())
///                         .attachment(InstanceNetworkInterfaceAttachmentArgs.builder()
///                             .attachTime("2024-10-08T03:49:10.618Z")
///                             .attachmentId("lsqnlzd")
///                             .deleteOnTermination(true)
///                             .deviceIndex(11)
///                             .enaSrdSpecification(InstanceAttachmentEnaSrdSpecificationArgs.builder()
///                                 .enaSrdEnabled(true)
///                                 .enaSrdUdpSpecification(InstanceAttachmentEnaSrdUdpSpecificationArgs.builder()
///                                     .enaSrdUdpEnabled(true)
///                                     .build())
///                                 .build())
///                             .networkCardIndex(9)
///                             .status(AttachmentStatusEnumValueArgs.builder()
///                                 .value("attached")
///                                 .build())
///                             .build())
///                         .connectionTrackingConfiguration(ConnectionTrackingSpecificationResponseArgs.builder()
///                             .tcpEstablishedTimeout(23)
///                             .udpStreamTimeout(24)
///                             .udpTimeout(30)
///                             .build())
///                         .description("wcdguczvqhelvbuhnx")
///                         .groups(GroupIdentifierArgs.builder()
///                             .groupId("nwupmxpxrzdroizfewqupyddewi")
///                             .groupName("gvsaaqihzfcwdmeocclatfqm")
///                             .build())
///                         .interfaceType("mphomintds")
///                         .ipv4Prefixes(InstanceIpv4PrefixArgs.builder()
///                             .ipv4Prefix("ortyghjrffqjz")
///                             .build())
///                         .ipv6Addresses(InstanceIpv6AddressArgs.builder()
///                             .ipv6Address("z")
///                             .isPrimaryIpv6(true)
///                             .build())
///                         .ipv6Prefixes(InstanceIpv6PrefixArgs.builder()
///                             .ipv6Prefix("cstrptdpvmberviuvuqfd")
///                             .build())
///                         .macAddress("k")
///                         .networkInterfaceId("qythf")
///                         .ownerId("fvjysbetbyrzccspcenkpvi")
///                         .privateDnsName("yvorusnuuigavdcqqdxecrkmjmhrf")
///                         .privateIpAddress("m")
///                         .privateIpAddresses(InstancePrivateIpAddressArgs.builder()
///                             .association(InstanceNetworkInterfaceAssociationArgs.builder()
///                                 .carrierIp("gyqfkluecfuwebntnygczb")
///                                 .customerOwnedIp("sw")
///                                 .ipOwnerId("fbrkixipyqjnao")
///                                 .publicDnsName("oivnzjavxqmctzvhgmsavgwesabny")
///                                 .publicIp("tojjymqqjmschjp")
///                                 .build())
///                             .primary(true)
///                             .privateDnsName("bdezhkhwoerivtfwgqelrsyiphf")
///                             .privateIpAddress("xcqnyrs")
///                             .build())
///                         .sourceDestCheck(true)
///                         .status(NetworkInterfaceStatusEnumValueArgs.builder()
///                             .value("associated")
///                             .build())
///                         .subnetId("euocsemlw")
///                         .vpcId("grahbrhjelkewder")
///                         .build())
///                     .outpostArn("godjddxeidxe")
///                     .placement(PlacementArgs.builder()
///                         .affinity("xzseileq")
///                         .availabilityZone("vsfvyosolmnchbavxfvtizqptgmeg")
///                         .groupId("davwvkjoij")
///                         .groupName("txqgn")
///                         .hostId("mvbshbhxclztfwffsu")
///                         .hostResourceGroupArn("zl")
///                         .partitionNumber(24)
///                         .spreadDomain("t")
///                         .tenancy(TenancyEnumValueArgs.builder()
///                             .value("dedicated")
///                             .build())
///                         .build())
///                     .platform(PlatformValuesEnumValueArgs.builder()
///                         .value("Windows")
///                         .build())
///                     .platformDetails("rcwqyqgcruqjcvzcto")
///                     .privateDnsName("ieuhntvllhoojakokyt")
///                     .privateDnsNameOptions(PrivateDnsNameOptionsResponseArgs.builder()
///                         .enableResourceNameDnsAAAARecord(true)
///                         .enableResourceNameDnsARecord(true)
///                         .hostnameType(HostnameTypeEnumValueArgs.builder()
///                             .value("ip-name")
///                             .build())
///                         .build())
///                     .privateIpAddress("uosximzwwopktgyzlathmorgqah")
///                     .productCodes(ProductCodeArgs.builder()
///                         .productCodeId("sexxutnmcfhkamhmvjrggoscatni")
///                         .productCodeType(ProductCodeValuesEnumValueArgs.builder()
///                             .value("devpay")
///                             .build())
///                         .build())
///                     .publicDnsName("qkucqmeldgiumuzribitahwft")
///                     .publicIpAddress("ialohsszgtpuycimtqi")
///                     .ramdiskId("ggkfkl")
///                     .rootDeviceName("dbfwarbazrbzcjnh")
///                     .rootDeviceType(DeviceTypeEnumValueArgs.builder()
///                         .value("ebs")
///                         .build())
///                     .securityGroups(GroupIdentifierArgs.builder()
///                         .groupId("nwupmxpxrzdroizfewqupyddewi")
///                         .groupName("gvsaaqihzfcwdmeocclatfqm")
///                         .build())
///                     .sourceDestCheck(true)
///                     .spotInstanceRequestId("qiylxsuuinwyq")
///                     .sriovNetSupport("kiffwvajczdtzwcfeefqespn")
///                     .state(InstanceStateArgs.builder()
///                         .code(18)
///                         .name(InstanceStateNameEnumValueArgs.builder()
///                             .value("pending")
///                             .build())
///                         .build())
///                     .stateReason(StateReasonArgs.builder()
///                         .code("kdnlidwcsckwbplroijtjciufgg")
///                         .message("dvgendvpuuzx")
///                         .build())
///                     .stateTransitionReason("arenmfmnvv")
///                     .subnetId("mgnibedayjllwaidbjh")
///                     .tags(TagArgs.builder()
///                         .key("pbvbjvyuqibbevydlslmfple")
///                         .value("zztbwjxzwgmnjqhegktznmdrqferd")
///                         .build())
///                     .tpmSupport("fvxtckturm")
///                     .usageOperation("xrctwrcgpcrhlfjzhdvhiovdlcqafq")
///                     .usageOperationUpdateTime("2024-10-08T03:49:10.619Z")
///                     .virtualizationType(VirtualizationTypeEnumValueArgs.builder()
///                         .value("hvm")
///                         .build())
///                     .vpcId("g")
///                     .build())
///                 .awsRegion("tcaqttnhykcej")
///                 .awsSourceSchema("tncjfmwlkponefezhigbyno")
///                 .awsTags(Map.of("key2934", "wyx"))
///                 .publicCloudConnectorsResourceId("shnvqmmslrarjuzdpyhlnfxxp")
///                 .publicCloudResourceName("sffqiavopmcwltotrpubudq")
///                 .build())
///             .resourceUri("c")
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
/// const ec2Instance = new azure_native.awsconnector.Ec2Instance("ec2Instance", {
///     properties: {
///         arn: "noxwkahrsrcnrpz",
///         awsAccountId: "hhrjjrfopsrebnklxmr",
///         awsProperties: {
///             amiLaunchIndex: 27,
///             architecture: {
///                 value: azure_native.awsconnector.ArchitectureValues.Arm64,
///             },
///             blockDeviceMappings: [{
///                 deviceName: "tfaglaaaklzilxzmk",
///                 ebs: {
///                     associatedResource: "pgkczdagxihtrkzzaiuzennp",
///                     attachTime: "2024-10-08T03:49:10.616Z",
///                     deleteOnTermination: true,
///                     status: {
///                         value: azure_native.awsconnector.AttachmentStatus.Attached,
///                     },
///                     volumeId: "ilihhdgfhpylwqnaglcmj",
///                     volumeOwnerId: "ruylzxnmlundujqdqkqocknldkttka",
///                 },
///             }],
///             bootMode: {
///                 value: azure_native.awsconnector.BootModeValues.LegacyBios,
///             },
///             capacityReservationId: "rgxeywdieyjfmp",
///             capacityReservationSpecification: {
///                 capacityReservationPreference: {
///                     value: azure_native.awsconnector.CapacityReservationPreference.None,
///                 },
///                 capacityReservationTarget: {
///                     capacityReservationId: "dvdusvbgjrkkuqrelloyysinnzpjb",
///                     capacityReservationResourceGroupArn: "itnyqqrlujfkasgzbrvljlbh",
///                 },
///             },
///             clientToken: "zgimjubyev",
///             cpuOptions: {
///                 amdSevSnp: {
///                     value: azure_native.awsconnector.AmdSevSnpSpecification.Disabled,
///                 },
///                 coreCount: 27,
///                 threadsPerCore: 11,
///             },
///             currentInstanceBootMode: {
///                 value: azure_native.awsconnector.InstanceBootModeValues.LegacyBios,
///             },
///             ebsOptimized: true,
///             elasticGpuAssociations: [{
///                 elasticGpuAssociationId: "jmxqiqiyocefwrivbcumzx",
///                 elasticGpuAssociationState: "mkteimwlzs",
///                 elasticGpuAssociationTime: "sosasrnqg",
///                 elasticGpuId: "dnpmhib",
///             }],
///             elasticInferenceAcceleratorAssociations: [{
///                 elasticInferenceAcceleratorArn: "pnbrdzuzjxuwrtpdc",
///                 elasticInferenceAcceleratorAssociationId: "uoout",
///                 elasticInferenceAcceleratorAssociationState: "bwbmjkusisjrxxdonwtxkbgbaxk",
///                 elasticInferenceAcceleratorAssociationTime: "2024-10-08T03:49:10.617Z",
///             }],
///             enaSupport: true,
///             enclaveOptions: {
///                 enabled: true,
///             },
///             hibernationOptions: {
///                 configured: true,
///             },
///             hypervisor: {
///                 value: azure_native.awsconnector.HypervisorType.Ovm,
///             },
///             iamInstanceProfile: {
///                 arn: "jvju",
///                 id: "kdzthqdiqjcknesajpbplmkynzokr",
///             },
///             imageId: "oemhjwhbzkbcwocprtn",
///             instanceId: "czyyyovcqwce",
///             instanceLifecycle: {
///                 value: azure_native.awsconnector.InstanceLifecycleType.CapacityBlock,
///             },
///             instanceType: {
///                 value: "a1.2xlarge",
///             },
///             ipv6Address: "kuzwkpvttqtjxowkisga",
///             kernelId: "qqehgoolsvuh",
///             keyName: "bxxdzmyclfgrwqwnjajhs",
///             launchTime: "2024-10-08T03:49:10.618Z",
///             licenses: [{
///                 licenseConfigurationArn: "q",
///             }],
///             maintenanceOptions: {
///                 autoRecovery: {
///                     value: azure_native.awsconnector.InstanceAutoRecoveryState.Default,
///                 },
///             },
///             metadataOptions: {
///                 httpEndpoint: {
///                     value: azure_native.awsconnector.InstanceMetadataEndpointState.Disabled,
///                 },
///                 httpProtocolIpv6: {
///                     value: azure_native.awsconnector.InstanceMetadataProtocolState.Disabled,
///                 },
///                 httpPutResponseHopLimit: 3,
///                 httpTokens: {
///                     value: azure_native.awsconnector.HttpTokensState.Optional,
///                 },
///                 instanceMetadataTags: {
///                     value: azure_native.awsconnector.InstanceMetadataTagsState.Disabled,
///                 },
///                 state: {
///                     value: azure_native.awsconnector.InstanceMetadataOptionsState.Applied,
///                 },
///             },
///             monitoring: {
///                 state: {
///                     value: azure_native.awsconnector.MonitoringState.Disabled,
///                 },
///             },
///             networkInterfaces: [{
///                 association: {
///                     carrierIp: "gyqfkluecfuwebntnygczb",
///                     customerOwnedIp: "sw",
///                     ipOwnerId: "fbrkixipyqjnao",
///                     publicDnsName: "oivnzjavxqmctzvhgmsavgwesabny",
///                     publicIp: "tojjymqqjmschjp",
///                 },
///                 attachment: {
///                     attachTime: "2024-10-08T03:49:10.618Z",
///                     attachmentId: "lsqnlzd",
///                     deleteOnTermination: true,
///                     deviceIndex: 11,
///                     enaSrdSpecification: {
///                         enaSrdEnabled: true,
///                         enaSrdUdpSpecification: {
///                             enaSrdUdpEnabled: true,
///                         },
///                     },
///                     networkCardIndex: 9,
///                     status: {
///                         value: azure_native.awsconnector.AttachmentStatus.Attached,
///                     },
///                 },
///                 connectionTrackingConfiguration: {
///                     tcpEstablishedTimeout: 23,
///                     udpStreamTimeout: 24,
///                     udpTimeout: 30,
///                 },
///                 description: "wcdguczvqhelvbuhnx",
///                 groups: [{
///                     groupId: "nwupmxpxrzdroizfewqupyddewi",
///                     groupName: "gvsaaqihzfcwdmeocclatfqm",
///                 }],
///                 interfaceType: "mphomintds",
///                 ipv4Prefixes: [{
///                     ipv4Prefix: "ortyghjrffqjz",
///                 }],
///                 ipv6Addresses: [{
///                     ipv6Address: "z",
///                     isPrimaryIpv6: true,
///                 }],
///                 ipv6Prefixes: [{
///                     ipv6Prefix: "cstrptdpvmberviuvuqfd",
///                 }],
///                 macAddress: "k",
///                 networkInterfaceId: "qythf",
///                 ownerId: "fvjysbetbyrzccspcenkpvi",
///                 privateDnsName: "yvorusnuuigavdcqqdxecrkmjmhrf",
///                 privateIpAddress: "m",
///                 privateIpAddresses: [{
///                     association: {
///                         carrierIp: "gyqfkluecfuwebntnygczb",
///                         customerOwnedIp: "sw",
///                         ipOwnerId: "fbrkixipyqjnao",
///                         publicDnsName: "oivnzjavxqmctzvhgmsavgwesabny",
///                         publicIp: "tojjymqqjmschjp",
///                     },
///                     primary: true,
///                     privateDnsName: "bdezhkhwoerivtfwgqelrsyiphf",
///                     privateIpAddress: "xcqnyrs",
///                 }],
///                 sourceDestCheck: true,
///                 status: {
///                     value: azure_native.awsconnector.NetworkInterfaceStatus.Associated,
///                 },
///                 subnetId: "euocsemlw",
///                 vpcId: "grahbrhjelkewder",
///             }],
///             outpostArn: "godjddxeidxe",
///             placement: {
///                 affinity: "xzseileq",
///                 availabilityZone: "vsfvyosolmnchbavxfvtizqptgmeg",
///                 groupId: "davwvkjoij",
///                 groupName: "txqgn",
///                 hostId: "mvbshbhxclztfwffsu",
///                 hostResourceGroupArn: "zl",
///                 partitionNumber: 24,
///                 spreadDomain: "t",
///                 tenancy: {
///                     value: azure_native.awsconnector.Tenancy.Dedicated,
///                 },
///             },
///             platform: {
///                 value: azure_native.awsconnector.PlatformValues.Windows,
///             },
///             platformDetails: "rcwqyqgcruqjcvzcto",
///             privateDnsName: "ieuhntvllhoojakokyt",
///             privateDnsNameOptions: {
///                 enableResourceNameDnsAAAARecord: true,
///                 enableResourceNameDnsARecord: true,
///                 hostnameType: {
///                     value: azure_native.awsconnector.HostnameType.IpName,
///                 },
///             },
///             privateIpAddress: "uosximzwwopktgyzlathmorgqah",
///             productCodes: [{
///                 productCodeId: "sexxutnmcfhkamhmvjrggoscatni",
///                 productCodeType: {
///                     value: azure_native.awsconnector.ProductCodeValues.Devpay,
///                 },
///             }],
///             publicDnsName: "qkucqmeldgiumuzribitahwft",
///             publicIpAddress: "ialohsszgtpuycimtqi",
///             ramdiskId: "ggkfkl",
///             rootDeviceName: "dbfwarbazrbzcjnh",
///             rootDeviceType: {
///                 value: azure_native.awsconnector.DeviceType.Ebs,
///             },
///             securityGroups: [{
///                 groupId: "nwupmxpxrzdroizfewqupyddewi",
///                 groupName: "gvsaaqihzfcwdmeocclatfqm",
///             }],
///             sourceDestCheck: true,
///             spotInstanceRequestId: "qiylxsuuinwyq",
///             sriovNetSupport: "kiffwvajczdtzwcfeefqespn",
///             state: {
///                 code: 18,
///                 name: {
///                     value: azure_native.awsconnector.InstanceStateName.Pending,
///                 },
///             },
///             stateReason: {
///                 code: "kdnlidwcsckwbplroijtjciufgg",
///                 message: "dvgendvpuuzx",
///             },
///             stateTransitionReason: "arenmfmnvv",
///             subnetId: "mgnibedayjllwaidbjh",
///             tags: [{
///                 key: "pbvbjvyuqibbevydlslmfple",
///                 value: "zztbwjxzwgmnjqhegktznmdrqferd",
///             }],
///             tpmSupport: "fvxtckturm",
///             usageOperation: "xrctwrcgpcrhlfjzhdvhiovdlcqafq",
///             usageOperationUpdateTime: "2024-10-08T03:49:10.619Z",
///             virtualizationType: {
///                 value: azure_native.awsconnector.VirtualizationType.Hvm,
///             },
///             vpcId: "g",
///         },
///         awsRegion: "tcaqttnhykcej",
///         awsSourceSchema: "tncjfmwlkponefezhigbyno",
///         awsTags: {
///             key2934: "wyx",
///         },
///         publicCloudConnectorsResourceId: "shnvqmmslrarjuzdpyhlnfxxp",
///         publicCloudResourceName: "sffqiavopmcwltotrpubudq",
///     },
///     resourceUri: "c",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_instance = azure_native.awsconnector.Ec2Instance("ec2Instance",
///     properties={
///         "arn": "noxwkahrsrcnrpz",
///         "aws_account_id": "hhrjjrfopsrebnklxmr",
///         "aws_properties": {
///             "ami_launch_index": 27,
///             "architecture": {
///                 "value": azure_native.awsconnector.ArchitectureValues.ARM64,
///             },
///             "block_device_mappings": [{
///                 "device_name": "tfaglaaaklzilxzmk",
///                 "ebs": {
///                     "associated_resource": "pgkczdagxihtrkzzaiuzennp",
///                     "attach_time": "2024-10-08T03:49:10.616Z",
///                     "delete_on_termination": True,
///                     "status": {
///                         "value": azure_native.awsconnector.AttachmentStatus.ATTACHED,
///                     },
///                     "volume_id": "ilihhdgfhpylwqnaglcmj",
///                     "volume_owner_id": "ruylzxnmlundujqdqkqocknldkttka",
///                 },
///             }],
///             "boot_mode": {
///                 "value": azure_native.awsconnector.BootModeValues.LEGACY_BIOS,
///             },
///             "capacity_reservation_id": "rgxeywdieyjfmp",
///             "capacity_reservation_specification": {
///                 "capacity_reservation_preference": {
///                     "value": azure_native.awsconnector.CapacityReservationPreference.NONE,
///                 },
///                 "capacity_reservation_target": {
///                     "capacity_reservation_id": "dvdusvbgjrkkuqrelloyysinnzpjb",
///                     "capacity_reservation_resource_group_arn": "itnyqqrlujfkasgzbrvljlbh",
///                 },
///             },
///             "client_token": "zgimjubyev",
///             "cpu_options": {
///                 "amd_sev_snp": {
///                     "value": azure_native.awsconnector.AmdSevSnpSpecification.DISABLED,
///                 },
///                 "core_count": 27,
///                 "threads_per_core": 11,
///             },
///             "current_instance_boot_mode": {
///                 "value": azure_native.awsconnector.InstanceBootModeValues.LEGACY_BIOS,
///             },
///             "ebs_optimized": True,
///             "elastic_gpu_associations": [{
///                 "elastic_gpu_association_id": "jmxqiqiyocefwrivbcumzx",
///                 "elastic_gpu_association_state": "mkteimwlzs",
///                 "elastic_gpu_association_time": "sosasrnqg",
///                 "elastic_gpu_id": "dnpmhib",
///             }],
///             "elastic_inference_accelerator_associations": [{
///                 "elastic_inference_accelerator_arn": "pnbrdzuzjxuwrtpdc",
///                 "elastic_inference_accelerator_association_id": "uoout",
///                 "elastic_inference_accelerator_association_state": "bwbmjkusisjrxxdonwtxkbgbaxk",
///                 "elastic_inference_accelerator_association_time": "2024-10-08T03:49:10.617Z",
///             }],
///             "ena_support": True,
///             "enclave_options": {
///                 "enabled": True,
///             },
///             "hibernation_options": {
///                 "configured": True,
///             },
///             "hypervisor": {
///                 "value": azure_native.awsconnector.HypervisorType.OVM,
///             },
///             "iam_instance_profile": {
///                 "arn": "jvju",
///                 "id": "kdzthqdiqjcknesajpbplmkynzokr",
///             },
///             "image_id": "oemhjwhbzkbcwocprtn",
///             "instance_id": "czyyyovcqwce",
///             "instance_lifecycle": {
///                 "value": azure_native.awsconnector.InstanceLifecycleType.CAPACITY_BLOCK,
///             },
///             "instance_type": {
///                 "value": "a1.2xlarge",
///             },
///             "ipv6_address": "kuzwkpvttqtjxowkisga",
///             "kernel_id": "qqehgoolsvuh",
///             "key_name": "bxxdzmyclfgrwqwnjajhs",
///             "launch_time": "2024-10-08T03:49:10.618Z",
///             "licenses": [{
///                 "license_configuration_arn": "q",
///             }],
///             "maintenance_options": {
///                 "auto_recovery": {
///                     "value": azure_native.awsconnector.InstanceAutoRecoveryState.DEFAULT,
///                 },
///             },
///             "metadata_options": {
///                 "http_endpoint": {
///                     "value": azure_native.awsconnector.InstanceMetadataEndpointState.DISABLED,
///                 },
///                 "http_protocol_ipv6": {
///                     "value": azure_native.awsconnector.InstanceMetadataProtocolState.DISABLED,
///                 },
///                 "http_put_response_hop_limit": 3,
///                 "http_tokens": {
///                     "value": azure_native.awsconnector.HttpTokensState.OPTIONAL,
///                 },
///                 "instance_metadata_tags": {
///                     "value": azure_native.awsconnector.InstanceMetadataTagsState.DISABLED,
///                 },
///                 "state": {
///                     "value": azure_native.awsconnector.InstanceMetadataOptionsState.APPLIED,
///                 },
///             },
///             "monitoring": {
///                 "state": {
///                     "value": azure_native.awsconnector.MonitoringState.DISABLED,
///                 },
///             },
///             "network_interfaces": [{
///                 "association": {
///                     "carrier_ip": "gyqfkluecfuwebntnygczb",
///                     "customer_owned_ip": "sw",
///                     "ip_owner_id": "fbrkixipyqjnao",
///                     "public_dns_name": "oivnzjavxqmctzvhgmsavgwesabny",
///                     "public_ip": "tojjymqqjmschjp",
///                 },
///                 "attachment": {
///                     "attach_time": "2024-10-08T03:49:10.618Z",
///                     "attachment_id": "lsqnlzd",
///                     "delete_on_termination": True,
///                     "device_index": 11,
///                     "ena_srd_specification": {
///                         "ena_srd_enabled": True,
///                         "ena_srd_udp_specification": {
///                             "ena_srd_udp_enabled": True,
///                         },
///                     },
///                     "network_card_index": 9,
///                     "status": {
///                         "value": azure_native.awsconnector.AttachmentStatus.ATTACHED,
///                     },
///                 },
///                 "connection_tracking_configuration": {
///                     "tcp_established_timeout": 23,
///                     "udp_stream_timeout": 24,
///                     "udp_timeout": 30,
///                 },
///                 "description": "wcdguczvqhelvbuhnx",
///                 "groups": [{
///                     "group_id": "nwupmxpxrzdroizfewqupyddewi",
///                     "group_name": "gvsaaqihzfcwdmeocclatfqm",
///                 }],
///                 "interface_type": "mphomintds",
///                 "ipv4_prefixes": [{
///                     "ipv4_prefix": "ortyghjrffqjz",
///                 }],
///                 "ipv6_addresses": [{
///                     "ipv6_address": "z",
///                     "is_primary_ipv6": True,
///                 }],
///                 "ipv6_prefixes": [{
///                     "ipv6_prefix": "cstrptdpvmberviuvuqfd",
///                 }],
///                 "mac_address": "k",
///                 "network_interface_id": "qythf",
///                 "owner_id": "fvjysbetbyrzccspcenkpvi",
///                 "private_dns_name": "yvorusnuuigavdcqqdxecrkmjmhrf",
///                 "private_ip_address": "m",
///                 "private_ip_addresses": [{
///                     "association": {
///                         "carrier_ip": "gyqfkluecfuwebntnygczb",
///                         "customer_owned_ip": "sw",
///                         "ip_owner_id": "fbrkixipyqjnao",
///                         "public_dns_name": "oivnzjavxqmctzvhgmsavgwesabny",
///                         "public_ip": "tojjymqqjmschjp",
///                     },
///                     "primary": True,
///                     "private_dns_name": "bdezhkhwoerivtfwgqelrsyiphf",
///                     "private_ip_address": "xcqnyrs",
///                 }],
///                 "source_dest_check": True,
///                 "status": {
///                     "value": azure_native.awsconnector.NetworkInterfaceStatus.ASSOCIATED,
///                 },
///                 "subnet_id": "euocsemlw",
///                 "vpc_id": "grahbrhjelkewder",
///             }],
///             "outpost_arn": "godjddxeidxe",
///             "placement": {
///                 "affinity": "xzseileq",
///                 "availability_zone": "vsfvyosolmnchbavxfvtizqptgmeg",
///                 "group_id": "davwvkjoij",
///                 "group_name": "txqgn",
///                 "host_id": "mvbshbhxclztfwffsu",
///                 "host_resource_group_arn": "zl",
///                 "partition_number": 24,
///                 "spread_domain": "t",
///                 "tenancy": {
///                     "value": azure_native.awsconnector.Tenancy.DEDICATED,
///                 },
///             },
///             "platform": {
///                 "value": azure_native.awsconnector.PlatformValues.WINDOWS,
///             },
///             "platform_details": "rcwqyqgcruqjcvzcto",
///             "private_dns_name": "ieuhntvllhoojakokyt",
///             "private_dns_name_options": {
///                 "enable_resource_name_dns_aaaa_record": True,
///                 "enable_resource_name_dns_a_record": True,
///                 "hostname_type": {
///                     "value": azure_native.awsconnector.HostnameType.IP_NAME,
///                 },
///             },
///             "private_ip_address": "uosximzwwopktgyzlathmorgqah",
///             "product_codes": [{
///                 "product_code_id": "sexxutnmcfhkamhmvjrggoscatni",
///                 "product_code_type": {
///                     "value": azure_native.awsconnector.ProductCodeValues.DEVPAY,
///                 },
///             }],
///             "public_dns_name": "qkucqmeldgiumuzribitahwft",
///             "public_ip_address": "ialohsszgtpuycimtqi",
///             "ramdisk_id": "ggkfkl",
///             "root_device_name": "dbfwarbazrbzcjnh",
///             "root_device_type": {
///                 "value": azure_native.awsconnector.DeviceType.EBS,
///             },
///             "security_groups": [{
///                 "group_id": "nwupmxpxrzdroizfewqupyddewi",
///                 "group_name": "gvsaaqihzfcwdmeocclatfqm",
///             }],
///             "source_dest_check": True,
///             "spot_instance_request_id": "qiylxsuuinwyq",
///             "sriov_net_support": "kiffwvajczdtzwcfeefqespn",
///             "state": {
///                 "code": 18,
///                 "name": {
///                     "value": azure_native.awsconnector.InstanceStateName.PENDING,
///                 },
///             },
///             "state_reason": {
///                 "code": "kdnlidwcsckwbplroijtjciufgg",
///                 "message": "dvgendvpuuzx",
///             },
///             "state_transition_reason": "arenmfmnvv",
///             "subnet_id": "mgnibedayjllwaidbjh",
///             "tags": [{
///                 "key": "pbvbjvyuqibbevydlslmfple",
///                 "value": "zztbwjxzwgmnjqhegktznmdrqferd",
///             }],
///             "tpm_support": "fvxtckturm",
///             "usage_operation": "xrctwrcgpcrhlfjzhdvhiovdlcqafq",
///             "usage_operation_update_time": "2024-10-08T03:49:10.619Z",
///             "virtualization_type": {
///                 "value": azure_native.awsconnector.VirtualizationType.HVM,
///             },
///             "vpc_id": "g",
///         },
///         "aws_region": "tcaqttnhykcej",
///         "aws_source_schema": "tncjfmwlkponefezhigbyno",
///         "aws_tags": {
///             "key2934": "wyx",
///         },
///         "public_cloud_connectors_resource_id": "shnvqmmslrarjuzdpyhlnfxxp",
///         "public_cloud_resource_name": "sffqiavopmcwltotrpubudq",
///     },
///     resource_uri="c")
///
/// ```
///
/// ```yaml
/// resources:
///   ec2Instance:
///     type: azure-native:awsconnector:Ec2Instance
///     properties:
///       properties:
///         arn: noxwkahrsrcnrpz
///         awsAccountId: hhrjjrfopsrebnklxmr
///         awsProperties:
///           amiLaunchIndex: 27
///           architecture:
///             value: arm64
///           blockDeviceMappings:
///             - deviceName: tfaglaaaklzilxzmk
///               ebs:
///                 associatedResource: pgkczdagxihtrkzzaiuzennp
///                 attachTime: 2024-10-08T03:49:10.616Z
///                 deleteOnTermination: true
///                 status:
///                   value: attached
///                 volumeId: ilihhdgfhpylwqnaglcmj
///                 volumeOwnerId: ruylzxnmlundujqdqkqocknldkttka
///           bootMode:
///             value: legacy-bios
///           capacityReservationId: rgxeywdieyjfmp
///           capacityReservationSpecification:
///             capacityReservationPreference:
///               value: none
///             capacityReservationTarget:
///               capacityReservationId: dvdusvbgjrkkuqrelloyysinnzpjb
///               capacityReservationResourceGroupArn: itnyqqrlujfkasgzbrvljlbh
///           clientToken: zgimjubyev
///           cpuOptions:
///             amdSevSnp:
///               value: disabled
///             coreCount: 27
///             threadsPerCore: 11
///           currentInstanceBootMode:
///             value: legacy-bios
///           ebsOptimized: true
///           elasticGpuAssociations:
///             - elasticGpuAssociationId: jmxqiqiyocefwrivbcumzx
///               elasticGpuAssociationState: mkteimwlzs
///               elasticGpuAssociationTime: sosasrnqg
///               elasticGpuId: dnpmhib
///           elasticInferenceAcceleratorAssociations:
///             - elasticInferenceAcceleratorArn: pnbrdzuzjxuwrtpdc
///               elasticInferenceAcceleratorAssociationId: uoout
///               elasticInferenceAcceleratorAssociationState: bwbmjkusisjrxxdonwtxkbgbaxk
///               elasticInferenceAcceleratorAssociationTime: 2024-10-08T03:49:10.617Z
///           enaSupport: true
///           enclaveOptions:
///             enabled: true
///           hibernationOptions:
///             configured: true
///           hypervisor:
///             value: ovm
///           iamInstanceProfile:
///             arn: jvju
///             id: kdzthqdiqjcknesajpbplmkynzokr
///           imageId: oemhjwhbzkbcwocprtn
///           instanceId: czyyyovcqwce
///           instanceLifecycle:
///             value: capacity-block
///           instanceType:
///             value: a1.2xlarge
///           ipv6Address: kuzwkpvttqtjxowkisga
///           kernelId: qqehgoolsvuh
///           keyName: bxxdzmyclfgrwqwnjajhs
///           launchTime: 2024-10-08T03:49:10.618Z
///           licenses:
///             - licenseConfigurationArn: q
///           maintenanceOptions:
///             autoRecovery:
///               value: default
///           metadataOptions:
///             httpEndpoint:
///               value: disabled
///             httpProtocolIpv6:
///               value: disabled
///             httpPutResponseHopLimit: 3
///             httpTokens:
///               value: optional
///             instanceMetadataTags:
///               value: disabled
///             state:
///               value: applied
///           monitoring:
///             state:
///               value: disabled
///           networkInterfaces:
///             - association:
///                 carrierIp: gyqfkluecfuwebntnygczb
///                 customerOwnedIp: sw
///                 ipOwnerId: fbrkixipyqjnao
///                 publicDnsName: oivnzjavxqmctzvhgmsavgwesabny
///                 publicIp: tojjymqqjmschjp
///               attachment:
///                 attachTime: 2024-10-08T03:49:10.618Z
///                 attachmentId: lsqnlzd
///                 deleteOnTermination: true
///                 deviceIndex: 11
///                 enaSrdSpecification:
///                   enaSrdEnabled: true
///                   enaSrdUdpSpecification:
///                     enaSrdUdpEnabled: true
///                 networkCardIndex: 9
///                 status:
///                   value: attached
///               connectionTrackingConfiguration:
///                 tcpEstablishedTimeout: 23
///                 udpStreamTimeout: 24
///                 udpTimeout: 30
///               description: wcdguczvqhelvbuhnx
///               groups:
///                 - groupId: nwupmxpxrzdroizfewqupyddewi
///                   groupName: gvsaaqihzfcwdmeocclatfqm
///               interfaceType: mphomintds
///               ipv4Prefixes:
///                 - ipv4Prefix: ortyghjrffqjz
///               ipv6Addresses:
///                 - ipv6Address: z
///                   isPrimaryIpv6: true
///               ipv6Prefixes:
///                 - ipv6Prefix: cstrptdpvmberviuvuqfd
///               macAddress: k
///               networkInterfaceId: qythf
///               ownerId: fvjysbetbyrzccspcenkpvi
///               privateDnsName: yvorusnuuigavdcqqdxecrkmjmhrf
///               privateIpAddress: m
///               privateIpAddresses:
///                 - association:
///                     carrierIp: gyqfkluecfuwebntnygczb
///                     customerOwnedIp: sw
///                     ipOwnerId: fbrkixipyqjnao
///                     publicDnsName: oivnzjavxqmctzvhgmsavgwesabny
///                     publicIp: tojjymqqjmschjp
///                   primary: true
///                   privateDnsName: bdezhkhwoerivtfwgqelrsyiphf
///                   privateIpAddress: xcqnyrs
///               sourceDestCheck: true
///               status:
///                 value: associated
///               subnetId: euocsemlw
///               vpcId: grahbrhjelkewder
///           outpostArn: godjddxeidxe
///           placement:
///             affinity: xzseileq
///             availabilityZone: vsfvyosolmnchbavxfvtizqptgmeg
///             groupId: davwvkjoij
///             groupName: txqgn
///             hostId: mvbshbhxclztfwffsu
///             hostResourceGroupArn: zl
///             partitionNumber: 24
///             spreadDomain: t
///             tenancy:
///               value: dedicated
///           platform:
///             value: Windows
///           platformDetails: rcwqyqgcruqjcvzcto
///           privateDnsName: ieuhntvllhoojakokyt
///           privateDnsNameOptions:
///             enableResourceNameDnsAAAARecord: true
///             enableResourceNameDnsARecord: true
///             hostnameType:
///               value: ip-name
///           privateIpAddress: uosximzwwopktgyzlathmorgqah
///           productCodes:
///             - productCodeId: sexxutnmcfhkamhmvjrggoscatni
///               productCodeType:
///                 value: devpay
///           publicDnsName: qkucqmeldgiumuzribitahwft
///           publicIpAddress: ialohsszgtpuycimtqi
///           ramdiskId: ggkfkl
///           rootDeviceName: dbfwarbazrbzcjnh
///           rootDeviceType:
///             value: ebs
///           securityGroups:
///             - groupId: nwupmxpxrzdroizfewqupyddewi
///               groupName: gvsaaqihzfcwdmeocclatfqm
///           sourceDestCheck: true
///           spotInstanceRequestId: qiylxsuuinwyq
///           sriovNetSupport: kiffwvajczdtzwcfeefqespn
///           state:
///             code: 18
///             name:
///               value: pending
///           stateReason:
///             code: kdnlidwcsckwbplroijtjciufgg
///             message: dvgendvpuuzx
///           stateTransitionReason: arenmfmnvv
///           subnetId: mgnibedayjllwaidbjh
///           tags:
///             - key: pbvbjvyuqibbevydlslmfple
///               value: zztbwjxzwgmnjqhegktznmdrqferd
///           tpmSupport: fvxtckturm
///           usageOperation: xrctwrcgpcrhlfjzhdvhiovdlcqafq
///           usageOperationUpdateTime: 2024-10-08T03:49:10.619Z
///           virtualizationType:
///             value: hvm
///           vpcId: g
///         awsRegion: tcaqttnhykcej
///         awsSourceSchema: tncjfmwlkponefezhigbyno
///         awsTags:
///           key2934: wyx
///         publicCloudConnectorsResourceId: shnvqmmslrarjuzdpyhlnfxxp
///         publicCloudResourceName: sffqiavopmcwltotrpubudq
///       resourceUri: c
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
/// $ pulumi import azure-native:awsconnector:Ec2Instance jjhsvqaguzzovfqofv /{resourceUri}/providers/Microsoft.AwsConnector/ec2Instances/default
/// ```
class Ec2Instance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2InstancePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2Instance]. {@macro pulumi_awsconnector_ec2_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2Instance(
    String name, {
    Ec2InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2InstancePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2InstancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
