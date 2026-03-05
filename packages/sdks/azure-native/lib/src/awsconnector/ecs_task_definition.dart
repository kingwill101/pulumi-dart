import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_task_definition_args.dart';
import 'ecs_task_definition_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EcsTaskDefinitions_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecsTaskDefinition = new AzureNative.AwsConnector.EcsTaskDefinition("ecsTaskDefinition", new()
///     {
///         Location = "hideafehihasfzxdxuqiqubhhzg",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.EcsTaskDefinitionPropertiesArgs
///         {
///             Arn = "mkr",
///             AwsAccountId = "efgvyahxivjf",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEcsTaskDefinitionPropertiesArgs
///             {
///                 ContainerDefinitions = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ContainerDefinitionArgs
///                     {
///                         Command = new[]
///                         {
///                             "jowixdtkttvhtvcluhzsqkcszit",
///                         },
///                         Cpu = 17,
///                         CredentialSpecs = new[]
///                         {
///                             "ooravv",
///                         },
///                         DependsOn = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.ContainerDependencyArgs
///                             {
///                                 Condition = "xpmiwcexgnrimsrqyrdlvyyquiccp",
///                                 ContainerName = "wzcyhuwwutzttwwaopqed",
///                             },
///                         },
///                         DisableNetworking = true,
///                         DnsSearchDomains = new[]
///                         {
///                             "ggzzwoziotxloooklwdsveul",
///                         },
///                         DnsServers = new[]
///                         {
///                             "ngggprelehukiysguto",
///                         },
///                         DockerSecurityOptions = new[]
///                         {
///                             "famtfjusztdnyrdzupruqpxufhxp",
///                         },
///                         EntryPoint = new[]
///                         {
///                             "oaiompurpnjswlqkmvgraiaj",
///                         },
///                         Environment = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.KeyValuePairArgs
///                             {
///                                 Name = "edrmixvb",
///                                 Value = "vdms",
///                             },
///                         },
///                         EnvironmentFiles = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.EnvironmentFileArgs
///                             {
///                                 Type = "psgsoavpms",
///                                 Value = "ydkrwlbkbzqdm",
///                             },
///                         },
///                         Essential = true,
///                         ExtraHosts = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.HostEntryArgs
///                             {
///                                 Hostname = "unpwutrc",
///                                 IpAddress = "mcsjkhhqbwqesxwcpnnasbzamixath",
///                             },
///                         },
///                         FirelensConfiguration = new AzureNative.AwsConnector.Inputs.FirelensConfigurationArgs
///                         {
///                             Type = "uuwlwegjjeoorvbgtyzoaeeucp",
///                         },
///                         HealthCheck = new AzureNative.AwsConnector.Inputs.HealthCheckArgs
///                         {
///                             Command = new[]
///                             {
///                                 "ppgfrdhjiytbzqtwkumhmnpsk",
///                             },
///                             Interval = 1,
///                             Retries = 11,
///                             StartPeriod = 21,
///                             Timeout = 22,
///                         },
///                         Hostname = "qjkxoayeojuesqmrhe",
///                         Image = "lmgx",
///                         Interactive = true,
///                         Links = new[]
///                         {
///                             "awgsbfcuoynoomjr",
///                         },
///                         LinuxParameters = new AzureNative.AwsConnector.Inputs.LinuxParametersArgs
///                         {
///                             Capabilities = new AzureNative.AwsConnector.Inputs.KernelCapabilitiesArgs
///                             {
///                                 Add = new[]
///                                 {
///                                     "xnobooaglhooafh",
///                                 },
///                                 Drop = new[]
///                                 {
///                                     "uscfx",
///                                 },
///                             },
///                             Devices = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.DeviceArgs
///                                 {
///                                     ContainerPath = "fveecgcpepimcqufoswgvjibavi",
///                                     HostPath = "hvwxdqfcbt",
///                                     Permissions = new[]
///                                     {
///                                         "yqev",
///                                     },
///                                 },
///                             },
///                             InitProcessEnabled = true,
///                             MaxSwap = 24,
///                             SharedMemorySize = 1,
///                             Swappiness = 27,
///                             Tmpfs = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.TmpfsArgs
///                                 {
///                                     ContainerPath = "kxvhyrbeu",
///                                     MountOptions = new[]
///                                     {
///                                         "lylxsszvvczykn",
///                                     },
///                                     Size = 24,
///                                 },
///                             },
///                         },
///                         LogConfiguration = new AzureNative.AwsConnector.Inputs.LogConfigurationArgs
///                         {
///                             LogDriver = "zgkgcxxggqdvrfngjbdapez",
///                             SecretOptions = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.SecretArgs
///                                 {
///                                     Name = "knumytlyulndziptjvgvcpd",
///                                     ValueFrom = "z",
///                                 },
///                             },
///                         },
///                         Memory = 27,
///                         MemoryReservation = 9,
///                         MountPoints = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.MountPointArgs
///                             {
///                                 ContainerPath = "zjtchyyfjv",
///                                 ReadOnly = true,
///                                 SourceVolume = "mrimyrhpxx",
///                             },
///                         },
///                         Name = "tfseewfqlgwjqbkjikv",
///                         PortMappings = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.PortMappingArgs
///                             {
///                                 AppProtocol = AzureNative.AwsConnector.PortMappingAppProtocol.Grpc,
///                                 ContainerPort = 17,
///                                 ContainerPortRange = "hwshvyttesxemvlis",
///                                 HostPort = 13,
///                                 Name = "nbxxumpmur",
///                                 Protocol = "llczx",
///                             },
///                         },
///                         Privileged = true,
///                         PseudoTerminal = true,
///                         ReadonlyRootFilesystem = true,
///                         RepositoryCredentials = new AzureNative.AwsConnector.Inputs.RepositoryCredentialsArgs
///                         {
///                             CredentialsParameter = "pdwxhkhkkxjiwwcpkoiketthuw",
///                         },
///                         ResourceRequirements = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.ResourceRequirementArgs
///                             {
///                                 Type = "yhtgxyeazgtpygnamvgtrt",
///                                 Value = "msamplxjlrq",
///                             },
///                         },
///                         Secrets = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.SecretArgs
///                             {
///                                 Name = "knumytlyulndziptjvgvcpd",
///                                 ValueFrom = "z",
///                             },
///                         },
///                         StartTimeout = 10,
///                         StopTimeout = 24,
///                         SystemControls = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.SystemControlArgs
///                             {
///                                 Namespace = "hcwgpftfycwhenxygrbczcyqxh",
///                                 Value = "zzjkfgz",
///                             },
///                         },
///                         Ulimits = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.UlimitArgs
///                             {
///                                 HardLimit = 16,
///                                 Name = "zswtamsvbvaxlueyfkklzaz",
///                                 SoftLimit = 2,
///                             },
///                         },
///                         User = "hosruyaojhjbh",
///                         VolumesFrom = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.VolumeFromArgs
///                             {
///                                 ReadOnly = true,
///                                 SourceContainer = "ktlxxpz",
///                             },
///                         },
///                         WorkingDirectory = "jpdgsckyvfez",
///                     },
///                 },
///                 Cpu = "hijyr",
///                 EphemeralStorage = null,
///                 ExecutionRoleArn = "qqqfakequmccjxadppbeamxuwsitta",
///                 Family = "atzptqetfqeczglfyn",
///                 InferenceAccelerators = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.InferenceAcceleratorArgs
///                     {
///                         DeviceName = "mh",
///                         DeviceType = "zfkvyer",
///                     },
///                 },
///                 IpcMode = "bynxyc",
///                 Memory = "vwthlhlwlmwyoxowrumsld",
///                 NetworkMode = "vrvk",
///                 PidMode = "pthtbdouatcrybmke",
///                 PlacementConstraints = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TaskDefinitionPlacementConstraintArgs
///                     {
///                         Expression = "skxfvhirrtaegdaujr",
///                         Type = "qnklizvyidxybjmtkgdzdls",
///                     },
///                 },
///                 ProxyConfiguration = new AzureNative.AwsConnector.Inputs.ProxyConfigurationArgs
///                 {
///                     ContainerName = "tykmharv",
///                     ProxyConfigurationProperties = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.KeyValuePairArgs
///                         {
///                             Name = "edrmixvb",
///                             Value = "vdms",
///                         },
///                     },
///                     Type = "htnvhyjaffhosgiq",
///                 },
///                 RequiresCompatibilities = new[]
///                 {
///                     "lmugnbkpcgvmibqmoyeicudqghukxl",
///                 },
///                 RuntimePlatform = new AzureNative.AwsConnector.Inputs.RuntimePlatformArgs
///                 {
///                     CpuArchitecture = "zcetkrsfadbflliirh",
///                     OperatingSystemFamily = "topzpehesx",
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "sktncibpobzyad",
///                         Value = "glazi",
///                     },
///                 },
///                 TaskDefinitionArn = "fpexhci",
///                 TaskRoleArn = "vvebkfiglrktpmn",
///                 Volumes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.VolumeArgs
///                     {
///                         ConfiguredAtLaunch = true,
///                         DockerVolumeConfiguration = new AzureNative.AwsConnector.Inputs.DockerVolumeConfigurationArgs
///                         {
///                             Autoprovision = true,
///                             Driver = "fdypjooligpeypyjkojhhnstigr",
///                             Scope = "wourdwnfkwgitfhzywc",
///                         },
///                         EfsVolumeConfiguration = new AzureNative.AwsConnector.Inputs.EFSVolumeConfigurationArgs
///                         {
///                             AuthorizationConfig = new AzureNative.AwsConnector.Inputs.AuthorizationConfigArgs
///                             {
///                                 AccessPointId = "ipf",
///                                 Iam = AzureNative.AwsConnector.AuthorizationConfigIAM.DISABLED,
///                             },
///                             FilesystemId = "kyluffayszoviyute",
///                             RootDirectory = "vqogypwzwvlqikbwdhvy",
///                             TransitEncryption = AzureNative.AwsConnector.EFSVolumeConfigurationTransitEncryption.DISABLED,
///                             TransitEncryptionPort = 27,
///                         },
///                         FSxWindowsFileServerVolumeConfiguration = new AzureNative.AwsConnector.Inputs.FSxWindowsFileServerVolumeConfigurationArgs
///                         {
///                             AuthorizationConfig = new AzureNative.AwsConnector.Inputs.FSxAuthorizationConfigArgs
///                             {
///                                 CredentialsParameter = "ytxpomfevjkqfqrjp",
///                                 Domain = "igiaaxjfjdstgiwmurfycdsss",
///                             },
///                             FileSystemId = "gxcjekzhsm",
///                             RootDirectory = "bkbhxkwlfnslgnapevzhyvmfcdaup",
///                         },
///                         Host = new AzureNative.AwsConnector.Inputs.HostVolumePropertiesArgs
///                         {
///                             SourcePath = "kgadnbxtebvbppaiqqkcmwcipqs",
///                         },
///                         Name = "qslxsptvrywosrsnrdvo",
///                     },
///                 },
///             },
///             AwsRegion = "vdwjcoqcepgcfqjeedexacghbqhz",
///             AwsSourceSchema = "mvndrea",
///             AwsTags =
///             {
///                 { "key1568", "lbxzgpyhaleuetcbwtwotfxmsedkci" },
///             },
///             PublicCloudConnectorsResourceId = "zrnabgyobuzozcbzvgu",
///             PublicCloudResourceName = "mmhr",
///         },
///         ResourceGroupName = "rgecsTaskDefinition",
///         Tags =
///         {
///             { "key6626", "nytjqmvhitrnxlmkyycses" },
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
/// 		_, err := awsconnector.NewEcsTaskDefinition(ctx, "ecsTaskDefinition", &awsconnector.EcsTaskDefinitionArgs{
/// 			Location: pulumi.String("hideafehihasfzxdxuqiqubhhzg"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.EcsTaskDefinitionPropertiesArgs{
/// 				Arn:          pulumi.String("mkr"),
/// 				AwsAccountId: pulumi.String("efgvyahxivjf"),
/// 				AwsProperties: &awsconnector.AwsEcsTaskDefinitionPropertiesArgs{
/// 					ContainerDefinitions: awsconnector.ContainerDefinitionArray{
/// 						&awsconnector.ContainerDefinitionArgs{
/// 							Command: pulumi.StringArray{
/// 								pulumi.String("jowixdtkttvhtvcluhzsqkcszit"),
/// 							},
/// 							Cpu: pulumi.Int(17),
/// 							CredentialSpecs: pulumi.StringArray{
/// 								pulumi.String("ooravv"),
/// 							},
/// 							DependsOn: awsconnector.ContainerDependencyArray{
/// 								&awsconnector.ContainerDependencyArgs{
/// 									Condition:     pulumi.String("xpmiwcexgnrimsrqyrdlvyyquiccp"),
/// 									ContainerName: pulumi.String("wzcyhuwwutzttwwaopqed"),
/// 								},
/// 							},
/// 							DisableNetworking: pulumi.Bool(true),
/// 							DnsSearchDomains: pulumi.StringArray{
/// 								pulumi.String("ggzzwoziotxloooklwdsveul"),
/// 							},
/// 							DnsServers: pulumi.StringArray{
/// 								pulumi.String("ngggprelehukiysguto"),
/// 							},
/// 							DockerSecurityOptions: pulumi.StringArray{
/// 								pulumi.String("famtfjusztdnyrdzupruqpxufhxp"),
/// 							},
/// 							EntryPoint: pulumi.StringArray{
/// 								pulumi.String("oaiompurpnjswlqkmvgraiaj"),
/// 							},
/// 							Environment: awsconnector.KeyValuePairArray{
/// 								&awsconnector.KeyValuePairArgs{
/// 									Name:  pulumi.String("edrmixvb"),
/// 									Value: pulumi.String("vdms"),
/// 								},
/// 							},
/// 							EnvironmentFiles: awsconnector.EnvironmentFileArray{
/// 								&awsconnector.EnvironmentFileArgs{
/// 									Type:  pulumi.String("psgsoavpms"),
/// 									Value: pulumi.String("ydkrwlbkbzqdm"),
/// 								},
/// 							},
/// 							Essential: pulumi.Bool(true),
/// 							ExtraHosts: awsconnector.HostEntryArray{
/// 								&awsconnector.HostEntryArgs{
/// 									Hostname:  pulumi.String("unpwutrc"),
/// 									IpAddress: pulumi.String("mcsjkhhqbwqesxwcpnnasbzamixath"),
/// 								},
/// 							},
/// 							FirelensConfiguration: &awsconnector.FirelensConfigurationArgs{
/// 								Type: pulumi.String("uuwlwegjjeoorvbgtyzoaeeucp"),
/// 							},
/// 							HealthCheck: &awsconnector.HealthCheckArgs{
/// 								Command: pulumi.StringArray{
/// 									pulumi.String("ppgfrdhjiytbzqtwkumhmnpsk"),
/// 								},
/// 								Interval:    pulumi.Int(1),
/// 								Retries:     pulumi.Int(11),
/// 								StartPeriod: pulumi.Int(21),
/// 								Timeout:     pulumi.Int(22),
/// 							},
/// 							Hostname:    pulumi.String("qjkxoayeojuesqmrhe"),
/// 							Image:       pulumi.String("lmgx"),
/// 							Interactive: pulumi.Bool(true),
/// 							Links: pulumi.StringArray{
/// 								pulumi.String("awgsbfcuoynoomjr"),
/// 							},
/// 							LinuxParameters: &awsconnector.LinuxParametersArgs{
/// 								Capabilities: &awsconnector.KernelCapabilitiesArgs{
/// 									Add: pulumi.StringArray{
/// 										pulumi.String("xnobooaglhooafh"),
/// 									},
/// 									Drop: pulumi.StringArray{
/// 										pulumi.String("uscfx"),
/// 									},
/// 								},
/// 								Devices: awsconnector.DeviceArray{
/// 									&awsconnector.DeviceArgs{
/// 										ContainerPath: pulumi.String("fveecgcpepimcqufoswgvjibavi"),
/// 										HostPath:      pulumi.String("hvwxdqfcbt"),
/// 										Permissions: pulumi.StringArray{
/// 											pulumi.String("yqev"),
/// 										},
/// 									},
/// 								},
/// 								InitProcessEnabled: pulumi.Bool(true),
/// 								MaxSwap:            pulumi.Int(24),
/// 								SharedMemorySize:   pulumi.Int(1),
/// 								Swappiness:         pulumi.Int(27),
/// 								Tmpfs: awsconnector.TmpfsArray{
/// 									&awsconnector.TmpfsArgs{
/// 										ContainerPath: pulumi.String("kxvhyrbeu"),
/// 										MountOptions: pulumi.StringArray{
/// 											pulumi.String("lylxsszvvczykn"),
/// 										},
/// 										Size: pulumi.Int(24),
/// 									},
/// 								},
/// 							},
/// 							LogConfiguration: &awsconnector.LogConfigurationArgs{
/// 								LogDriver: pulumi.String("zgkgcxxggqdvrfngjbdapez"),
/// 								SecretOptions: awsconnector.SecretArray{
/// 									&awsconnector.SecretArgs{
/// 										Name:      pulumi.String("knumytlyulndziptjvgvcpd"),
/// 										ValueFrom: pulumi.String("z"),
/// 									},
/// 								},
/// 							},
/// 							Memory:            pulumi.Int(27),
/// 							MemoryReservation: pulumi.Int(9),
/// 							MountPoints: awsconnector.MountPointArray{
/// 								&awsconnector.MountPointArgs{
/// 									ContainerPath: pulumi.String("zjtchyyfjv"),
/// 									ReadOnly:      pulumi.Bool(true),
/// 									SourceVolume:  pulumi.String("mrimyrhpxx"),
/// 								},
/// 							},
/// 							Name: pulumi.String("tfseewfqlgwjqbkjikv"),
/// 							PortMappings: awsconnector.PortMappingArray{
/// 								&awsconnector.PortMappingArgs{
/// 									AppProtocol:        pulumi.String(awsconnector.PortMappingAppProtocolGrpc),
/// 									ContainerPort:      pulumi.Int(17),
/// 									ContainerPortRange: pulumi.String("hwshvyttesxemvlis"),
/// 									HostPort:           pulumi.Int(13),
/// 									Name:               pulumi.String("nbxxumpmur"),
/// 									Protocol:           pulumi.String("llczx"),
/// 								},
/// 							},
/// 							Privileged:             pulumi.Bool(true),
/// 							PseudoTerminal:         pulumi.Bool(true),
/// 							ReadonlyRootFilesystem: pulumi.Bool(true),
/// 							RepositoryCredentials: &awsconnector.RepositoryCredentialsArgs{
/// 								CredentialsParameter: pulumi.String("pdwxhkhkkxjiwwcpkoiketthuw"),
/// 							},
/// 							ResourceRequirements: awsconnector.ResourceRequirementArray{
/// 								&awsconnector.ResourceRequirementArgs{
/// 									Type:  pulumi.String("yhtgxyeazgtpygnamvgtrt"),
/// 									Value: pulumi.String("msamplxjlrq"),
/// 								},
/// 							},
/// 							Secrets: awsconnector.SecretArray{
/// 								&awsconnector.SecretArgs{
/// 									Name:      pulumi.String("knumytlyulndziptjvgvcpd"),
/// 									ValueFrom: pulumi.String("z"),
/// 								},
/// 							},
/// 							StartTimeout: pulumi.Int(10),
/// 							StopTimeout:  pulumi.Int(24),
/// 							SystemControls: awsconnector.SystemControlArray{
/// 								&awsconnector.SystemControlArgs{
/// 									Namespace: pulumi.String("hcwgpftfycwhenxygrbczcyqxh"),
/// 									Value:     pulumi.String("zzjkfgz"),
/// 								},
/// 							},
/// 							Ulimits: awsconnector.UlimitArray{
/// 								&awsconnector.UlimitArgs{
/// 									HardLimit: pulumi.Int(16),
/// 									Name:      pulumi.String("zswtamsvbvaxlueyfkklzaz"),
/// 									SoftLimit: pulumi.Int(2),
/// 								},
/// 							},
/// 							User: pulumi.String("hosruyaojhjbh"),
/// 							VolumesFrom: awsconnector.VolumeFromArray{
/// 								&awsconnector.VolumeFromArgs{
/// 									ReadOnly:        pulumi.Bool(true),
/// 									SourceContainer: pulumi.String("ktlxxpz"),
/// 								},
/// 							},
/// 							WorkingDirectory: pulumi.String("jpdgsckyvfez"),
/// 						},
/// 					},
/// 					Cpu:              pulumi.String("hijyr"),
/// 					EphemeralStorage: &awsconnector.EphemeralStorageArgs{},
/// 					ExecutionRoleArn: pulumi.String("qqqfakequmccjxadppbeamxuwsitta"),
/// 					Family:           pulumi.String("atzptqetfqeczglfyn"),
/// 					InferenceAccelerators: awsconnector.InferenceAcceleratorArray{
/// 						&awsconnector.InferenceAcceleratorArgs{
/// 							DeviceName: pulumi.String("mh"),
/// 							DeviceType: pulumi.String("zfkvyer"),
/// 						},
/// 					},
/// 					IpcMode:     pulumi.String("bynxyc"),
/// 					Memory:      pulumi.String("vwthlhlwlmwyoxowrumsld"),
/// 					NetworkMode: pulumi.String("vrvk"),
/// 					PidMode:     pulumi.String("pthtbdouatcrybmke"),
/// 					PlacementConstraints: awsconnector.TaskDefinitionPlacementConstraintArray{
/// 						&awsconnector.TaskDefinitionPlacementConstraintArgs{
/// 							Expression: pulumi.String("skxfvhirrtaegdaujr"),
/// 							Type:       pulumi.String("qnklizvyidxybjmtkgdzdls"),
/// 						},
/// 					},
/// 					ProxyConfiguration: &awsconnector.ProxyConfigurationArgs{
/// 						ContainerName: pulumi.String("tykmharv"),
/// 						ProxyConfigurationProperties: awsconnector.KeyValuePairArray{
/// 							&awsconnector.KeyValuePairArgs{
/// 								Name:  pulumi.String("edrmixvb"),
/// 								Value: pulumi.String("vdms"),
/// 							},
/// 						},
/// 						Type: pulumi.String("htnvhyjaffhosgiq"),
/// 					},
/// 					RequiresCompatibilities: pulumi.StringArray{
/// 						pulumi.String("lmugnbkpcgvmibqmoyeicudqghukxl"),
/// 					},
/// 					RuntimePlatform: &awsconnector.RuntimePlatformArgs{
/// 						CpuArchitecture:       pulumi.String("zcetkrsfadbflliirh"),
/// 						OperatingSystemFamily: pulumi.String("topzpehesx"),
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("sktncibpobzyad"),
/// 							Value: pulumi.String("glazi"),
/// 						},
/// 					},
/// 					TaskDefinitionArn: pulumi.String("fpexhci"),
/// 					TaskRoleArn:       pulumi.String("vvebkfiglrktpmn"),
/// 					Volumes: awsconnector.VolumeArray{
/// 						&awsconnector.VolumeArgs{
/// 							ConfiguredAtLaunch: pulumi.Bool(true),
/// 							DockerVolumeConfiguration: &awsconnector.DockerVolumeConfigurationArgs{
/// 								Autoprovision: pulumi.Bool(true),
/// 								Driver:        pulumi.String("fdypjooligpeypyjkojhhnstigr"),
/// 								Scope:         pulumi.String("wourdwnfkwgitfhzywc"),
/// 							},
/// 							EfsVolumeConfiguration: &awsconnector.EFSVolumeConfigurationArgs{
/// 								AuthorizationConfig: &awsconnector.AuthorizationConfigArgs{
/// 									AccessPointId: pulumi.String("ipf"),
/// 									Iam:           pulumi.String(awsconnector.AuthorizationConfigIAMDISABLED),
/// 								},
/// 								FilesystemId:          pulumi.String("kyluffayszoviyute"),
/// 								RootDirectory:         pulumi.String("vqogypwzwvlqikbwdhvy"),
/// 								TransitEncryption:     pulumi.String(awsconnector.EFSVolumeConfigurationTransitEncryptionDISABLED),
/// 								TransitEncryptionPort: pulumi.Int(27),
/// 							},
/// 							FSxWindowsFileServerVolumeConfiguration: &awsconnector.FSxWindowsFileServerVolumeConfigurationArgs{
/// 								AuthorizationConfig: &awsconnector.FSxAuthorizationConfigArgs{
/// 									CredentialsParameter: pulumi.String("ytxpomfevjkqfqrjp"),
/// 									Domain:               pulumi.String("igiaaxjfjdstgiwmurfycdsss"),
/// 								},
/// 								FileSystemId:  pulumi.String("gxcjekzhsm"),
/// 								RootDirectory: pulumi.String("bkbhxkwlfnslgnapevzhyvmfcdaup"),
/// 							},
/// 							Host: &awsconnector.HostVolumePropertiesArgs{
/// 								SourcePath: pulumi.String("kgadnbxtebvbppaiqqkcmwcipqs"),
/// 							},
/// 							Name: pulumi.String("qslxsptvrywosrsnrdvo"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("vdwjcoqcepgcfqjeedexacghbqhz"),
/// 				AwsSourceSchema: pulumi.String("mvndrea"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1568": pulumi.String("lbxzgpyhaleuetcbwtwotfxmsedkci"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("zrnabgyobuzozcbzvgu"),
/// 				PublicCloudResourceName:         pulumi.String("mmhr"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgecsTaskDefinition"),
/// 			Tags: pulumi.StringMap{
/// 				"key6626": pulumi.String("nytjqmvhitrnxlmkyycses"),
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
/// import com.pulumi.azurenative.awsconnector.EcsTaskDefinition;
/// import com.pulumi.azurenative.awsconnector.EcsTaskDefinitionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EcsTaskDefinitionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEcsTaskDefinitionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EphemeralStorageArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProxyConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RuntimePlatformArgs;
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
///         var ecsTaskDefinition = new EcsTaskDefinition("ecsTaskDefinition", EcsTaskDefinitionArgs.builder()
///             .location("hideafehihasfzxdxuqiqubhhzg")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(EcsTaskDefinitionPropertiesArgs.builder()
///                 .arn("mkr")
///                 .awsAccountId("efgvyahxivjf")
///                 .awsProperties(AwsEcsTaskDefinitionPropertiesArgs.builder()
///                     .containerDefinitions(ContainerDefinitionArgs.builder()
///                         .command("jowixdtkttvhtvcluhzsqkcszit")
///                         .cpu(17)
///                         .credentialSpecs("ooravv")
///                         .dependsOn(ContainerDependencyArgs.builder()
///                             .condition("xpmiwcexgnrimsrqyrdlvyyquiccp")
///                             .containerName("wzcyhuwwutzttwwaopqed")
///                             .build())
///                         .disableNetworking(true)
///                         .dnsSearchDomains("ggzzwoziotxloooklwdsveul")
///                         .dnsServers("ngggprelehukiysguto")
///                         .dockerSecurityOptions("famtfjusztdnyrdzupruqpxufhxp")
///                         .entryPoint("oaiompurpnjswlqkmvgraiaj")
///                         .environment(KeyValuePairArgs.builder()
///                             .name("edrmixvb")
///                             .value("vdms")
///                             .build())
///                         .environmentFiles(EnvironmentFileArgs.builder()
///                             .type("psgsoavpms")
///                             .value("ydkrwlbkbzqdm")
///                             .build())
///                         .essential(true)
///                         .extraHosts(HostEntryArgs.builder()
///                             .hostname("unpwutrc")
///                             .ipAddress("mcsjkhhqbwqesxwcpnnasbzamixath")
///                             .build())
///                         .firelensConfiguration(FirelensConfigurationArgs.builder()
///                             .type("uuwlwegjjeoorvbgtyzoaeeucp")
///                             .build())
///                         .healthCheck(HealthCheckArgs.builder()
///                             .command("ppgfrdhjiytbzqtwkumhmnpsk")
///                             .interval(1)
///                             .retries(11)
///                             .startPeriod(21)
///                             .timeout(22)
///                             .build())
///                         .hostname("qjkxoayeojuesqmrhe")
///                         .image("lmgx")
///                         .interactive(true)
///                         .links("awgsbfcuoynoomjr")
///                         .linuxParameters(LinuxParametersArgs.builder()
///                             .capabilities(KernelCapabilitiesArgs.builder()
///                                 .add("xnobooaglhooafh")
///                                 .drop("uscfx")
///                                 .build())
///                             .devices(DeviceArgs.builder()
///                                 .containerPath("fveecgcpepimcqufoswgvjibavi")
///                                 .hostPath("hvwxdqfcbt")
///                                 .permissions("yqev")
///                                 .build())
///                             .initProcessEnabled(true)
///                             .maxSwap(24)
///                             .sharedMemorySize(1)
///                             .swappiness(27)
///                             .tmpfs(TmpfsArgs.builder()
///                                 .containerPath("kxvhyrbeu")
///                                 .mountOptions("lylxsszvvczykn")
///                                 .size(24)
///                                 .build())
///                             .build())
///                         .logConfiguration(LogConfigurationArgs.builder()
///                             .logDriver("zgkgcxxggqdvrfngjbdapez")
///                             .secretOptions(SecretArgs.builder()
///                                 .name("knumytlyulndziptjvgvcpd")
///                                 .valueFrom("z")
///                                 .build())
///                             .build())
///                         .memory(27)
///                         .memoryReservation(9)
///                         .mountPoints(MountPointArgs.builder()
///                             .containerPath("zjtchyyfjv")
///                             .readOnly(true)
///                             .sourceVolume("mrimyrhpxx")
///                             .build())
///                         .name("tfseewfqlgwjqbkjikv")
///                         .portMappings(PortMappingArgs.builder()
///                             .appProtocol("grpc")
///                             .containerPort(17)
///                             .containerPortRange("hwshvyttesxemvlis")
///                             .hostPort(13)
///                             .name("nbxxumpmur")
///                             .protocol("llczx")
///                             .build())
///                         .privileged(true)
///                         .pseudoTerminal(true)
///                         .readonlyRootFilesystem(true)
///                         .repositoryCredentials(RepositoryCredentialsArgs.builder()
///                             .credentialsParameter("pdwxhkhkkxjiwwcpkoiketthuw")
///                             .build())
///                         .resourceRequirements(ResourceRequirementArgs.builder()
///                             .type("yhtgxyeazgtpygnamvgtrt")
///                             .value("msamplxjlrq")
///                             .build())
///                         .secrets(SecretArgs.builder()
///                             .name("knumytlyulndziptjvgvcpd")
///                             .valueFrom("z")
///                             .build())
///                         .startTimeout(10)
///                         .stopTimeout(24)
///                         .systemControls(SystemControlArgs.builder()
///                             .namespace("hcwgpftfycwhenxygrbczcyqxh")
///                             .value("zzjkfgz")
///                             .build())
///                         .ulimits(UlimitArgs.builder()
///                             .hardLimit(16)
///                             .name("zswtamsvbvaxlueyfkklzaz")
///                             .softLimit(2)
///                             .build())
///                         .user("hosruyaojhjbh")
///                         .volumesFrom(VolumeFromArgs.builder()
///                             .readOnly(true)
///                             .sourceContainer("ktlxxpz")
///                             .build())
///                         .workingDirectory("jpdgsckyvfez")
///                         .build())
///                     .cpu("hijyr")
///                     .ephemeralStorage(EphemeralStorageArgs.builder()
///                         .build())
///                     .executionRoleArn("qqqfakequmccjxadppbeamxuwsitta")
///                     .family("atzptqetfqeczglfyn")
///                     .inferenceAccelerators(InferenceAcceleratorArgs.builder()
///                         .deviceName("mh")
///                         .deviceType("zfkvyer")
///                         .build())
///                     .ipcMode("bynxyc")
///                     .memory("vwthlhlwlmwyoxowrumsld")
///                     .networkMode("vrvk")
///                     .pidMode("pthtbdouatcrybmke")
///                     .placementConstraints(TaskDefinitionPlacementConstraintArgs.builder()
///                         .expression("skxfvhirrtaegdaujr")
///                         .type("qnklizvyidxybjmtkgdzdls")
///                         .build())
///                     .proxyConfiguration(ProxyConfigurationArgs.builder()
///                         .containerName("tykmharv")
///                         .proxyConfigurationProperties(KeyValuePairArgs.builder()
///                             .name("edrmixvb")
///                             .value("vdms")
///                             .build())
///                         .type("htnvhyjaffhosgiq")
///                         .build())
///                     .requiresCompatibilities("lmugnbkpcgvmibqmoyeicudqghukxl")
///                     .runtimePlatform(RuntimePlatformArgs.builder()
///                         .cpuArchitecture("zcetkrsfadbflliirh")
///                         .operatingSystemFamily("topzpehesx")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("sktncibpobzyad")
///                         .value("glazi")
///                         .build())
///                     .taskDefinitionArn("fpexhci")
///                     .taskRoleArn("vvebkfiglrktpmn")
///                     .volumes(VolumeArgs.builder()
///                         .configuredAtLaunch(true)
///                         .dockerVolumeConfiguration(DockerVolumeConfigurationArgs.builder()
///                             .autoprovision(true)
///                             .driver("fdypjooligpeypyjkojhhnstigr")
///                             .scope("wourdwnfkwgitfhzywc")
///                             .build())
///                         .efsVolumeConfiguration(EFSVolumeConfigurationArgs.builder()
///                             .authorizationConfig(AuthorizationConfigArgs.builder()
///                                 .accessPointId("ipf")
///                                 .iam("DISABLED")
///                                 .build())
///                             .filesystemId("kyluffayszoviyute")
///                             .rootDirectory("vqogypwzwvlqikbwdhvy")
///                             .transitEncryption("DISABLED")
///                             .transitEncryptionPort(27)
///                             .build())
///                         .fSxWindowsFileServerVolumeConfiguration(FSxWindowsFileServerVolumeConfigurationArgs.builder()
///                             .authorizationConfig(FSxAuthorizationConfigArgs.builder()
///                                 .credentialsParameter("ytxpomfevjkqfqrjp")
///                                 .domain("igiaaxjfjdstgiwmurfycdsss")
///                                 .build())
///                             .fileSystemId("gxcjekzhsm")
///                             .rootDirectory("bkbhxkwlfnslgnapevzhyvmfcdaup")
///                             .build())
///                         .host(HostVolumePropertiesArgs.builder()
///                             .sourcePath("kgadnbxtebvbppaiqqkcmwcipqs")
///                             .build())
///                         .name("qslxsptvrywosrsnrdvo")
///                         .build())
///                     .build())
///                 .awsRegion("vdwjcoqcepgcfqjeedexacghbqhz")
///                 .awsSourceSchema("mvndrea")
///                 .awsTags(Map.of("key1568", "lbxzgpyhaleuetcbwtwotfxmsedkci"))
///                 .publicCloudConnectorsResourceId("zrnabgyobuzozcbzvgu")
///                 .publicCloudResourceName("mmhr")
///                 .build())
///             .resourceGroupName("rgecsTaskDefinition")
///             .tags(Map.of("key6626", "nytjqmvhitrnxlmkyycses"))
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
/// const ecsTaskDefinition = new azure_native.awsconnector.EcsTaskDefinition("ecsTaskDefinition", {
///     location: "hideafehihasfzxdxuqiqubhhzg",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "mkr",
///         awsAccountId: "efgvyahxivjf",
///         awsProperties: {
///             containerDefinitions: [{
///                 command: ["jowixdtkttvhtvcluhzsqkcszit"],
///                 cpu: 17,
///                 credentialSpecs: ["ooravv"],
///                 dependsOn: [{
///                     condition: "xpmiwcexgnrimsrqyrdlvyyquiccp",
///                     containerName: "wzcyhuwwutzttwwaopqed",
///                 }],
///                 disableNetworking: true,
///                 dnsSearchDomains: ["ggzzwoziotxloooklwdsveul"],
///                 dnsServers: ["ngggprelehukiysguto"],
///                 dockerSecurityOptions: ["famtfjusztdnyrdzupruqpxufhxp"],
///                 entryPoint: ["oaiompurpnjswlqkmvgraiaj"],
///                 environment: [{
///                     name: "edrmixvb",
///                     value: "vdms",
///                 }],
///                 environmentFiles: [{
///                     type: "psgsoavpms",
///                     value: "ydkrwlbkbzqdm",
///                 }],
///                 essential: true,
///                 extraHosts: [{
///                     hostname: "unpwutrc",
///                     ipAddress: "mcsjkhhqbwqesxwcpnnasbzamixath",
///                 }],
///                 firelensConfiguration: {
///                     type: "uuwlwegjjeoorvbgtyzoaeeucp",
///                 },
///                 healthCheck: {
///                     command: ["ppgfrdhjiytbzqtwkumhmnpsk"],
///                     interval: 1,
///                     retries: 11,
///                     startPeriod: 21,
///                     timeout: 22,
///                 },
///                 hostname: "qjkxoayeojuesqmrhe",
///                 image: "lmgx",
///                 interactive: true,
///                 links: ["awgsbfcuoynoomjr"],
///                 linuxParameters: {
///                     capabilities: {
///                         add: ["xnobooaglhooafh"],
///                         drop: ["uscfx"],
///                     },
///                     devices: [{
///                         containerPath: "fveecgcpepimcqufoswgvjibavi",
///                         hostPath: "hvwxdqfcbt",
///                         permissions: ["yqev"],
///                     }],
///                     initProcessEnabled: true,
///                     maxSwap: 24,
///                     sharedMemorySize: 1,
///                     swappiness: 27,
///                     tmpfs: [{
///                         containerPath: "kxvhyrbeu",
///                         mountOptions: ["lylxsszvvczykn"],
///                         size: 24,
///                     }],
///                 },
///                 logConfiguration: {
///                     logDriver: "zgkgcxxggqdvrfngjbdapez",
///                     secretOptions: [{
///                         name: "knumytlyulndziptjvgvcpd",
///                         valueFrom: "z",
///                     }],
///                 },
///                 memory: 27,
///                 memoryReservation: 9,
///                 mountPoints: [{
///                     containerPath: "zjtchyyfjv",
///                     readOnly: true,
///                     sourceVolume: "mrimyrhpxx",
///                 }],
///                 name: "tfseewfqlgwjqbkjikv",
///                 portMappings: [{
///                     appProtocol: azure_native.awsconnector.PortMappingAppProtocol.Grpc,
///                     containerPort: 17,
///                     containerPortRange: "hwshvyttesxemvlis",
///                     hostPort: 13,
///                     name: "nbxxumpmur",
///                     protocol: "llczx",
///                 }],
///                 privileged: true,
///                 pseudoTerminal: true,
///                 readonlyRootFilesystem: true,
///                 repositoryCredentials: {
///                     credentialsParameter: "pdwxhkhkkxjiwwcpkoiketthuw",
///                 },
///                 resourceRequirements: [{
///                     type: "yhtgxyeazgtpygnamvgtrt",
///                     value: "msamplxjlrq",
///                 }],
///                 secrets: [{
///                     name: "knumytlyulndziptjvgvcpd",
///                     valueFrom: "z",
///                 }],
///                 startTimeout: 10,
///                 stopTimeout: 24,
///                 systemControls: [{
///                     namespace: "hcwgpftfycwhenxygrbczcyqxh",
///                     value: "zzjkfgz",
///                 }],
///                 ulimits: [{
///                     hardLimit: 16,
///                     name: "zswtamsvbvaxlueyfkklzaz",
///                     softLimit: 2,
///                 }],
///                 user: "hosruyaojhjbh",
///                 volumesFrom: [{
///                     readOnly: true,
///                     sourceContainer: "ktlxxpz",
///                 }],
///                 workingDirectory: "jpdgsckyvfez",
///             }],
///             cpu: "hijyr",
///             ephemeralStorage: {},
///             executionRoleArn: "qqqfakequmccjxadppbeamxuwsitta",
///             family: "atzptqetfqeczglfyn",
///             inferenceAccelerators: [{
///                 deviceName: "mh",
///                 deviceType: "zfkvyer",
///             }],
///             ipcMode: "bynxyc",
///             memory: "vwthlhlwlmwyoxowrumsld",
///             networkMode: "vrvk",
///             pidMode: "pthtbdouatcrybmke",
///             placementConstraints: [{
///                 expression: "skxfvhirrtaegdaujr",
///                 type: "qnklizvyidxybjmtkgdzdls",
///             }],
///             proxyConfiguration: {
///                 containerName: "tykmharv",
///                 proxyConfigurationProperties: [{
///                     name: "edrmixvb",
///                     value: "vdms",
///                 }],
///                 type: "htnvhyjaffhosgiq",
///             },
///             requiresCompatibilities: ["lmugnbkpcgvmibqmoyeicudqghukxl"],
///             runtimePlatform: {
///                 cpuArchitecture: "zcetkrsfadbflliirh",
///                 operatingSystemFamily: "topzpehesx",
///             },
///             tags: [{
///                 key: "sktncibpobzyad",
///                 value: "glazi",
///             }],
///             taskDefinitionArn: "fpexhci",
///             taskRoleArn: "vvebkfiglrktpmn",
///             volumes: [{
///                 configuredAtLaunch: true,
///                 dockerVolumeConfiguration: {
///                     autoprovision: true,
///                     driver: "fdypjooligpeypyjkojhhnstigr",
///                     scope: "wourdwnfkwgitfhzywc",
///                 },
///                 efsVolumeConfiguration: {
///                     authorizationConfig: {
///                         accessPointId: "ipf",
///                         iam: azure_native.awsconnector.AuthorizationConfigIAM.DISABLED,
///                     },
///                     filesystemId: "kyluffayszoviyute",
///                     rootDirectory: "vqogypwzwvlqikbwdhvy",
///                     transitEncryption: azure_native.awsconnector.EFSVolumeConfigurationTransitEncryption.DISABLED,
///                     transitEncryptionPort: 27,
///                 },
///                 fSxWindowsFileServerVolumeConfiguration: {
///                     authorizationConfig: {
///                         credentialsParameter: "ytxpomfevjkqfqrjp",
///                         domain: "igiaaxjfjdstgiwmurfycdsss",
///                     },
///                     fileSystemId: "gxcjekzhsm",
///                     rootDirectory: "bkbhxkwlfnslgnapevzhyvmfcdaup",
///                 },
///                 host: {
///                     sourcePath: "kgadnbxtebvbppaiqqkcmwcipqs",
///                 },
///                 name: "qslxsptvrywosrsnrdvo",
///             }],
///         },
///         awsRegion: "vdwjcoqcepgcfqjeedexacghbqhz",
///         awsSourceSchema: "mvndrea",
///         awsTags: {
///             key1568: "lbxzgpyhaleuetcbwtwotfxmsedkci",
///         },
///         publicCloudConnectorsResourceId: "zrnabgyobuzozcbzvgu",
///         publicCloudResourceName: "mmhr",
///     },
///     resourceGroupName: "rgecsTaskDefinition",
///     tags: {
///         key6626: "nytjqmvhitrnxlmkyycses",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ecs_task_definition = azure_native.awsconnector.EcsTaskDefinition("ecsTaskDefinition",
///     location="hideafehihasfzxdxuqiqubhhzg",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "mkr",
///         "aws_account_id": "efgvyahxivjf",
///         "aws_properties": {
///             "container_definitions": [{
///                 "command": ["jowixdtkttvhtvcluhzsqkcszit"],
///                 "cpu": 17,
///                 "credential_specs": ["ooravv"],
///                 "depends_on": [{
///                     "condition": "xpmiwcexgnrimsrqyrdlvyyquiccp",
///                     "container_name": "wzcyhuwwutzttwwaopqed",
///                 }],
///                 "disable_networking": True,
///                 "dns_search_domains": ["ggzzwoziotxloooklwdsveul"],
///                 "dns_servers": ["ngggprelehukiysguto"],
///                 "docker_security_options": ["famtfjusztdnyrdzupruqpxufhxp"],
///                 "entry_point": ["oaiompurpnjswlqkmvgraiaj"],
///                 "environment": [{
///                     "name": "edrmixvb",
///                     "value": "vdms",
///                 }],
///                 "environment_files": [{
///                     "type": "psgsoavpms",
///                     "value": "ydkrwlbkbzqdm",
///                 }],
///                 "essential": True,
///                 "extra_hosts": [{
///                     "hostname": "unpwutrc",
///                     "ip_address": "mcsjkhhqbwqesxwcpnnasbzamixath",
///                 }],
///                 "firelens_configuration": {
///                     "type": "uuwlwegjjeoorvbgtyzoaeeucp",
///                 },
///                 "health_check": {
///                     "command": ["ppgfrdhjiytbzqtwkumhmnpsk"],
///                     "interval": 1,
///                     "retries": 11,
///                     "start_period": 21,
///                     "timeout": 22,
///                 },
///                 "hostname": "qjkxoayeojuesqmrhe",
///                 "image": "lmgx",
///                 "interactive": True,
///                 "links": ["awgsbfcuoynoomjr"],
///                 "linux_parameters": {
///                     "capabilities": {
///                         "add": ["xnobooaglhooafh"],
///                         "drop": ["uscfx"],
///                     },
///                     "devices": [{
///                         "container_path": "fveecgcpepimcqufoswgvjibavi",
///                         "host_path": "hvwxdqfcbt",
///                         "permissions": ["yqev"],
///                     }],
///                     "init_process_enabled": True,
///                     "max_swap": 24,
///                     "shared_memory_size": 1,
///                     "swappiness": 27,
///                     "tmpfs": [{
///                         "container_path": "kxvhyrbeu",
///                         "mount_options": ["lylxsszvvczykn"],
///                         "size": 24,
///                     }],
///                 },
///                 "log_configuration": {
///                     "log_driver": "zgkgcxxggqdvrfngjbdapez",
///                     "secret_options": [{
///                         "name": "knumytlyulndziptjvgvcpd",
///                         "value_from": "z",
///                     }],
///                 },
///                 "memory": 27,
///                 "memory_reservation": 9,
///                 "mount_points": [{
///                     "container_path": "zjtchyyfjv",
///                     "read_only": True,
///                     "source_volume": "mrimyrhpxx",
///                 }],
///                 "name": "tfseewfqlgwjqbkjikv",
///                 "port_mappings": [{
///                     "app_protocol": azure_native.awsconnector.PortMappingAppProtocol.GRPC,
///                     "container_port": 17,
///                     "container_port_range": "hwshvyttesxemvlis",
///                     "host_port": 13,
///                     "name": "nbxxumpmur",
///                     "protocol": "llczx",
///                 }],
///                 "privileged": True,
///                 "pseudo_terminal": True,
///                 "readonly_root_filesystem": True,
///                 "repository_credentials": {
///                     "credentials_parameter": "pdwxhkhkkxjiwwcpkoiketthuw",
///                 },
///                 "resource_requirements": [{
///                     "type": "yhtgxyeazgtpygnamvgtrt",
///                     "value": "msamplxjlrq",
///                 }],
///                 "secrets": [{
///                     "name": "knumytlyulndziptjvgvcpd",
///                     "value_from": "z",
///                 }],
///                 "start_timeout": 10,
///                 "stop_timeout": 24,
///                 "system_controls": [{
///                     "namespace": "hcwgpftfycwhenxygrbczcyqxh",
///                     "value": "zzjkfgz",
///                 }],
///                 "ulimits": [{
///                     "hard_limit": 16,
///                     "name": "zswtamsvbvaxlueyfkklzaz",
///                     "soft_limit": 2,
///                 }],
///                 "user": "hosruyaojhjbh",
///                 "volumes_from": [{
///                     "read_only": True,
///                     "source_container": "ktlxxpz",
///                 }],
///                 "working_directory": "jpdgsckyvfez",
///             }],
///             "cpu": "hijyr",
///             "ephemeral_storage": {},
///             "execution_role_arn": "qqqfakequmccjxadppbeamxuwsitta",
///             "family": "atzptqetfqeczglfyn",
///             "inference_accelerators": [{
///                 "device_name": "mh",
///                 "device_type": "zfkvyer",
///             }],
///             "ipc_mode": "bynxyc",
///             "memory": "vwthlhlwlmwyoxowrumsld",
///             "network_mode": "vrvk",
///             "pid_mode": "pthtbdouatcrybmke",
///             "placement_constraints": [{
///                 "expression": "skxfvhirrtaegdaujr",
///                 "type": "qnklizvyidxybjmtkgdzdls",
///             }],
///             "proxy_configuration": {
///                 "container_name": "tykmharv",
///                 "proxy_configuration_properties": [{
///                     "name": "edrmixvb",
///                     "value": "vdms",
///                 }],
///                 "type": "htnvhyjaffhosgiq",
///             },
///             "requires_compatibilities": ["lmugnbkpcgvmibqmoyeicudqghukxl"],
///             "runtime_platform": {
///                 "cpu_architecture": "zcetkrsfadbflliirh",
///                 "operating_system_family": "topzpehesx",
///             },
///             "tags": [{
///                 "key": "sktncibpobzyad",
///                 "value": "glazi",
///             }],
///             "task_definition_arn": "fpexhci",
///             "task_role_arn": "vvebkfiglrktpmn",
///             "volumes": [{
///                 "configured_at_launch": True,
///                 "docker_volume_configuration": {
///                     "autoprovision": True,
///                     "driver": "fdypjooligpeypyjkojhhnstigr",
///                     "scope": "wourdwnfkwgitfhzywc",
///                 },
///                 "efs_volume_configuration": {
///                     "authorization_config": {
///                         "access_point_id": "ipf",
///                         "iam": azure_native.awsconnector.AuthorizationConfigIAM.DISABLED,
///                     },
///                     "filesystem_id": "kyluffayszoviyute",
///                     "root_directory": "vqogypwzwvlqikbwdhvy",
///                     "transit_encryption": azure_native.awsconnector.EFSVolumeConfigurationTransitEncryption.DISABLED,
///                     "transit_encryption_port": 27,
///                 },
///                 "f_sx_windows_file_server_volume_configuration": {
///                     "authorization_config": {
///                         "credentials_parameter": "ytxpomfevjkqfqrjp",
///                         "domain": "igiaaxjfjdstgiwmurfycdsss",
///                     },
///                     "file_system_id": "gxcjekzhsm",
///                     "root_directory": "bkbhxkwlfnslgnapevzhyvmfcdaup",
///                 },
///                 "host": {
///                     "source_path": "kgadnbxtebvbppaiqqkcmwcipqs",
///                 },
///                 "name": "qslxsptvrywosrsnrdvo",
///             }],
///         },
///         "aws_region": "vdwjcoqcepgcfqjeedexacghbqhz",
///         "aws_source_schema": "mvndrea",
///         "aws_tags": {
///             "key1568": "lbxzgpyhaleuetcbwtwotfxmsedkci",
///         },
///         "public_cloud_connectors_resource_id": "zrnabgyobuzozcbzvgu",
///         "public_cloud_resource_name": "mmhr",
///     },
///     resource_group_name="rgecsTaskDefinition",
///     tags={
///         "key6626": "nytjqmvhitrnxlmkyycses",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ecsTaskDefinition:
///     type: azure-native:awsconnector:EcsTaskDefinition
///     properties:
///       location: hideafehihasfzxdxuqiqubhhzg
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: mkr
///         awsAccountId: efgvyahxivjf
///         awsProperties:
///           containerDefinitions:
///             - command:
///                 - jowixdtkttvhtvcluhzsqkcszit
///               cpu: 17
///               credentialSpecs:
///                 - ooravv
///               dependsOn:
///                 - condition: xpmiwcexgnrimsrqyrdlvyyquiccp
///                   containerName: wzcyhuwwutzttwwaopqed
///               disableNetworking: true
///               dnsSearchDomains:
///                 - ggzzwoziotxloooklwdsveul
///               dnsServers:
///                 - ngggprelehukiysguto
///               dockerSecurityOptions:
///                 - famtfjusztdnyrdzupruqpxufhxp
///               entryPoint:
///                 - oaiompurpnjswlqkmvgraiaj
///               environment:
///                 - name: edrmixvb
///                   value: vdms
///               environmentFiles:
///                 - type: psgsoavpms
///                   value: ydkrwlbkbzqdm
///               essential: true
///               extraHosts:
///                 - hostname: unpwutrc
///                   ipAddress: mcsjkhhqbwqesxwcpnnasbzamixath
///               firelensConfiguration:
///                 type: uuwlwegjjeoorvbgtyzoaeeucp
///               healthCheck:
///                 command:
///                   - ppgfrdhjiytbzqtwkumhmnpsk
///                 interval: 1
///                 retries: 11
///                 startPeriod: 21
///                 timeout: 22
///               hostname: qjkxoayeojuesqmrhe
///               image: lmgx
///               interactive: true
///               links:
///                 - awgsbfcuoynoomjr
///               linuxParameters:
///                 capabilities:
///                   add:
///                     - xnobooaglhooafh
///                   drop:
///                     - uscfx
///                 devices:
///                   - containerPath: fveecgcpepimcqufoswgvjibavi
///                     hostPath: hvwxdqfcbt
///                     permissions:
///                       - yqev
///                 initProcessEnabled: true
///                 maxSwap: 24
///                 sharedMemorySize: 1
///                 swappiness: 27
///                 tmpfs:
///                   - containerPath: kxvhyrbeu
///                     mountOptions:
///                       - lylxsszvvczykn
///                     size: 24
///               logConfiguration:
///                 logDriver: zgkgcxxggqdvrfngjbdapez
///                 secretOptions:
///                   - name: knumytlyulndziptjvgvcpd
///                     valueFrom: z
///               memory: 27
///               memoryReservation: 9
///               mountPoints:
///                 - containerPath: zjtchyyfjv
///                   readOnly: true
///                   sourceVolume: mrimyrhpxx
///               name: tfseewfqlgwjqbkjikv
///               portMappings:
///                 - appProtocol: grpc
///                   containerPort: 17
///                   containerPortRange: hwshvyttesxemvlis
///                   hostPort: 13
///                   name: nbxxumpmur
///                   protocol: llczx
///               privileged: true
///               pseudoTerminal: true
///               readonlyRootFilesystem: true
///               repositoryCredentials:
///                 credentialsParameter: pdwxhkhkkxjiwwcpkoiketthuw
///               resourceRequirements:
///                 - type: yhtgxyeazgtpygnamvgtrt
///                   value: msamplxjlrq
///               secrets:
///                 - name: knumytlyulndziptjvgvcpd
///                   valueFrom: z
///               startTimeout: 10
///               stopTimeout: 24
///               systemControls:
///                 - namespace: hcwgpftfycwhenxygrbczcyqxh
///                   value: zzjkfgz
///               ulimits:
///                 - hardLimit: 16
///                   name: zswtamsvbvaxlueyfkklzaz
///                   softLimit: 2
///               user: hosruyaojhjbh
///               volumesFrom:
///                 - readOnly: true
///                   sourceContainer: ktlxxpz
///               workingDirectory: jpdgsckyvfez
///           cpu: hijyr
///           ephemeralStorage: {}
///           executionRoleArn: qqqfakequmccjxadppbeamxuwsitta
///           family: atzptqetfqeczglfyn
///           inferenceAccelerators:
///             - deviceName: mh
///               deviceType: zfkvyer
///           ipcMode: bynxyc
///           memory: vwthlhlwlmwyoxowrumsld
///           networkMode: vrvk
///           pidMode: pthtbdouatcrybmke
///           placementConstraints:
///             - expression: skxfvhirrtaegdaujr
///               type: qnklizvyidxybjmtkgdzdls
///           proxyConfiguration:
///             containerName: tykmharv
///             proxyConfigurationProperties:
///               - name: edrmixvb
///                 value: vdms
///             type: htnvhyjaffhosgiq
///           requiresCompatibilities:
///             - lmugnbkpcgvmibqmoyeicudqghukxl
///           runtimePlatform:
///             cpuArchitecture: zcetkrsfadbflliirh
///             operatingSystemFamily: topzpehesx
///           tags:
///             - key: sktncibpobzyad
///               value: glazi
///           taskDefinitionArn: fpexhci
///           taskRoleArn: vvebkfiglrktpmn
///           volumes:
///             - configuredAtLaunch: true
///               dockerVolumeConfiguration:
///                 autoprovision: true
///                 driver: fdypjooligpeypyjkojhhnstigr
///                 scope: wourdwnfkwgitfhzywc
///               efsVolumeConfiguration:
///                 authorizationConfig:
///                   accessPointId: ipf
///                   iam: DISABLED
///                 filesystemId: kyluffayszoviyute
///                 rootDirectory: vqogypwzwvlqikbwdhvy
///                 transitEncryption: DISABLED
///                 transitEncryptionPort: 27
///               fSxWindowsFileServerVolumeConfiguration:
///                 authorizationConfig:
///                   credentialsParameter: ytxpomfevjkqfqrjp
///                   domain: igiaaxjfjdstgiwmurfycdsss
///                 fileSystemId: gxcjekzhsm
///                 rootDirectory: bkbhxkwlfnslgnapevzhyvmfcdaup
///               host:
///                 sourcePath: kgadnbxtebvbppaiqqkcmwcipqs
///               name: qslxsptvrywosrsnrdvo
///         awsRegion: vdwjcoqcepgcfqjeedexacghbqhz
///         awsSourceSchema: mvndrea
///         awsTags:
///           key1568: lbxzgpyhaleuetcbwtwotfxmsedkci
///         publicCloudConnectorsResourceId: zrnabgyobuzozcbzvgu
///         publicCloudResourceName: mmhr
///       resourceGroupName: rgecsTaskDefinition
///       tags:
///         key6626: nytjqmvhitrnxlmkyycses
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
/// $ pulumi import azure-native:awsconnector:EcsTaskDefinition j /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ecsTaskDefinitions/{name}
/// ```
class EcsTaskDefinition extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<EcsTaskDefinitionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EcsTaskDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsTaskDefinition]. {@macro pulumi_awsconnector_ecs_task_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsTaskDefinition(
    String name, {
    EcsTaskDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:EcsTaskDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EcsTaskDefinitionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EcsTaskDefinitionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
