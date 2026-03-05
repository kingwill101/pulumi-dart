import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_args.dart';
import 'broker_diagnostics_response.dart';
import 'cardinality_response.dart';
import 'cert_manager_cert_options_response.dart';
import 'container_image_response.dart';
import 'disk_backed_message_buffer_settings_response.dart';
import 'extended_location_property_response.dart';
import 'node_tolerations_response.dart';
import 'system_data_response.dart';

/// MQ broker resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Broker_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var broker = new AzureNative.IoTOperationsMQ.Broker("broker", new()
///     {
///         AuthImage = new AzureNative.IoTOperationsMQ.Inputs.ContainerImageArgs
///         {
///             PullPolicy = "imfuzvqxgbdwliqnn",
///             PullSecrets = "klnqimxqsrdwhcqldjvdtsrs",
///             Repository = "m",
///             Tag = "jygfdiamhhm",
///         },
///         BrokerImage = new AzureNative.IoTOperationsMQ.Inputs.ContainerImageArgs
///         {
///             PullPolicy = "imfuzvqxgbdwliqnn",
///             PullSecrets = "klnqimxqsrdwhcqldjvdtsrs",
///             Repository = "m",
///             Tag = "jygfdiamhhm",
///         },
///         BrokerName = "29tAwt4A2-aH6nP",
///         BrokerNodeTolerations = new AzureNative.IoTOperationsMQ.Inputs.NodeTolerationsArgs
///         {
///             Effect = "eeswvciblqmmaeesjoflyvxqbz",
///             Key = "wbrstdwxgm",
///             Operator = "lbegegneekwnyodtzraarivtwhmzep",
///             Value = "sfafsjdcezdmkwibxeluukxgl",
///         },
///         Cardinality = new AzureNative.IoTOperationsMQ.Inputs.CardinalityArgs
///         {
///             BackendChain = new AzureNative.IoTOperationsMQ.Inputs.BackendChainArgs
///             {
///                 Partitions = 34721,
///                 RedundancyFactor = 468,
///                 TemporaryDiskTransferEnabled = true,
///                 TemporaryDiskTransferHighWatermarkPercent = 79,
///                 TemporaryDiskTransferLowWatermarkPercent = 94,
///                 TemporaryMaxBackendMemUsagePercent = 54,
///                 TemporaryResourceLimits = new AzureNative.IoTOperationsMQ.Inputs.TemporaryResourceLimitsConfigArgs
///                 {
///                     MaxInflightMessages = 33208,
///                     MaxInflightPatches = 3410,
///                     MaxInflightPatchesPerClient = 58933,
///                     MaxMessageExpirySecs = 2036532516,
///                     MaxQueuedMessages = 8083241696687839232,
///                     MaxQueuedQos0Messages = 6545343433569253376,
///                     MaxSessionExpirySecs = 2526293894,
///                 },
///                 Workers = 15754,
///             },
///             Frontend = new AzureNative.IoTOperationsMQ.Inputs.FrontendArgs
///             {
///                 Replicas = 38165,
///                 TemporaryResourceLimits = new AzureNative.IoTOperationsMQ.Inputs.TemporaryResourceLimitsConfigArgs
///                 {
///                     MaxInflightMessages = 33208,
///                     MaxInflightPatches = 3410,
///                     MaxInflightPatchesPerClient = 58933,
///                     MaxMessageExpirySecs = 2036532516,
///                     MaxQueuedMessages = 8083241696687839232,
///                     MaxQueuedQos0Messages = 6545343433569253376,
///                     MaxSessionExpirySecs = 2526293894,
///                 },
///                 Workers = 38,
///             },
///         },
///         Diagnostics = new AzureNative.IoTOperationsMQ.Inputs.BrokerDiagnosticsArgs
///         {
///             DiagnosticServiceEndpoint = "cdvelitwasofaaqhdb",
///             EnableMetrics = true,
///             EnableSelfCheck = true,
///             EnableSelfTracing = true,
///             EnableTracing = true,
///             LogFormat = "tcivnlakxcajynypbz",
///             LogLevel = "zdjh",
///             MaxCellMapLifetime = 997099872515057664,
///             MetricUpdateFrequencySeconds = 6156703238506293248,
///             ProbeImage = "uzizubdxsgcpjwly",
///             SelfCheckFrequencySeconds = 579622483050303872,
///             SelfCheckTimeoutSeconds = 7847246333600883712,
///             SelfTraceFrequencySeconds = 6527612490765174784,
///             SpanChannelCapacity = 5533451650716961792,
///         },
///         DiskBackedMessageBufferSettings = new AzureNative.IoTOperationsMQ.Inputs.DiskBackedMessageBufferSettingsArgs
///         {
///             EphemeralVolumeClaimSpec = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimSpecArgs
///             {
///                 AccessModes = new[]
///                 {
///                     "cly",
///                 },
///                 DataSource = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimDataSourceArgs
///                 {
///                     ApiGroup = "v",
///                     Kind = "pvzbnjebkoslzzucpaem",
///                     Name = "bgzdfwfpdrubbbnfwzyr",
///                 },
///                 DataSourceRef = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimDataSourceRefArgs
///                 {
///                     ApiGroup = "e",
///                     Kind = "hjbktqbtg",
///                     Name = "losjjcujomepwhztzptrobavolc",
///                 },
///                 Resources = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimResourceRequirementsArgs
///                 {
///                     Limits = null,
///                     Requests = null,
///                 },
///                 Selector = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimSpecSelectorArgs
///                 {
///                     MatchExpressions = new[]
///                     {
///                         new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimSpecSelectorMatchExpressionsArgs
///                         {
///                             Key = "d",
///                             Operator = "fcfvoarytcdbtccjervsmdis",
///                             Values = new[]
///                             {
///                                 "y",
///                             },
///                         },
///                     },
///                     MatchLabels = null,
///                 },
///                 StorageClassName = "etajfhrtgatxi",
///                 VolumeMode = "mipdeutsgidkzpxelbrqggjheplvmx",
///                 VolumeName = "dacuvlvuullautxjxwdctvzlmd",
///             },
///             MaxSize = "gnwxgqjypylz",
///             PersistentVolumeClaimSpec = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimSpecArgs
///             {
///                 AccessModes = new[]
///                 {
///                     "cly",
///                 },
///                 DataSource = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimDataSourceArgs
///                 {
///                     ApiGroup = "v",
///                     Kind = "pvzbnjebkoslzzucpaem",
///                     Name = "bgzdfwfpdrubbbnfwzyr",
///                 },
///                 DataSourceRef = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimDataSourceRefArgs
///                 {
///                     ApiGroup = "e",
///                     Kind = "hjbktqbtg",
///                     Name = "losjjcujomepwhztzptrobavolc",
///                 },
///                 Resources = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimResourceRequirementsArgs
///                 {
///                     Limits = null,
///                     Requests = null,
///                 },
///                 Selector = new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimSpecSelectorArgs
///                 {
///                     MatchExpressions = new[]
///                     {
///                         new AzureNative.IoTOperationsMQ.Inputs.VolumeClaimSpecSelectorMatchExpressionsArgs
///                         {
///                             Key = "d",
///                             Operator = "fcfvoarytcdbtccjervsmdis",
///                             Values = new[]
///                             {
///                                 "y",
///                             },
///                         },
///                     },
///                     MatchLabels = null,
///                 },
///                 StorageClassName = "etajfhrtgatxi",
///                 VolumeMode = "mipdeutsgidkzpxelbrqggjheplvmx",
///                 VolumeName = "dacuvlvuullautxjxwdctvzlmd",
///             },
///         },
///         EncryptInternalTraffic = true,
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         HealthManagerImage = new AzureNative.IoTOperationsMQ.Inputs.ContainerImageArgs
///         {
///             PullPolicy = "imfuzvqxgbdwliqnn",
///             PullSecrets = "klnqimxqsrdwhcqldjvdtsrs",
///             Repository = "m",
///             Tag = "jygfdiamhhm",
///         },
///         HealthManagerNodeTolerations = new AzureNative.IoTOperationsMQ.Inputs.NodeTolerationsArgs
///         {
///             Effect = "eeswvciblqmmaeesjoflyvxqbz",
///             Key = "wbrstdwxgm",
///             Operator = "lbegegneekwnyodtzraarivtwhmzep",
///             Value = "sfafsjdcezdmkwibxeluukxgl",
///         },
///         InternalCerts = new AzureNative.IoTOperationsMQ.Inputs.CertManagerCertOptionsArgs
///         {
///             Duration = "xjjmzq",
///             PrivateKey = new AzureNative.IoTOperationsMQ.Inputs.CertManagerPrivateKeyArgs
///             {
///                 Algorithm = "wwewfsddymjefuhxzqybwvay",
///                 RotationPolicy = "jxmpyvfneckopjiakjtous",
///                 Size = 63427,
///             },
///             RenewBefore = "zkajhllevrxkfmfyzasmbllvd",
///         },
///         Location = "ltzfwqzs",
///         MemoryProfile = AzureNative.IoTOperationsMQ.BrokerMemoryProfile.Tiny,
///         Mode = AzureNative.IoTOperationsMQ.RunMode.Auto,
///         MqName = "u229L1RZ5",
///         ResourceGroupName = "rgiotoperationsmq",
///         Tags = null,
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
/// 	iotoperationsmq "github.com/pulumi/pulumi-azure-native-sdk/iotoperationsmq/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperationsmq.NewBroker(ctx, "broker", &iotoperationsmq.BrokerArgs{
/// 			AuthImage: &iotoperationsmq.ContainerImageArgs{
/// 				PullPolicy:  pulumi.String("imfuzvqxgbdwliqnn"),
/// 				PullSecrets: pulumi.String("klnqimxqsrdwhcqldjvdtsrs"),
/// 				Repository:  pulumi.String("m"),
/// 				Tag:         pulumi.String("jygfdiamhhm"),
/// 			},
/// 			BrokerImage: &iotoperationsmq.ContainerImageArgs{
/// 				PullPolicy:  pulumi.String("imfuzvqxgbdwliqnn"),
/// 				PullSecrets: pulumi.String("klnqimxqsrdwhcqldjvdtsrs"),
/// 				Repository:  pulumi.String("m"),
/// 				Tag:         pulumi.String("jygfdiamhhm"),
/// 			},
/// 			BrokerName: pulumi.String("29tAwt4A2-aH6nP"),
/// 			BrokerNodeTolerations: &iotoperationsmq.NodeTolerationsArgs{
/// 				Effect:   pulumi.String("eeswvciblqmmaeesjoflyvxqbz"),
/// 				Key:      pulumi.String("wbrstdwxgm"),
/// 				Operator: pulumi.String("lbegegneekwnyodtzraarivtwhmzep"),
/// 				Value:    pulumi.String("sfafsjdcezdmkwibxeluukxgl"),
/// 			},
/// 			Cardinality: &iotoperationsmq.CardinalityArgs{
/// 				BackendChain: &iotoperationsmq.BackendChainArgs{
/// 					Partitions:                                pulumi.Int(34721),
/// 					RedundancyFactor:                          pulumi.Int(468),
/// 					TemporaryDiskTransferEnabled:              pulumi.Bool(true),
/// 					TemporaryDiskTransferHighWatermarkPercent: pulumi.Int(79),
/// 					TemporaryDiskTransferLowWatermarkPercent:  pulumi.Int(94),
/// 					TemporaryMaxBackendMemUsagePercent:        pulumi.Int(54),
/// 					TemporaryResourceLimits: &iotoperationsmq.TemporaryResourceLimitsConfigArgs{
/// 						MaxInflightMessages:         pulumi.Int(33208),
/// 						MaxInflightPatches:          pulumi.Int(3410),
/// 						MaxInflightPatchesPerClient: pulumi.Int(58933),
/// 						MaxMessageExpirySecs:        pulumi.Float64(2036532516),
/// 						MaxQueuedMessages:           pulumi.Float64(8083241696687839232),
/// 						MaxQueuedQos0Messages:       pulumi.Float64(6545343433569253376),
/// 						MaxSessionExpirySecs:        pulumi.Float64(2526293894),
/// 					},
/// 					Workers: pulumi.Int(15754),
/// 				},
/// 				Frontend: &iotoperationsmq.FrontendArgs{
/// 					Replicas: pulumi.Int(38165),
/// 					TemporaryResourceLimits: &iotoperationsmq.TemporaryResourceLimitsConfigArgs{
/// 						MaxInflightMessages:         pulumi.Int(33208),
/// 						MaxInflightPatches:          pulumi.Int(3410),
/// 						MaxInflightPatchesPerClient: pulumi.Int(58933),
/// 						MaxMessageExpirySecs:        pulumi.Float64(2036532516),
/// 						MaxQueuedMessages:           pulumi.Float64(8083241696687839232),
/// 						MaxQueuedQos0Messages:       pulumi.Float64(6545343433569253376),
/// 						MaxSessionExpirySecs:        pulumi.Float64(2526293894),
/// 					},
/// 					Workers: pulumi.Int(38),
/// 				},
/// 			},
/// 			Diagnostics: &iotoperationsmq.BrokerDiagnosticsArgs{
/// 				DiagnosticServiceEndpoint:    pulumi.String("cdvelitwasofaaqhdb"),
/// 				EnableMetrics:                pulumi.Bool(true),
/// 				EnableSelfCheck:              pulumi.Bool(true),
/// 				EnableSelfTracing:            pulumi.Bool(true),
/// 				EnableTracing:                pulumi.Bool(true),
/// 				LogFormat:                    pulumi.String("tcivnlakxcajynypbz"),
/// 				LogLevel:                     pulumi.String("zdjh"),
/// 				MaxCellMapLifetime:           pulumi.Float64(997099872515057664),
/// 				MetricUpdateFrequencySeconds: pulumi.Float64(6156703238506293248),
/// 				ProbeImage:                   pulumi.String("uzizubdxsgcpjwly"),
/// 				SelfCheckFrequencySeconds:    pulumi.Float64(579622483050303872),
/// 				SelfCheckTimeoutSeconds:      pulumi.Float64(7847246333600883712),
/// 				SelfTraceFrequencySeconds:    pulumi.Float64(6527612490765174784),
/// 				SpanChannelCapacity:          pulumi.Float64(5533451650716961792),
/// 			},
/// 			DiskBackedMessageBufferSettings: &iotoperationsmq.DiskBackedMessageBufferSettingsArgs{
/// 				EphemeralVolumeClaimSpec: &iotoperationsmq.VolumeClaimSpecArgs{
/// 					AccessModes: pulumi.StringArray{
/// 						pulumi.String("cly"),
/// 					},
/// 					DataSource: &iotoperationsmq.VolumeClaimDataSourceArgs{
/// 						ApiGroup: pulumi.String("v"),
/// 						Kind:     pulumi.String("pvzbnjebkoslzzucpaem"),
/// 						Name:     pulumi.String("bgzdfwfpdrubbbnfwzyr"),
/// 					},
/// 					DataSourceRef: &iotoperationsmq.VolumeClaimDataSourceRefArgs{
/// 						ApiGroup: pulumi.String("e"),
/// 						Kind:     pulumi.String("hjbktqbtg"),
/// 						Name:     pulumi.String("losjjcujomepwhztzptrobavolc"),
/// 					},
/// 					Resources: &iotoperationsmq.VolumeClaimResourceRequirementsArgs{
/// 						Limits:   pulumi.StringMap{},
/// 						Requests: pulumi.StringMap{},
/// 					},
/// 					Selector: &iotoperationsmq.VolumeClaimSpecSelectorArgs{
/// 						MatchExpressions: iotoperationsmq.VolumeClaimSpecSelectorMatchExpressionsArray{
/// 							&iotoperationsmq.VolumeClaimSpecSelectorMatchExpressionsArgs{
/// 								Key:      pulumi.String("d"),
/// 								Operator: pulumi.String("fcfvoarytcdbtccjervsmdis"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("y"),
/// 								},
/// 							},
/// 						},
/// 						MatchLabels: pulumi.StringMap{},
/// 					},
/// 					StorageClassName: pulumi.String("etajfhrtgatxi"),
/// 					VolumeMode:       pulumi.String("mipdeutsgidkzpxelbrqggjheplvmx"),
/// 					VolumeName:       pulumi.String("dacuvlvuullautxjxwdctvzlmd"),
/// 				},
/// 				MaxSize: pulumi.String("gnwxgqjypylz"),
/// 				PersistentVolumeClaimSpec: &iotoperationsmq.VolumeClaimSpecArgs{
/// 					AccessModes: pulumi.StringArray{
/// 						pulumi.String("cly"),
/// 					},
/// 					DataSource: &iotoperationsmq.VolumeClaimDataSourceArgs{
/// 						ApiGroup: pulumi.String("v"),
/// 						Kind:     pulumi.String("pvzbnjebkoslzzucpaem"),
/// 						Name:     pulumi.String("bgzdfwfpdrubbbnfwzyr"),
/// 					},
/// 					DataSourceRef: &iotoperationsmq.VolumeClaimDataSourceRefArgs{
/// 						ApiGroup: pulumi.String("e"),
/// 						Kind:     pulumi.String("hjbktqbtg"),
/// 						Name:     pulumi.String("losjjcujomepwhztzptrobavolc"),
/// 					},
/// 					Resources: &iotoperationsmq.VolumeClaimResourceRequirementsArgs{
/// 						Limits:   pulumi.StringMap{},
/// 						Requests: pulumi.StringMap{},
/// 					},
/// 					Selector: &iotoperationsmq.VolumeClaimSpecSelectorArgs{
/// 						MatchExpressions: iotoperationsmq.VolumeClaimSpecSelectorMatchExpressionsArray{
/// 							&iotoperationsmq.VolumeClaimSpecSelectorMatchExpressionsArgs{
/// 								Key:      pulumi.String("d"),
/// 								Operator: pulumi.String("fcfvoarytcdbtccjervsmdis"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("y"),
/// 								},
/// 							},
/// 						},
/// 						MatchLabels: pulumi.StringMap{},
/// 					},
/// 					StorageClassName: pulumi.String("etajfhrtgatxi"),
/// 					VolumeMode:       pulumi.String("mipdeutsgidkzpxelbrqggjheplvmx"),
/// 					VolumeName:       pulumi.String("dacuvlvuullautxjxwdctvzlmd"),
/// 				},
/// 			},
/// 			EncryptInternalTraffic: pulumi.Bool(true),
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			HealthManagerImage: &iotoperationsmq.ContainerImageArgs{
/// 				PullPolicy:  pulumi.String("imfuzvqxgbdwliqnn"),
/// 				PullSecrets: pulumi.String("klnqimxqsrdwhcqldjvdtsrs"),
/// 				Repository:  pulumi.String("m"),
/// 				Tag:         pulumi.String("jygfdiamhhm"),
/// 			},
/// 			HealthManagerNodeTolerations: &iotoperationsmq.NodeTolerationsArgs{
/// 				Effect:   pulumi.String("eeswvciblqmmaeesjoflyvxqbz"),
/// 				Key:      pulumi.String("wbrstdwxgm"),
/// 				Operator: pulumi.String("lbegegneekwnyodtzraarivtwhmzep"),
/// 				Value:    pulumi.String("sfafsjdcezdmkwibxeluukxgl"),
/// 			},
/// 			InternalCerts: &iotoperationsmq.CertManagerCertOptionsArgs{
/// 				Duration: pulumi.String("xjjmzq"),
/// 				PrivateKey: &iotoperationsmq.CertManagerPrivateKeyArgs{
/// 					Algorithm:      pulumi.String("wwewfsddymjefuhxzqybwvay"),
/// 					RotationPolicy: pulumi.String("jxmpyvfneckopjiakjtous"),
/// 					Size:           pulumi.Int(63427),
/// 				},
/// 				RenewBefore: pulumi.String("zkajhllevrxkfmfyzasmbllvd"),
/// 			},
/// 			Location:          pulumi.String("ltzfwqzs"),
/// 			MemoryProfile:     pulumi.String(iotoperationsmq.BrokerMemoryProfileTiny),
/// 			Mode:              pulumi.String(iotoperationsmq.RunModeAuto),
/// 			MqName:            pulumi.String("u229L1RZ5"),
/// 			ResourceGroupName: pulumi.String("rgiotoperationsmq"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.iotoperationsmq.Broker;
/// import com.pulumi.azurenative.iotoperationsmq.BrokerArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ContainerImageArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.NodeTolerationsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.CardinalityArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BackendChainArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.TemporaryResourceLimitsConfigArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.FrontendArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerDiagnosticsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.DiskBackedMessageBufferSettingsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.VolumeClaimSpecArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.VolumeClaimDataSourceArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.VolumeClaimDataSourceRefArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.VolumeClaimResourceRequirementsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.VolumeClaimSpecSelectorArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.CertManagerCertOptionsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.CertManagerPrivateKeyArgs;
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
///         var broker = new Broker("broker", BrokerArgs.builder()
///             .authImage(ContainerImageArgs.builder()
///                 .pullPolicy("imfuzvqxgbdwliqnn")
///                 .pullSecrets("klnqimxqsrdwhcqldjvdtsrs")
///                 .repository("m")
///                 .tag("jygfdiamhhm")
///                 .build())
///             .brokerImage(ContainerImageArgs.builder()
///                 .pullPolicy("imfuzvqxgbdwliqnn")
///                 .pullSecrets("klnqimxqsrdwhcqldjvdtsrs")
///                 .repository("m")
///                 .tag("jygfdiamhhm")
///                 .build())
///             .brokerName("29tAwt4A2-aH6nP")
///             .brokerNodeTolerations(NodeTolerationsArgs.builder()
///                 .effect("eeswvciblqmmaeesjoflyvxqbz")
///                 .key("wbrstdwxgm")
///                 .operator("lbegegneekwnyodtzraarivtwhmzep")
///                 .value("sfafsjdcezdmkwibxeluukxgl")
///                 .build())
///             .cardinality(CardinalityArgs.builder()
///                 .backendChain(BackendChainArgs.builder()
///                     .partitions(34721)
///                     .redundancyFactor(468)
///                     .temporaryDiskTransferEnabled(true)
///                     .temporaryDiskTransferHighWatermarkPercent(79)
///                     .temporaryDiskTransferLowWatermarkPercent(94)
///                     .temporaryMaxBackendMemUsagePercent(54)
///                     .temporaryResourceLimits(TemporaryResourceLimitsConfigArgs.builder()
///                         .maxInflightMessages(33208)
///                         .maxInflightPatches(3410)
///                         .maxInflightPatchesPerClient(58933)
///                         .maxMessageExpirySecs(2036532516.0)
///                         .maxQueuedMessages(8083241696687839232.0)
///                         .maxQueuedQos0Messages(6545343433569253376.0)
///                         .maxSessionExpirySecs(2526293894.0)
///                         .build())
///                     .workers(15754)
///                     .build())
///                 .frontend(FrontendArgs.builder()
///                     .replicas(38165)
///                     .temporaryResourceLimits(TemporaryResourceLimitsConfigArgs.builder()
///                         .maxInflightMessages(33208)
///                         .maxInflightPatches(3410)
///                         .maxInflightPatchesPerClient(58933)
///                         .maxMessageExpirySecs(2036532516.0)
///                         .maxQueuedMessages(8083241696687839232.0)
///                         .maxQueuedQos0Messages(6545343433569253376.0)
///                         .maxSessionExpirySecs(2526293894.0)
///                         .build())
///                     .workers(38)
///                     .build())
///                 .build())
///             .diagnostics(BrokerDiagnosticsArgs.builder()
///                 .diagnosticServiceEndpoint("cdvelitwasofaaqhdb")
///                 .enableMetrics(true)
///                 .enableSelfCheck(true)
///                 .enableSelfTracing(true)
///                 .enableTracing(true)
///                 .logFormat("tcivnlakxcajynypbz")
///                 .logLevel("zdjh")
///                 .maxCellMapLifetime(997099872515057664.0)
///                 .metricUpdateFrequencySeconds(6156703238506293248.0)
///                 .probeImage("uzizubdxsgcpjwly")
///                 .selfCheckFrequencySeconds(579622483050303872.0)
///                 .selfCheckTimeoutSeconds(7847246333600883712.0)
///                 .selfTraceFrequencySeconds(6527612490765174784.0)
///                 .spanChannelCapacity(5533451650716961792.0)
///                 .build())
///             .diskBackedMessageBufferSettings(DiskBackedMessageBufferSettingsArgs.builder()
///                 .ephemeralVolumeClaimSpec(VolumeClaimSpecArgs.builder()
///                     .accessModes("cly")
///                     .dataSource(VolumeClaimDataSourceArgs.builder()
///                         .apiGroup("v")
///                         .kind("pvzbnjebkoslzzucpaem")
///                         .name("bgzdfwfpdrubbbnfwzyr")
///                         .build())
///                     .dataSourceRef(VolumeClaimDataSourceRefArgs.builder()
///                         .apiGroup("e")
///                         .kind("hjbktqbtg")
///                         .name("losjjcujomepwhztzptrobavolc")
///                         .build())
///                     .resources(VolumeClaimResourceRequirementsArgs.builder()
///                         .limits(Map.ofEntries(
///                         ))
///                         .requests(Map.ofEntries(
///                         ))
///                         .build())
///                     .selector(VolumeClaimSpecSelectorArgs.builder()
///                         .matchExpressions(VolumeClaimSpecSelectorMatchExpressionsArgs.builder()
///                             .key("d")
///                             .operator("fcfvoarytcdbtccjervsmdis")
///                             .values("y")
///                             .build())
///                         .matchLabels(Map.ofEntries(
///                         ))
///                         .build())
///                     .storageClassName("etajfhrtgatxi")
///                     .volumeMode("mipdeutsgidkzpxelbrqggjheplvmx")
///                     .volumeName("dacuvlvuullautxjxwdctvzlmd")
///                     .build())
///                 .maxSize("gnwxgqjypylz")
///                 .persistentVolumeClaimSpec(VolumeClaimSpecArgs.builder()
///                     .accessModes("cly")
///                     .dataSource(VolumeClaimDataSourceArgs.builder()
///                         .apiGroup("v")
///                         .kind("pvzbnjebkoslzzucpaem")
///                         .name("bgzdfwfpdrubbbnfwzyr")
///                         .build())
///                     .dataSourceRef(VolumeClaimDataSourceRefArgs.builder()
///                         .apiGroup("e")
///                         .kind("hjbktqbtg")
///                         .name("losjjcujomepwhztzptrobavolc")
///                         .build())
///                     .resources(VolumeClaimResourceRequirementsArgs.builder()
///                         .limits(Map.ofEntries(
///                         ))
///                         .requests(Map.ofEntries(
///                         ))
///                         .build())
///                     .selector(VolumeClaimSpecSelectorArgs.builder()
///                         .matchExpressions(VolumeClaimSpecSelectorMatchExpressionsArgs.builder()
///                             .key("d")
///                             .operator("fcfvoarytcdbtccjervsmdis")
///                             .values("y")
///                             .build())
///                         .matchLabels(Map.ofEntries(
///                         ))
///                         .build())
///                     .storageClassName("etajfhrtgatxi")
///                     .volumeMode("mipdeutsgidkzpxelbrqggjheplvmx")
///                     .volumeName("dacuvlvuullautxjxwdctvzlmd")
///                     .build())
///                 .build())
///             .encryptInternalTraffic(true)
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .healthManagerImage(ContainerImageArgs.builder()
///                 .pullPolicy("imfuzvqxgbdwliqnn")
///                 .pullSecrets("klnqimxqsrdwhcqldjvdtsrs")
///                 .repository("m")
///                 .tag("jygfdiamhhm")
///                 .build())
///             .healthManagerNodeTolerations(NodeTolerationsArgs.builder()
///                 .effect("eeswvciblqmmaeesjoflyvxqbz")
///                 .key("wbrstdwxgm")
///                 .operator("lbegegneekwnyodtzraarivtwhmzep")
///                 .value("sfafsjdcezdmkwibxeluukxgl")
///                 .build())
///             .internalCerts(CertManagerCertOptionsArgs.builder()
///                 .duration("xjjmzq")
///                 .privateKey(CertManagerPrivateKeyArgs.builder()
///                     .algorithm("wwewfsddymjefuhxzqybwvay")
///                     .rotationPolicy("jxmpyvfneckopjiakjtous")
///                     .size(63427)
///                     .build())
///                 .renewBefore("zkajhllevrxkfmfyzasmbllvd")
///                 .build())
///             .location("ltzfwqzs")
///             .memoryProfile("tiny")
///             .mode("auto")
///             .mqName("u229L1RZ5")
///             .resourceGroupName("rgiotoperationsmq")
///             .tags(Map.ofEntries(
///             ))
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
/// const broker = new azure_native.iotoperationsmq.Broker("broker", {
///     authImage: {
///         pullPolicy: "imfuzvqxgbdwliqnn",
///         pullSecrets: "klnqimxqsrdwhcqldjvdtsrs",
///         repository: "m",
///         tag: "jygfdiamhhm",
///     },
///     brokerImage: {
///         pullPolicy: "imfuzvqxgbdwliqnn",
///         pullSecrets: "klnqimxqsrdwhcqldjvdtsrs",
///         repository: "m",
///         tag: "jygfdiamhhm",
///     },
///     brokerName: "29tAwt4A2-aH6nP",
///     brokerNodeTolerations: {
///         effect: "eeswvciblqmmaeesjoflyvxqbz",
///         key: "wbrstdwxgm",
///         operator: "lbegegneekwnyodtzraarivtwhmzep",
///         value: "sfafsjdcezdmkwibxeluukxgl",
///     },
///     cardinality: {
///         backendChain: {
///             partitions: 34721,
///             redundancyFactor: 468,
///             temporaryDiskTransferEnabled: true,
///             temporaryDiskTransferHighWatermarkPercent: 79,
///             temporaryDiskTransferLowWatermarkPercent: 94,
///             temporaryMaxBackendMemUsagePercent: 54,
///             temporaryResourceLimits: {
///                 maxInflightMessages: 33208,
///                 maxInflightPatches: 3410,
///                 maxInflightPatchesPerClient: 58933,
///                 maxMessageExpirySecs: 2036532516,
///                 maxQueuedMessages: 8083241696687839232,
///                 maxQueuedQos0Messages: 6545343433569253376,
///                 maxSessionExpirySecs: 2526293894,
///             },
///             workers: 15754,
///         },
///         frontend: {
///             replicas: 38165,
///             temporaryResourceLimits: {
///                 maxInflightMessages: 33208,
///                 maxInflightPatches: 3410,
///                 maxInflightPatchesPerClient: 58933,
///                 maxMessageExpirySecs: 2036532516,
///                 maxQueuedMessages: 8083241696687839232,
///                 maxQueuedQos0Messages: 6545343433569253376,
///                 maxSessionExpirySecs: 2526293894,
///             },
///             workers: 38,
///         },
///     },
///     diagnostics: {
///         diagnosticServiceEndpoint: "cdvelitwasofaaqhdb",
///         enableMetrics: true,
///         enableSelfCheck: true,
///         enableSelfTracing: true,
///         enableTracing: true,
///         logFormat: "tcivnlakxcajynypbz",
///         logLevel: "zdjh",
///         maxCellMapLifetime: 997099872515057664,
///         metricUpdateFrequencySeconds: 6156703238506293248,
///         probeImage: "uzizubdxsgcpjwly",
///         selfCheckFrequencySeconds: 579622483050303872,
///         selfCheckTimeoutSeconds: 7847246333600883712,
///         selfTraceFrequencySeconds: 6527612490765174784,
///         spanChannelCapacity: 5533451650716961792,
///     },
///     diskBackedMessageBufferSettings: {
///         ephemeralVolumeClaimSpec: {
///             accessModes: ["cly"],
///             dataSource: {
///                 apiGroup: "v",
///                 kind: "pvzbnjebkoslzzucpaem",
///                 name: "bgzdfwfpdrubbbnfwzyr",
///             },
///             dataSourceRef: {
///                 apiGroup: "e",
///                 kind: "hjbktqbtg",
///                 name: "losjjcujomepwhztzptrobavolc",
///             },
///             resources: {
///                 limits: {},
///                 requests: {},
///             },
///             selector: {
///                 matchExpressions: [{
///                     key: "d",
///                     operator: "fcfvoarytcdbtccjervsmdis",
///                     values: ["y"],
///                 }],
///                 matchLabels: {},
///             },
///             storageClassName: "etajfhrtgatxi",
///             volumeMode: "mipdeutsgidkzpxelbrqggjheplvmx",
///             volumeName: "dacuvlvuullautxjxwdctvzlmd",
///         },
///         maxSize: "gnwxgqjypylz",
///         persistentVolumeClaimSpec: {
///             accessModes: ["cly"],
///             dataSource: {
///                 apiGroup: "v",
///                 kind: "pvzbnjebkoslzzucpaem",
///                 name: "bgzdfwfpdrubbbnfwzyr",
///             },
///             dataSourceRef: {
///                 apiGroup: "e",
///                 kind: "hjbktqbtg",
///                 name: "losjjcujomepwhztzptrobavolc",
///             },
///             resources: {
///                 limits: {},
///                 requests: {},
///             },
///             selector: {
///                 matchExpressions: [{
///                     key: "d",
///                     operator: "fcfvoarytcdbtccjervsmdis",
///                     values: ["y"],
///                 }],
///                 matchLabels: {},
///             },
///             storageClassName: "etajfhrtgatxi",
///             volumeMode: "mipdeutsgidkzpxelbrqggjheplvmx",
///             volumeName: "dacuvlvuullautxjxwdctvzlmd",
///         },
///     },
///     encryptInternalTraffic: true,
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     healthManagerImage: {
///         pullPolicy: "imfuzvqxgbdwliqnn",
///         pullSecrets: "klnqimxqsrdwhcqldjvdtsrs",
///         repository: "m",
///         tag: "jygfdiamhhm",
///     },
///     healthManagerNodeTolerations: {
///         effect: "eeswvciblqmmaeesjoflyvxqbz",
///         key: "wbrstdwxgm",
///         operator: "lbegegneekwnyodtzraarivtwhmzep",
///         value: "sfafsjdcezdmkwibxeluukxgl",
///     },
///     internalCerts: {
///         duration: "xjjmzq",
///         privateKey: {
///             algorithm: "wwewfsddymjefuhxzqybwvay",
///             rotationPolicy: "jxmpyvfneckopjiakjtous",
///             size: 63427,
///         },
///         renewBefore: "zkajhllevrxkfmfyzasmbllvd",
///     },
///     location: "ltzfwqzs",
///     memoryProfile: azure_native.iotoperationsmq.BrokerMemoryProfile.Tiny,
///     mode: azure_native.iotoperationsmq.RunMode.Auto,
///     mqName: "u229L1RZ5",
///     resourceGroupName: "rgiotoperationsmq",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// broker = azure_native.iotoperationsmq.Broker("broker",
///     auth_image={
///         "pull_policy": "imfuzvqxgbdwliqnn",
///         "pull_secrets": "klnqimxqsrdwhcqldjvdtsrs",
///         "repository": "m",
///         "tag": "jygfdiamhhm",
///     },
///     broker_image={
///         "pull_policy": "imfuzvqxgbdwliqnn",
///         "pull_secrets": "klnqimxqsrdwhcqldjvdtsrs",
///         "repository": "m",
///         "tag": "jygfdiamhhm",
///     },
///     broker_name="29tAwt4A2-aH6nP",
///     broker_node_tolerations={
///         "effect": "eeswvciblqmmaeesjoflyvxqbz",
///         "key": "wbrstdwxgm",
///         "operator": "lbegegneekwnyodtzraarivtwhmzep",
///         "value": "sfafsjdcezdmkwibxeluukxgl",
///     },
///     cardinality={
///         "backend_chain": {
///             "partitions": 34721,
///             "redundancy_factor": 468,
///             "temporary_disk_transfer_enabled": True,
///             "temporary_disk_transfer_high_watermark_percent": 79,
///             "temporary_disk_transfer_low_watermark_percent": 94,
///             "temporary_max_backend_mem_usage_percent": 54,
///             "temporary_resource_limits": {
///                 "max_inflight_messages": 33208,
///                 "max_inflight_patches": 3410,
///                 "max_inflight_patches_per_client": 58933,
///                 "max_message_expiry_secs": 2036532516,
///                 "max_queued_messages": 8083241696687839232,
///                 "max_queued_qos0_messages": 6545343433569253376,
///                 "max_session_expiry_secs": 2526293894,
///             },
///             "workers": 15754,
///         },
///         "frontend": {
///             "replicas": 38165,
///             "temporary_resource_limits": {
///                 "max_inflight_messages": 33208,
///                 "max_inflight_patches": 3410,
///                 "max_inflight_patches_per_client": 58933,
///                 "max_message_expiry_secs": 2036532516,
///                 "max_queued_messages": 8083241696687839232,
///                 "max_queued_qos0_messages": 6545343433569253376,
///                 "max_session_expiry_secs": 2526293894,
///             },
///             "workers": 38,
///         },
///     },
///     diagnostics={
///         "diagnostic_service_endpoint": "cdvelitwasofaaqhdb",
///         "enable_metrics": True,
///         "enable_self_check": True,
///         "enable_self_tracing": True,
///         "enable_tracing": True,
///         "log_format": "tcivnlakxcajynypbz",
///         "log_level": "zdjh",
///         "max_cell_map_lifetime": 997099872515057664,
///         "metric_update_frequency_seconds": 6156703238506293248,
///         "probe_image": "uzizubdxsgcpjwly",
///         "self_check_frequency_seconds": 579622483050303872,
///         "self_check_timeout_seconds": 7847246333600883712,
///         "self_trace_frequency_seconds": 6527612490765174784,
///         "span_channel_capacity": 5533451650716961792,
///     },
///     disk_backed_message_buffer_settings={
///         "ephemeral_volume_claim_spec": {
///             "access_modes": ["cly"],
///             "data_source": {
///                 "api_group": "v",
///                 "kind": "pvzbnjebkoslzzucpaem",
///                 "name": "bgzdfwfpdrubbbnfwzyr",
///             },
///             "data_source_ref": {
///                 "api_group": "e",
///                 "kind": "hjbktqbtg",
///                 "name": "losjjcujomepwhztzptrobavolc",
///             },
///             "resources": {
///                 "limits": {},
///                 "requests": {},
///             },
///             "selector": {
///                 "match_expressions": [{
///                     "key": "d",
///                     "operator": "fcfvoarytcdbtccjervsmdis",
///                     "values": ["y"],
///                 }],
///                 "match_labels": {},
///             },
///             "storage_class_name": "etajfhrtgatxi",
///             "volume_mode": "mipdeutsgidkzpxelbrqggjheplvmx",
///             "volume_name": "dacuvlvuullautxjxwdctvzlmd",
///         },
///         "max_size": "gnwxgqjypylz",
///         "persistent_volume_claim_spec": {
///             "access_modes": ["cly"],
///             "data_source": {
///                 "api_group": "v",
///                 "kind": "pvzbnjebkoslzzucpaem",
///                 "name": "bgzdfwfpdrubbbnfwzyr",
///             },
///             "data_source_ref": {
///                 "api_group": "e",
///                 "kind": "hjbktqbtg",
///                 "name": "losjjcujomepwhztzptrobavolc",
///             },
///             "resources": {
///                 "limits": {},
///                 "requests": {},
///             },
///             "selector": {
///                 "match_expressions": [{
///                     "key": "d",
///                     "operator": "fcfvoarytcdbtccjervsmdis",
///                     "values": ["y"],
///                 }],
///                 "match_labels": {},
///             },
///             "storage_class_name": "etajfhrtgatxi",
///             "volume_mode": "mipdeutsgidkzpxelbrqggjheplvmx",
///             "volume_name": "dacuvlvuullautxjxwdctvzlmd",
///         },
///     },
///     encrypt_internal_traffic=True,
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     health_manager_image={
///         "pull_policy": "imfuzvqxgbdwliqnn",
///         "pull_secrets": "klnqimxqsrdwhcqldjvdtsrs",
///         "repository": "m",
///         "tag": "jygfdiamhhm",
///     },
///     health_manager_node_tolerations={
///         "effect": "eeswvciblqmmaeesjoflyvxqbz",
///         "key": "wbrstdwxgm",
///         "operator": "lbegegneekwnyodtzraarivtwhmzep",
///         "value": "sfafsjdcezdmkwibxeluukxgl",
///     },
///     internal_certs={
///         "duration": "xjjmzq",
///         "private_key": {
///             "algorithm": "wwewfsddymjefuhxzqybwvay",
///             "rotation_policy": "jxmpyvfneckopjiakjtous",
///             "size": 63427,
///         },
///         "renew_before": "zkajhllevrxkfmfyzasmbllvd",
///     },
///     location="ltzfwqzs",
///     memory_profile=azure_native.iotoperationsmq.BrokerMemoryProfile.TINY,
///     mode=azure_native.iotoperationsmq.RunMode.AUTO,
///     mq_name="u229L1RZ5",
///     resource_group_name="rgiotoperationsmq",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   broker:
///     type: azure-native:iotoperationsmq:Broker
///     properties:
///       authImage:
///         pullPolicy: imfuzvqxgbdwliqnn
///         pullSecrets: klnqimxqsrdwhcqldjvdtsrs
///         repository: m
///         tag: jygfdiamhhm
///       brokerImage:
///         pullPolicy: imfuzvqxgbdwliqnn
///         pullSecrets: klnqimxqsrdwhcqldjvdtsrs
///         repository: m
///         tag: jygfdiamhhm
///       brokerName: 29tAwt4A2-aH6nP
///       brokerNodeTolerations:
///         effect: eeswvciblqmmaeesjoflyvxqbz
///         key: wbrstdwxgm
///         operator: lbegegneekwnyodtzraarivtwhmzep
///         value: sfafsjdcezdmkwibxeluukxgl
///       cardinality:
///         backendChain:
///           partitions: 34721
///           redundancyFactor: 468
///           temporaryDiskTransferEnabled: true
///           temporaryDiskTransferHighWatermarkPercent: 79
///           temporaryDiskTransferLowWatermarkPercent: 94
///           temporaryMaxBackendMemUsagePercent: 54
///           temporaryResourceLimits:
///             maxInflightMessages: 33208
///             maxInflightPatches: 3410
///             maxInflightPatchesPerClient: 58933
///             maxMessageExpirySecs: 2.036532516e+09
///             maxQueuedMessages: 8.083241696687839e+18
///             maxQueuedQos0Messages: 6.545343433569253e+18
///             maxSessionExpirySecs: 2.526293894e+09
///           workers: 15754
///         frontend:
///           replicas: 38165
///           temporaryResourceLimits:
///             maxInflightMessages: 33208
///             maxInflightPatches: 3410
///             maxInflightPatchesPerClient: 58933
///             maxMessageExpirySecs: 2.036532516e+09
///             maxQueuedMessages: 8.083241696687839e+18
///             maxQueuedQos0Messages: 6.545343433569253e+18
///             maxSessionExpirySecs: 2.526293894e+09
///           workers: 38
///       diagnostics:
///         diagnosticServiceEndpoint: cdvelitwasofaaqhdb
///         enableMetrics: true
///         enableSelfCheck: true
///         enableSelfTracing: true
///         enableTracing: true
///         logFormat: tcivnlakxcajynypbz
///         logLevel: zdjh
///         maxCellMapLifetime: 9.970998725150577e+17
///         metricUpdateFrequencySeconds: 6.156703238506293e+18
///         probeImage: uzizubdxsgcpjwly
///         selfCheckFrequencySeconds: 5.796224830503039e+17
///         selfCheckTimeoutSeconds: 7.847246333600884e+18
///         selfTraceFrequencySeconds: 6.527612490765175e+18
///         spanChannelCapacity: 5.533451650716962e+18
///       diskBackedMessageBufferSettings:
///         ephemeralVolumeClaimSpec:
///           accessModes:
///             - cly
///           dataSource:
///             apiGroup: v
///             kind: pvzbnjebkoslzzucpaem
///             name: bgzdfwfpdrubbbnfwzyr
///           dataSourceRef:
///             apiGroup: e
///             kind: hjbktqbtg
///             name: losjjcujomepwhztzptrobavolc
///           resources:
///             limits: {}
///             requests: {}
///           selector:
///             matchExpressions:
///               - key: d
///                 operator: fcfvoarytcdbtccjervsmdis
///                 values:
///                   - y
///             matchLabels: {}
///           storageClassName: etajfhrtgatxi
///           volumeMode: mipdeutsgidkzpxelbrqggjheplvmx
///           volumeName: dacuvlvuullautxjxwdctvzlmd
///         maxSize: gnwxgqjypylz
///         persistentVolumeClaimSpec:
///           accessModes:
///             - cly
///           dataSource:
///             apiGroup: v
///             kind: pvzbnjebkoslzzucpaem
///             name: bgzdfwfpdrubbbnfwzyr
///           dataSourceRef:
///             apiGroup: e
///             kind: hjbktqbtg
///             name: losjjcujomepwhztzptrobavolc
///           resources:
///             limits: {}
///             requests: {}
///           selector:
///             matchExpressions:
///               - key: d
///                 operator: fcfvoarytcdbtccjervsmdis
///                 values:
///                   - y
///             matchLabels: {}
///           storageClassName: etajfhrtgatxi
///           volumeMode: mipdeutsgidkzpxelbrqggjheplvmx
///           volumeName: dacuvlvuullautxjxwdctvzlmd
///       encryptInternalTraffic: true
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       healthManagerImage:
///         pullPolicy: imfuzvqxgbdwliqnn
///         pullSecrets: klnqimxqsrdwhcqldjvdtsrs
///         repository: m
///         tag: jygfdiamhhm
///       healthManagerNodeTolerations:
///         effect: eeswvciblqmmaeesjoflyvxqbz
///         key: wbrstdwxgm
///         operator: lbegegneekwnyodtzraarivtwhmzep
///         value: sfafsjdcezdmkwibxeluukxgl
///       internalCerts:
///         duration: xjjmzq
///         privateKey:
///           algorithm: wwewfsddymjefuhxzqybwvay
///           rotationPolicy: jxmpyvfneckopjiakjtous
///           size: 63427
///         renewBefore: zkajhllevrxkfmfyzasmbllvd
///       location: ltzfwqzs
///       memoryProfile: tiny
///       mode: auto
///       mqName: u229L1RZ5
///       resourceGroupName: rgiotoperationsmq
///       tags: {}
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
/// $ pulumi import azure-native:iotoperationsmq:Broker blyxqmvmwlzftkvi /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/broker/{brokerName}
/// ```
class Broker extends pulumi.CustomResource {
  /// The details of Authentication Docker Image.
  late final pulumi.Output<ContainerImageResponse> authImage;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The details of Broker Docker Image.
  late final pulumi.Output<ContainerImageResponse> brokerImage;

  /// The details of Node Tolerations for Broker Pods.
  late final pulumi.Output<NodeTolerationsResponse?> brokerNodeTolerations;

  /// The cardinality details of the broker.
  late final pulumi.Output<CardinalityResponse?> cardinality;

  /// The diagnostic details of the broker deployment.
  late final pulumi.Output<BrokerDiagnosticsResponse?> diagnostics;

  /// The settings of the disk-backed message buffer.
  late final pulumi.Output<DiskBackedMessageBufferSettingsResponse?>
  diskBackedMessageBufferSettings;

  /// The setting to enable or disable encryption of internal Traffic.
  late final pulumi.Output<bool?> encryptInternalTraffic;

  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;

  /// The details of Health Manager Docker Image.
  late final pulumi.Output<ContainerImageResponse> healthManagerImage;

  /// The details of Node Tolerations for Health Manager Pods.
  late final pulumi.Output<NodeTolerationsResponse?>
  healthManagerNodeTolerations;

  /// Details of the internal CA cert that will be used to secure communication between pods.
  late final pulumi.Output<CertManagerCertOptionsResponse?> internalCerts;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Memory profile of broker.
  late final pulumi.Output<String?> memoryProfile;

  /// The Running Mode of the Broker Deployment.
  late final pulumi.Output<String> mode;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Broker].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Broker]. {@macro pulumi_iotoperationsmq_broker_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Broker(String name, {BrokerArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:iotoperationsmq:Broker',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    authImage = registerOutput<ContainerImageResponse>(
      'authImage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContainerImageResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    brokerImage = registerOutput<ContainerImageResponse>(
      'brokerImage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContainerImageResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    brokerNodeTolerations = registerOutput<NodeTolerationsResponse?>(
      'brokerNodeTolerations',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NodeTolerationsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    cardinality = registerOutput<CardinalityResponse?>(
      'cardinality',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CardinalityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    diagnostics = registerOutput<BrokerDiagnosticsResponse?>(
      'diagnostics',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BrokerDiagnosticsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    diskBackedMessageBufferSettings =
        registerOutput<DiskBackedMessageBufferSettingsResponse?>(
          'diskBackedMessageBufferSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DiskBackedMessageBufferSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    encryptInternalTraffic = registerOutput<bool?>('encryptInternalTraffic');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationPropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    healthManagerImage = registerOutput<ContainerImageResponse>(
      'healthManagerImage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContainerImageResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    healthManagerNodeTolerations = registerOutput<NodeTolerationsResponse?>(
      'healthManagerNodeTolerations',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NodeTolerationsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    internalCerts = registerOutput<CertManagerCertOptionsResponse?>(
      'internalCerts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CertManagerCertOptionsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    memoryProfile = registerOutput<String?>('memoryProfile');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
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
