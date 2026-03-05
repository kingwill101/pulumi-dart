import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_args.dart';
import 'broker_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Instance broker resource
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2024-07-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var broker = new AzureNative.IoTOperations.Broker("broker", new()
///     {
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerPropertiesArgs
///         {
///             Advanced = new AzureNative.IoTOperations.Inputs.AdvancedSettingsArgs
///             {
///                 Clients = new AzureNative.IoTOperations.Inputs.ClientConfigArgs
///                 {
///                     MaxKeepAliveSeconds = 3744,
///                     MaxMessageExpirySeconds = 3263,
///                     MaxPacketSizeBytes = 3029,
///                     MaxReceiveMaximum = 2365,
///                     MaxSessionExpirySeconds = 3859,
///                     SubscriberQueueLimit = new AzureNative.IoTOperations.Inputs.SubscriberQueueLimitArgs
///                     {
///                         Length = 6,
///                         Strategy = AzureNative.IoTOperations.SubscriberMessageDropStrategy.None,
///                     },
///                 },
///                 EncryptInternalTraffic = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 InternalCerts = new AzureNative.IoTOperations.Inputs.CertManagerCertOptionsArgs
///                 {
///                     Duration = "bchrc",
///                     PrivateKey = new AzureNative.IoTOperations.Inputs.CertManagerPrivateKeyArgs
///                     {
///                         Algorithm = AzureNative.IoTOperations.PrivateKeyAlgorithm.Ec256,
///                         RotationPolicy = AzureNative.IoTOperations.PrivateKeyRotationPolicy.Always,
///                     },
///                     RenewBefore = "xkafmpgjfifkwwrhkswtopdnne",
///                 },
///             },
///             Cardinality = new AzureNative.IoTOperations.Inputs.CardinalityArgs
///             {
///                 BackendChain = new AzureNative.IoTOperations.Inputs.BackendChainArgs
///                 {
///                     Partitions = 11,
///                     RedundancyFactor = 5,
///                     Workers = 15,
///                 },
///                 Frontend = new AzureNative.IoTOperations.Inputs.FrontendArgs
///                 {
///                     Replicas = 2,
///                     Workers = 6,
///                 },
///             },
///             Diagnostics = new AzureNative.IoTOperations.Inputs.BrokerDiagnosticsArgs
///             {
///                 Logs = new AzureNative.IoTOperations.Inputs.DiagnosticsLogsArgs
///                 {
///                     Level = "rnmwokumdmebpmfxxxzvvjfdywotav",
///                 },
///                 Metrics = new AzureNative.IoTOperations.Inputs.MetricsArgs
///                 {
///                     PrometheusPort = 7581,
///                 },
///                 SelfCheck = new AzureNative.IoTOperations.Inputs.SelfCheckArgs
///                 {
///                     IntervalSeconds = 158,
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                     TimeoutSeconds = 14,
///                 },
///                 Traces = new AzureNative.IoTOperations.Inputs.TracesArgs
///                 {
///                     CacheSizeMegabytes = 28,
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                     SelfTracing = new AzureNative.IoTOperations.Inputs.SelfTracingArgs
///                     {
///                         IntervalSeconds = 22,
///                         Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                     },
///                     SpanChannelCapacity = 1000,
///                 },
///             },
///             DiskBackedMessageBuffer = new AzureNative.IoTOperations.Inputs.DiskBackedMessageBufferArgs
///             {
///                 EphemeralVolumeClaimSpec = new AzureNative.IoTOperations.Inputs.VolumeClaimSpecArgs
///                 {
///                     AccessModes = new[]
///                     {
///                         "nuluhigrbb",
///                     },
///                     DataSource = new AzureNative.IoTOperations.Inputs.LocalKubernetesReferenceArgs
///                     {
///                         ApiGroup = "npqapyksvvpkohujx",
///                         Kind = "wazgyb",
///                         Name = "cwhsgxxcxsyppoefm",
///                     },
///                     DataSourceRef = new AzureNative.IoTOperations.Inputs.KubernetesReferenceArgs
///                     {
///                         ApiGroup = "mnfnykznjjsoqpfsgdqioupt",
///                         Kind = "odynqzekfzsnawrctaxg",
///                         Name = "envszivbbmixbyddzg",
///                         Namespace = "etcfzvxqd",
///                     },
///                     Resources = new AzureNative.IoTOperations.Inputs.VolumeClaimResourceRequirementsArgs
///                     {
///                         Limits =
///                         {
///                             { "key2719", "hmphcrgctu" },
///                         },
///                         Requests =
///                         {
///                             { "key2909", "txocprnyrsgvhfrg" },
///                         },
///                     },
///                     Selector = new AzureNative.IoTOperations.Inputs.VolumeClaimSpecSelectorArgs
///                     {
///                         MatchExpressions = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.VolumeClaimSpecSelectorMatchExpressionsArgs
///                             {
///                                 Key = "e",
///                                 Operator = AzureNative.IoTOperations.OperatorValues.In,
///                                 Values = new[]
///                                 {
///                                     "slmpajlywqvuyknipgztsonqyybt",
///                                 },
///                             },
///                         },
///                         MatchLabels =
///                         {
///                             { "key6673", "wlngfalznwxnurzpgxomcxhbqefpr" },
///                         },
///                     },
///                     StorageClassName = "sseyhrjptkhrqvpdpjmornkqvon",
///                     VolumeMode = "rxvpksjuuugqnqzeiprocknbn",
///                     VolumeName = "c",
///                 },
///                 MaxSize = "500M",
///                 PersistentVolumeClaimSpec = new AzureNative.IoTOperations.Inputs.VolumeClaimSpecArgs
///                 {
///                     AccessModes = new[]
///                     {
///                         "nuluhigrbb",
///                     },
///                     DataSource = new AzureNative.IoTOperations.Inputs.LocalKubernetesReferenceArgs
///                     {
///                         ApiGroup = "npqapyksvvpkohujx",
///                         Kind = "wazgyb",
///                         Name = "cwhsgxxcxsyppoefm",
///                     },
///                     DataSourceRef = new AzureNative.IoTOperations.Inputs.KubernetesReferenceArgs
///                     {
///                         ApiGroup = "mnfnykznjjsoqpfsgdqioupt",
///                         Kind = "odynqzekfzsnawrctaxg",
///                         Name = "envszivbbmixbyddzg",
///                         Namespace = "etcfzvxqd",
///                     },
///                     Resources = new AzureNative.IoTOperations.Inputs.VolumeClaimResourceRequirementsArgs
///                     {
///                         Limits =
///                         {
///                             { "key2719", "hmphcrgctu" },
///                         },
///                         Requests =
///                         {
///                             { "key2909", "txocprnyrsgvhfrg" },
///                         },
///                     },
///                     Selector = new AzureNative.IoTOperations.Inputs.VolumeClaimSpecSelectorArgs
///                     {
///                         MatchExpressions = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.VolumeClaimSpecSelectorMatchExpressionsArgs
///                             {
///                                 Key = "e",
///                                 Operator = AzureNative.IoTOperations.OperatorValues.In,
///                                 Values = new[]
///                                 {
///                                     "slmpajlywqvuyknipgztsonqyybt",
///                                 },
///                             },
///                         },
///                         MatchLabels =
///                         {
///                             { "key6673", "wlngfalznwxnurzpgxomcxhbqefpr" },
///                         },
///                     },
///                     StorageClassName = "sseyhrjptkhrqvpdpjmornkqvon",
///                     VolumeMode = "rxvpksjuuugqnqzeiprocknbn",
///                     VolumeName = "c",
///                 },
///             },
///             GenerateResourceLimits = new AzureNative.IoTOperations.Inputs.GenerateResourceLimitsArgs
///             {
///                 Cpu = AzureNative.IoTOperations.OperationalMode.Enabled,
///             },
///             MemoryProfile = AzureNative.IoTOperations.BrokerMemoryProfile.Tiny,
///         },
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewBroker(ctx, "broker", &iotoperations.BrokerArgs{
/// 			BrokerName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerPropertiesArgs{
/// 				Advanced: &iotoperations.AdvancedSettingsArgs{
/// 					Clients: &iotoperations.ClientConfigArgs{
/// 						MaxKeepAliveSeconds:     pulumi.Int(3744),
/// 						MaxMessageExpirySeconds: pulumi.Int(3263),
/// 						MaxPacketSizeBytes:      pulumi.Int(3029),
/// 						MaxReceiveMaximum:       pulumi.Int(2365),
/// 						MaxSessionExpirySeconds: pulumi.Int(3859),
/// 						SubscriberQueueLimit: &iotoperations.SubscriberQueueLimitArgs{
/// 							Length:   pulumi.Float64(6),
/// 							Strategy: pulumi.String(iotoperations.SubscriberMessageDropStrategyNone),
/// 						},
/// 					},
/// 					EncryptInternalTraffic: pulumi.String(iotoperations.OperationalModeEnabled),
/// 					InternalCerts: &iotoperations.CertManagerCertOptionsArgs{
/// 						Duration: pulumi.String("bchrc"),
/// 						PrivateKey: &iotoperations.CertManagerPrivateKeyArgs{
/// 							Algorithm:      pulumi.String(iotoperations.PrivateKeyAlgorithmEc256),
/// 							RotationPolicy: pulumi.String(iotoperations.PrivateKeyRotationPolicyAlways),
/// 						},
/// 						RenewBefore: pulumi.String("xkafmpgjfifkwwrhkswtopdnne"),
/// 					},
/// 				},
/// 				Cardinality: &iotoperations.CardinalityArgs{
/// 					BackendChain: &iotoperations.BackendChainArgs{
/// 						Partitions:       pulumi.Int(11),
/// 						RedundancyFactor: pulumi.Int(5),
/// 						Workers:          pulumi.Int(15),
/// 					},
/// 					Frontend: &iotoperations.FrontendArgs{
/// 						Replicas: pulumi.Int(2),
/// 						Workers:  pulumi.Int(6),
/// 					},
/// 				},
/// 				Diagnostics: &iotoperations.BrokerDiagnosticsArgs{
/// 					Logs: &iotoperations.DiagnosticsLogsArgs{
/// 						Level: pulumi.String("rnmwokumdmebpmfxxxzvvjfdywotav"),
/// 					},
/// 					Metrics: &iotoperations.MetricsArgs{
/// 						PrometheusPort: pulumi.Int(7581),
/// 					},
/// 					SelfCheck: &iotoperations.SelfCheckArgs{
/// 						IntervalSeconds: pulumi.Int(158),
/// 						Mode:            pulumi.String(iotoperations.OperationalModeEnabled),
/// 						TimeoutSeconds:  pulumi.Int(14),
/// 					},
/// 					Traces: &iotoperations.TracesArgs{
/// 						CacheSizeMegabytes: pulumi.Int(28),
/// 						Mode:               pulumi.String(iotoperations.OperationalModeEnabled),
/// 						SelfTracing: &iotoperations.SelfTracingArgs{
/// 							IntervalSeconds: pulumi.Int(22),
/// 							Mode:            pulumi.String(iotoperations.OperationalModeEnabled),
/// 						},
/// 						SpanChannelCapacity: pulumi.Int(1000),
/// 					},
/// 				},
/// 				DiskBackedMessageBuffer: &iotoperations.DiskBackedMessageBufferArgs{
/// 					EphemeralVolumeClaimSpec: &iotoperations.VolumeClaimSpecArgs{
/// 						AccessModes: pulumi.StringArray{
/// 							pulumi.String("nuluhigrbb"),
/// 						},
/// 						DataSource: &iotoperations.LocalKubernetesReferenceArgs{
/// 							ApiGroup: pulumi.String("npqapyksvvpkohujx"),
/// 							Kind:     pulumi.String("wazgyb"),
/// 							Name:     pulumi.String("cwhsgxxcxsyppoefm"),
/// 						},
/// 						DataSourceRef: &iotoperations.KubernetesReferenceArgs{
/// 							ApiGroup:  pulumi.String("mnfnykznjjsoqpfsgdqioupt"),
/// 							Kind:      pulumi.String("odynqzekfzsnawrctaxg"),
/// 							Name:      pulumi.String("envszivbbmixbyddzg"),
/// 							Namespace: pulumi.String("etcfzvxqd"),
/// 						},
/// 						Resources: &iotoperations.VolumeClaimResourceRequirementsArgs{
/// 							Limits: pulumi.StringMap{
/// 								"key2719": pulumi.String("hmphcrgctu"),
/// 							},
/// 							Requests: pulumi.StringMap{
/// 								"key2909": pulumi.String("txocprnyrsgvhfrg"),
/// 							},
/// 						},
/// 						Selector: &iotoperations.VolumeClaimSpecSelectorArgs{
/// 							MatchExpressions: iotoperations.VolumeClaimSpecSelectorMatchExpressionsArray{
/// 								&iotoperations.VolumeClaimSpecSelectorMatchExpressionsArgs{
/// 									Key:      pulumi.String("e"),
/// 									Operator: pulumi.String(iotoperations.OperatorValuesIn),
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("slmpajlywqvuyknipgztsonqyybt"),
/// 									},
/// 								},
/// 							},
/// 							MatchLabels: pulumi.StringMap{
/// 								"key6673": pulumi.String("wlngfalznwxnurzpgxomcxhbqefpr"),
/// 							},
/// 						},
/// 						StorageClassName: pulumi.String("sseyhrjptkhrqvpdpjmornkqvon"),
/// 						VolumeMode:       pulumi.String("rxvpksjuuugqnqzeiprocknbn"),
/// 						VolumeName:       pulumi.String("c"),
/// 					},
/// 					MaxSize: pulumi.String("500M"),
/// 					PersistentVolumeClaimSpec: &iotoperations.VolumeClaimSpecArgs{
/// 						AccessModes: pulumi.StringArray{
/// 							pulumi.String("nuluhigrbb"),
/// 						},
/// 						DataSource: &iotoperations.LocalKubernetesReferenceArgs{
/// 							ApiGroup: pulumi.String("npqapyksvvpkohujx"),
/// 							Kind:     pulumi.String("wazgyb"),
/// 							Name:     pulumi.String("cwhsgxxcxsyppoefm"),
/// 						},
/// 						DataSourceRef: &iotoperations.KubernetesReferenceArgs{
/// 							ApiGroup:  pulumi.String("mnfnykznjjsoqpfsgdqioupt"),
/// 							Kind:      pulumi.String("odynqzekfzsnawrctaxg"),
/// 							Name:      pulumi.String("envszivbbmixbyddzg"),
/// 							Namespace: pulumi.String("etcfzvxqd"),
/// 						},
/// 						Resources: &iotoperations.VolumeClaimResourceRequirementsArgs{
/// 							Limits: pulumi.StringMap{
/// 								"key2719": pulumi.String("hmphcrgctu"),
/// 							},
/// 							Requests: pulumi.StringMap{
/// 								"key2909": pulumi.String("txocprnyrsgvhfrg"),
/// 							},
/// 						},
/// 						Selector: &iotoperations.VolumeClaimSpecSelectorArgs{
/// 							MatchExpressions: iotoperations.VolumeClaimSpecSelectorMatchExpressionsArray{
/// 								&iotoperations.VolumeClaimSpecSelectorMatchExpressionsArgs{
/// 									Key:      pulumi.String("e"),
/// 									Operator: pulumi.String(iotoperations.OperatorValuesIn),
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("slmpajlywqvuyknipgztsonqyybt"),
/// 									},
/// 								},
/// 							},
/// 							MatchLabels: pulumi.StringMap{
/// 								"key6673": pulumi.String("wlngfalznwxnurzpgxomcxhbqefpr"),
/// 							},
/// 						},
/// 						StorageClassName: pulumi.String("sseyhrjptkhrqvpdpjmornkqvon"),
/// 						VolumeMode:       pulumi.String("rxvpksjuuugqnqzeiprocknbn"),
/// 						VolumeName:       pulumi.String("c"),
/// 					},
/// 				},
/// 				GenerateResourceLimits: &iotoperations.GenerateResourceLimitsArgs{
/// 					Cpu: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				},
/// 				MemoryProfile: pulumi.String(iotoperations.BrokerMemoryProfileTiny),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// import com.pulumi.azurenative.iotoperations.Broker;
/// import com.pulumi.azurenative.iotoperations.BrokerArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AdvancedSettingsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ClientConfigArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.SubscriberQueueLimitArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.CertManagerCertOptionsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.CertManagerPrivateKeyArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.CardinalityArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BackendChainArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.FrontendArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerDiagnosticsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DiagnosticsLogsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.MetricsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.SelfCheckArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.TracesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.SelfTracingArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DiskBackedMessageBufferArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.VolumeClaimSpecArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.LocalKubernetesReferenceArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.KubernetesReferenceArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.VolumeClaimResourceRequirementsArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.VolumeClaimSpecSelectorArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.GenerateResourceLimitsArgs;
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
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(BrokerPropertiesArgs.builder()
///                 .advanced(AdvancedSettingsArgs.builder()
///                     .clients(ClientConfigArgs.builder()
///                         .maxKeepAliveSeconds(3744)
///                         .maxMessageExpirySeconds(3263)
///                         .maxPacketSizeBytes(3029)
///                         .maxReceiveMaximum(2365)
///                         .maxSessionExpirySeconds(3859)
///                         .subscriberQueueLimit(SubscriberQueueLimitArgs.builder()
///                             .length(6.0)
///                             .strategy("None")
///                             .build())
///                         .build())
///                     .encryptInternalTraffic("Enabled")
///                     .internalCerts(CertManagerCertOptionsArgs.builder()
///                         .duration("bchrc")
///                         .privateKey(CertManagerPrivateKeyArgs.builder()
///                             .algorithm("Ec256")
///                             .rotationPolicy("Always")
///                             .build())
///                         .renewBefore("xkafmpgjfifkwwrhkswtopdnne")
///                         .build())
///                     .build())
///                 .cardinality(CardinalityArgs.builder()
///                     .backendChain(BackendChainArgs.builder()
///                         .partitions(11)
///                         .redundancyFactor(5)
///                         .workers(15)
///                         .build())
///                     .frontend(FrontendArgs.builder()
///                         .replicas(2)
///                         .workers(6)
///                         .build())
///                     .build())
///                 .diagnostics(BrokerDiagnosticsArgs.builder()
///                     .logs(DiagnosticsLogsArgs.builder()
///                         .level("rnmwokumdmebpmfxxxzvvjfdywotav")
///                         .build())
///                     .metrics(MetricsArgs.builder()
///                         .prometheusPort(7581)
///                         .build())
///                     .selfCheck(SelfCheckArgs.builder()
///                         .intervalSeconds(158)
///                         .mode("Enabled")
///                         .timeoutSeconds(14)
///                         .build())
///                     .traces(TracesArgs.builder()
///                         .cacheSizeMegabytes(28)
///                         .mode("Enabled")
///                         .selfTracing(SelfTracingArgs.builder()
///                             .intervalSeconds(22)
///                             .mode("Enabled")
///                             .build())
///                         .spanChannelCapacity(1000)
///                         .build())
///                     .build())
///                 .diskBackedMessageBuffer(DiskBackedMessageBufferArgs.builder()
///                     .ephemeralVolumeClaimSpec(VolumeClaimSpecArgs.builder()
///                         .accessModes("nuluhigrbb")
///                         .dataSource(LocalKubernetesReferenceArgs.builder()
///                             .apiGroup("npqapyksvvpkohujx")
///                             .kind("wazgyb")
///                             .name("cwhsgxxcxsyppoefm")
///                             .build())
///                         .dataSourceRef(KubernetesReferenceArgs.builder()
///                             .apiGroup("mnfnykznjjsoqpfsgdqioupt")
///                             .kind("odynqzekfzsnawrctaxg")
///                             .name("envszivbbmixbyddzg")
///                             .namespace("etcfzvxqd")
///                             .build())
///                         .resources(VolumeClaimResourceRequirementsArgs.builder()
///                             .limits(Map.of("key2719", "hmphcrgctu"))
///                             .requests(Map.of("key2909", "txocprnyrsgvhfrg"))
///                             .build())
///                         .selector(VolumeClaimSpecSelectorArgs.builder()
///                             .matchExpressions(VolumeClaimSpecSelectorMatchExpressionsArgs.builder()
///                                 .key("e")
///                                 .operator("In")
///                                 .values("slmpajlywqvuyknipgztsonqyybt")
///                                 .build())
///                             .matchLabels(Map.of("key6673", "wlngfalznwxnurzpgxomcxhbqefpr"))
///                             .build())
///                         .storageClassName("sseyhrjptkhrqvpdpjmornkqvon")
///                         .volumeMode("rxvpksjuuugqnqzeiprocknbn")
///                         .volumeName("c")
///                         .build())
///                     .maxSize("500M")
///                     .persistentVolumeClaimSpec(VolumeClaimSpecArgs.builder()
///                         .accessModes("nuluhigrbb")
///                         .dataSource(LocalKubernetesReferenceArgs.builder()
///                             .apiGroup("npqapyksvvpkohujx")
///                             .kind("wazgyb")
///                             .name("cwhsgxxcxsyppoefm")
///                             .build())
///                         .dataSourceRef(KubernetesReferenceArgs.builder()
///                             .apiGroup("mnfnykznjjsoqpfsgdqioupt")
///                             .kind("odynqzekfzsnawrctaxg")
///                             .name("envszivbbmixbyddzg")
///                             .namespace("etcfzvxqd")
///                             .build())
///                         .resources(VolumeClaimResourceRequirementsArgs.builder()
///                             .limits(Map.of("key2719", "hmphcrgctu"))
///                             .requests(Map.of("key2909", "txocprnyrsgvhfrg"))
///                             .build())
///                         .selector(VolumeClaimSpecSelectorArgs.builder()
///                             .matchExpressions(VolumeClaimSpecSelectorMatchExpressionsArgs.builder()
///                                 .key("e")
///                                 .operator("In")
///                                 .values("slmpajlywqvuyknipgztsonqyybt")
///                                 .build())
///                             .matchLabels(Map.of("key6673", "wlngfalznwxnurzpgxomcxhbqefpr"))
///                             .build())
///                         .storageClassName("sseyhrjptkhrqvpdpjmornkqvon")
///                         .volumeMode("rxvpksjuuugqnqzeiprocknbn")
///                         .volumeName("c")
///                         .build())
///                     .build())
///                 .generateResourceLimits(GenerateResourceLimitsArgs.builder()
///                     .cpu("Enabled")
///                     .build())
///                 .memoryProfile("Tiny")
///                 .build())
///             .resourceGroupName("rgiotoperations")
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
/// const broker = new azure_native.iotoperations.Broker("broker", {
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         advanced: {
///             clients: {
///                 maxKeepAliveSeconds: 3744,
///                 maxMessageExpirySeconds: 3263,
///                 maxPacketSizeBytes: 3029,
///                 maxReceiveMaximum: 2365,
///                 maxSessionExpirySeconds: 3859,
///                 subscriberQueueLimit: {
///                     length: 6,
///                     strategy: azure_native.iotoperations.SubscriberMessageDropStrategy.None,
///                 },
///             },
///             encryptInternalTraffic: azure_native.iotoperations.OperationalMode.Enabled,
///             internalCerts: {
///                 duration: "bchrc",
///                 privateKey: {
///                     algorithm: azure_native.iotoperations.PrivateKeyAlgorithm.Ec256,
///                     rotationPolicy: azure_native.iotoperations.PrivateKeyRotationPolicy.Always,
///                 },
///                 renewBefore: "xkafmpgjfifkwwrhkswtopdnne",
///             },
///         },
///         cardinality: {
///             backendChain: {
///                 partitions: 11,
///                 redundancyFactor: 5,
///                 workers: 15,
///             },
///             frontend: {
///                 replicas: 2,
///                 workers: 6,
///             },
///         },
///         diagnostics: {
///             logs: {
///                 level: "rnmwokumdmebpmfxxxzvvjfdywotav",
///             },
///             metrics: {
///                 prometheusPort: 7581,
///             },
///             selfCheck: {
///                 intervalSeconds: 158,
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///                 timeoutSeconds: 14,
///             },
///             traces: {
///                 cacheSizeMegabytes: 28,
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///                 selfTracing: {
///                     intervalSeconds: 22,
///                     mode: azure_native.iotoperations.OperationalMode.Enabled,
///                 },
///                 spanChannelCapacity: 1000,
///             },
///         },
///         diskBackedMessageBuffer: {
///             ephemeralVolumeClaimSpec: {
///                 accessModes: ["nuluhigrbb"],
///                 dataSource: {
///                     apiGroup: "npqapyksvvpkohujx",
///                     kind: "wazgyb",
///                     name: "cwhsgxxcxsyppoefm",
///                 },
///                 dataSourceRef: {
///                     apiGroup: "mnfnykznjjsoqpfsgdqioupt",
///                     kind: "odynqzekfzsnawrctaxg",
///                     name: "envszivbbmixbyddzg",
///                     namespace: "etcfzvxqd",
///                 },
///                 resources: {
///                     limits: {
///                         key2719: "hmphcrgctu",
///                     },
///                     requests: {
///                         key2909: "txocprnyrsgvhfrg",
///                     },
///                 },
///                 selector: {
///                     matchExpressions: [{
///                         key: "e",
///                         operator: azure_native.iotoperations.OperatorValues.In,
///                         values: ["slmpajlywqvuyknipgztsonqyybt"],
///                     }],
///                     matchLabels: {
///                         key6673: "wlngfalznwxnurzpgxomcxhbqefpr",
///                     },
///                 },
///                 storageClassName: "sseyhrjptkhrqvpdpjmornkqvon",
///                 volumeMode: "rxvpksjuuugqnqzeiprocknbn",
///                 volumeName: "c",
///             },
///             maxSize: "500M",
///             persistentVolumeClaimSpec: {
///                 accessModes: ["nuluhigrbb"],
///                 dataSource: {
///                     apiGroup: "npqapyksvvpkohujx",
///                     kind: "wazgyb",
///                     name: "cwhsgxxcxsyppoefm",
///                 },
///                 dataSourceRef: {
///                     apiGroup: "mnfnykznjjsoqpfsgdqioupt",
///                     kind: "odynqzekfzsnawrctaxg",
///                     name: "envszivbbmixbyddzg",
///                     namespace: "etcfzvxqd",
///                 },
///                 resources: {
///                     limits: {
///                         key2719: "hmphcrgctu",
///                     },
///                     requests: {
///                         key2909: "txocprnyrsgvhfrg",
///                     },
///                 },
///                 selector: {
///                     matchExpressions: [{
///                         key: "e",
///                         operator: azure_native.iotoperations.OperatorValues.In,
///                         values: ["slmpajlywqvuyknipgztsonqyybt"],
///                     }],
///                     matchLabels: {
///                         key6673: "wlngfalznwxnurzpgxomcxhbqefpr",
///                     },
///                 },
///                 storageClassName: "sseyhrjptkhrqvpdpjmornkqvon",
///                 volumeMode: "rxvpksjuuugqnqzeiprocknbn",
///                 volumeName: "c",
///             },
///         },
///         generateResourceLimits: {
///             cpu: azure_native.iotoperations.OperationalMode.Enabled,
///         },
///         memoryProfile: azure_native.iotoperations.BrokerMemoryProfile.Tiny,
///     },
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// broker = azure_native.iotoperations.Broker("broker",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "advanced": {
///             "clients": {
///                 "max_keep_alive_seconds": 3744,
///                 "max_message_expiry_seconds": 3263,
///                 "max_packet_size_bytes": 3029,
///                 "max_receive_maximum": 2365,
///                 "max_session_expiry_seconds": 3859,
///                 "subscriber_queue_limit": {
///                     "length": 6,
///                     "strategy": azure_native.iotoperations.SubscriberMessageDropStrategy.NONE,
///                 },
///             },
///             "encrypt_internal_traffic": azure_native.iotoperations.OperationalMode.ENABLED,
///             "internal_certs": {
///                 "duration": "bchrc",
///                 "private_key": {
///                     "algorithm": azure_native.iotoperations.PrivateKeyAlgorithm.EC256,
///                     "rotation_policy": azure_native.iotoperations.PrivateKeyRotationPolicy.ALWAYS,
///                 },
///                 "renew_before": "xkafmpgjfifkwwrhkswtopdnne",
///             },
///         },
///         "cardinality": {
///             "backend_chain": {
///                 "partitions": 11,
///                 "redundancy_factor": 5,
///                 "workers": 15,
///             },
///             "frontend": {
///                 "replicas": 2,
///                 "workers": 6,
///             },
///         },
///         "diagnostics": {
///             "logs": {
///                 "level": "rnmwokumdmebpmfxxxzvvjfdywotav",
///             },
///             "metrics": {
///                 "prometheus_port": 7581,
///             },
///             "self_check": {
///                 "interval_seconds": 158,
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///                 "timeout_seconds": 14,
///             },
///             "traces": {
///                 "cache_size_megabytes": 28,
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///                 "self_tracing": {
///                     "interval_seconds": 22,
///                     "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///                 },
///                 "span_channel_capacity": 1000,
///             },
///         },
///         "disk_backed_message_buffer": {
///             "ephemeral_volume_claim_spec": {
///                 "access_modes": ["nuluhigrbb"],
///                 "data_source": {
///                     "api_group": "npqapyksvvpkohujx",
///                     "kind": "wazgyb",
///                     "name": "cwhsgxxcxsyppoefm",
///                 },
///                 "data_source_ref": {
///                     "api_group": "mnfnykznjjsoqpfsgdqioupt",
///                     "kind": "odynqzekfzsnawrctaxg",
///                     "name": "envszivbbmixbyddzg",
///                     "namespace": "etcfzvxqd",
///                 },
///                 "resources": {
///                     "limits": {
///                         "key2719": "hmphcrgctu",
///                     },
///                     "requests": {
///                         "key2909": "txocprnyrsgvhfrg",
///                     },
///                 },
///                 "selector": {
///                     "match_expressions": [{
///                         "key": "e",
///                         "operator": azure_native.iotoperations.OperatorValues.IN_,
///                         "values": ["slmpajlywqvuyknipgztsonqyybt"],
///                     }],
///                     "match_labels": {
///                         "key6673": "wlngfalznwxnurzpgxomcxhbqefpr",
///                     },
///                 },
///                 "storage_class_name": "sseyhrjptkhrqvpdpjmornkqvon",
///                 "volume_mode": "rxvpksjuuugqnqzeiprocknbn",
///                 "volume_name": "c",
///             },
///             "max_size": "500M",
///             "persistent_volume_claim_spec": {
///                 "access_modes": ["nuluhigrbb"],
///                 "data_source": {
///                     "api_group": "npqapyksvvpkohujx",
///                     "kind": "wazgyb",
///                     "name": "cwhsgxxcxsyppoefm",
///                 },
///                 "data_source_ref": {
///                     "api_group": "mnfnykznjjsoqpfsgdqioupt",
///                     "kind": "odynqzekfzsnawrctaxg",
///                     "name": "envszivbbmixbyddzg",
///                     "namespace": "etcfzvxqd",
///                 },
///                 "resources": {
///                     "limits": {
///                         "key2719": "hmphcrgctu",
///                     },
///                     "requests": {
///                         "key2909": "txocprnyrsgvhfrg",
///                     },
///                 },
///                 "selector": {
///                     "match_expressions": [{
///                         "key": "e",
///                         "operator": azure_native.iotoperations.OperatorValues.IN_,
///                         "values": ["slmpajlywqvuyknipgztsonqyybt"],
///                     }],
///                     "match_labels": {
///                         "key6673": "wlngfalznwxnurzpgxomcxhbqefpr",
///                     },
///                 },
///                 "storage_class_name": "sseyhrjptkhrqvpdpjmornkqvon",
///                 "volume_mode": "rxvpksjuuugqnqzeiprocknbn",
///                 "volume_name": "c",
///             },
///         },
///         "generate_resource_limits": {
///             "cpu": azure_native.iotoperations.OperationalMode.ENABLED,
///         },
///         "memory_profile": azure_native.iotoperations.BrokerMemoryProfile.TINY,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   broker:
///     type: azure-native:iotoperations:Broker
///     properties:
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         advanced:
///           clients:
///             maxKeepAliveSeconds: 3744
///             maxMessageExpirySeconds: 3263
///             maxPacketSizeBytes: 3029
///             maxReceiveMaximum: 2365
///             maxSessionExpirySeconds: 3859
///             subscriberQueueLimit:
///               length: 6
///               strategy: None
///           encryptInternalTraffic: Enabled
///           internalCerts:
///             duration: bchrc
///             privateKey:
///               algorithm: Ec256
///               rotationPolicy: Always
///             renewBefore: xkafmpgjfifkwwrhkswtopdnne
///         cardinality:
///           backendChain:
///             partitions: 11
///             redundancyFactor: 5
///             workers: 15
///           frontend:
///             replicas: 2
///             workers: 6
///         diagnostics:
///           logs:
///             level: rnmwokumdmebpmfxxxzvvjfdywotav
///           metrics:
///             prometheusPort: 7581
///           selfCheck:
///             intervalSeconds: 158
///             mode: Enabled
///             timeoutSeconds: 14
///           traces:
///             cacheSizeMegabytes: 28
///             mode: Enabled
///             selfTracing:
///               intervalSeconds: 22
///               mode: Enabled
///             spanChannelCapacity: 1000
///         diskBackedMessageBuffer:
///           ephemeralVolumeClaimSpec:
///             accessModes:
///               - nuluhigrbb
///             dataSource:
///               apiGroup: npqapyksvvpkohujx
///               kind: wazgyb
///               name: cwhsgxxcxsyppoefm
///             dataSourceRef:
///               apiGroup: mnfnykznjjsoqpfsgdqioupt
///               kind: odynqzekfzsnawrctaxg
///               name: envszivbbmixbyddzg
///               namespace: etcfzvxqd
///             resources:
///               limits:
///                 key2719: hmphcrgctu
///               requests:
///                 key2909: txocprnyrsgvhfrg
///             selector:
///               matchExpressions:
///                 - key: e
///                   operator: In
///                   values:
///                     - slmpajlywqvuyknipgztsonqyybt
///               matchLabels:
///                 key6673: wlngfalznwxnurzpgxomcxhbqefpr
///             storageClassName: sseyhrjptkhrqvpdpjmornkqvon
///             volumeMode: rxvpksjuuugqnqzeiprocknbn
///             volumeName: c
///           maxSize: 500M
///           persistentVolumeClaimSpec:
///             accessModes:
///               - nuluhigrbb
///             dataSource:
///               apiGroup: npqapyksvvpkohujx
///               kind: wazgyb
///               name: cwhsgxxcxsyppoefm
///             dataSourceRef:
///               apiGroup: mnfnykznjjsoqpfsgdqioupt
///               kind: odynqzekfzsnawrctaxg
///               name: envszivbbmixbyddzg
///               namespace: etcfzvxqd
///             resources:
///               limits:
///                 key2719: hmphcrgctu
///               requests:
///                 key2909: txocprnyrsgvhfrg
///             selector:
///               matchExpressions:
///                 - key: e
///                   operator: In
///                   values:
///                     - slmpajlywqvuyknipgztsonqyybt
///               matchLabels:
///                 key6673: wlngfalznwxnurzpgxomcxhbqefpr
///             storageClassName: sseyhrjptkhrqvpdpjmornkqvon
///             volumeMode: rxvpksjuuugqnqzeiprocknbn
///             volumeName: c
///         generateResourceLimits:
///           cpu: Enabled
///         memoryProfile: Tiny
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Broker_CreateOrUpdate_Complex
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var broker = new AzureNative.IoTOperations.Broker("broker", new()
///     {
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerPropertiesArgs
///         {
///             Cardinality = new AzureNative.IoTOperations.Inputs.CardinalityArgs
///             {
///                 BackendChain = new AzureNative.IoTOperations.Inputs.BackendChainArgs
///                 {
///                     Partitions = 2,
///                     RedundancyFactor = 2,
///                     Workers = 2,
///                 },
///                 Frontend = new AzureNative.IoTOperations.Inputs.FrontendArgs
///                 {
///                     Replicas = 2,
///                     Workers = 2,
///                 },
///             },
///             DiskBackedMessageBuffer = new AzureNative.IoTOperations.Inputs.DiskBackedMessageBufferArgs
///             {
///                 MaxSize = "50M",
///             },
///             GenerateResourceLimits = new AzureNative.IoTOperations.Inputs.GenerateResourceLimitsArgs
///             {
///                 Cpu = AzureNative.IoTOperations.OperationalMode.Enabled,
///             },
///             MemoryProfile = AzureNative.IoTOperations.BrokerMemoryProfile.Medium,
///         },
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewBroker(ctx, "broker", &iotoperations.BrokerArgs{
/// 			BrokerName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerPropertiesArgs{
/// 				Cardinality: &iotoperations.CardinalityArgs{
/// 					BackendChain: &iotoperations.BackendChainArgs{
/// 						Partitions:       pulumi.Int(2),
/// 						RedundancyFactor: pulumi.Int(2),
/// 						Workers:          pulumi.Int(2),
/// 					},
/// 					Frontend: &iotoperations.FrontendArgs{
/// 						Replicas: pulumi.Int(2),
/// 						Workers:  pulumi.Int(2),
/// 					},
/// 				},
/// 				DiskBackedMessageBuffer: &iotoperations.DiskBackedMessageBufferArgs{
/// 					MaxSize: pulumi.String("50M"),
/// 				},
/// 				GenerateResourceLimits: &iotoperations.GenerateResourceLimitsArgs{
/// 					Cpu: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				},
/// 				MemoryProfile: pulumi.String(iotoperations.BrokerMemoryProfileMedium),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// import com.pulumi.azurenative.iotoperations.Broker;
/// import com.pulumi.azurenative.iotoperations.BrokerArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.CardinalityArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BackendChainArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.FrontendArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DiskBackedMessageBufferArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.GenerateResourceLimitsArgs;
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
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(BrokerPropertiesArgs.builder()
///                 .cardinality(CardinalityArgs.builder()
///                     .backendChain(BackendChainArgs.builder()
///                         .partitions(2)
///                         .redundancyFactor(2)
///                         .workers(2)
///                         .build())
///                     .frontend(FrontendArgs.builder()
///                         .replicas(2)
///                         .workers(2)
///                         .build())
///                     .build())
///                 .diskBackedMessageBuffer(DiskBackedMessageBufferArgs.builder()
///                     .maxSize("50M")
///                     .build())
///                 .generateResourceLimits(GenerateResourceLimitsArgs.builder()
///                     .cpu("Enabled")
///                     .build())
///                 .memoryProfile("Medium")
///                 .build())
///             .resourceGroupName("rgiotoperations")
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
/// const broker = new azure_native.iotoperations.Broker("broker", {
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         cardinality: {
///             backendChain: {
///                 partitions: 2,
///                 redundancyFactor: 2,
///                 workers: 2,
///             },
///             frontend: {
///                 replicas: 2,
///                 workers: 2,
///             },
///         },
///         diskBackedMessageBuffer: {
///             maxSize: "50M",
///         },
///         generateResourceLimits: {
///             cpu: azure_native.iotoperations.OperationalMode.Enabled,
///         },
///         memoryProfile: azure_native.iotoperations.BrokerMemoryProfile.Medium,
///     },
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// broker = azure_native.iotoperations.Broker("broker",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "cardinality": {
///             "backend_chain": {
///                 "partitions": 2,
///                 "redundancy_factor": 2,
///                 "workers": 2,
///             },
///             "frontend": {
///                 "replicas": 2,
///                 "workers": 2,
///             },
///         },
///         "disk_backed_message_buffer": {
///             "max_size": "50M",
///         },
///         "generate_resource_limits": {
///             "cpu": azure_native.iotoperations.OperationalMode.ENABLED,
///         },
///         "memory_profile": azure_native.iotoperations.BrokerMemoryProfile.MEDIUM,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   broker:
///     type: azure-native:iotoperations:Broker
///     properties:
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         cardinality:
///           backendChain:
///             partitions: 2
///             redundancyFactor: 2
///             workers: 2
///           frontend:
///             replicas: 2
///             workers: 2
///         diskBackedMessageBuffer:
///           maxSize: 50M
///         generateResourceLimits:
///           cpu: Enabled
///         memoryProfile: Medium
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Broker_CreateOrUpdate_Minimal
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var broker = new AzureNative.IoTOperations.Broker("broker", new()
///     {
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerPropertiesArgs
///         {
///             MemoryProfile = AzureNative.IoTOperations.BrokerMemoryProfile.Tiny,
///         },
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewBroker(ctx, "broker", &iotoperations.BrokerArgs{
/// 			BrokerName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerPropertiesArgs{
/// 				MemoryProfile: pulumi.String(iotoperations.BrokerMemoryProfileTiny),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// import com.pulumi.azurenative.iotoperations.Broker;
/// import com.pulumi.azurenative.iotoperations.BrokerArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerPropertiesArgs;
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
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(BrokerPropertiesArgs.builder()
///                 .memoryProfile("Tiny")
///                 .build())
///             .resourceGroupName("rgiotoperations")
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
/// const broker = new azure_native.iotoperations.Broker("broker", {
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         memoryProfile: azure_native.iotoperations.BrokerMemoryProfile.Tiny,
///     },
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// broker = azure_native.iotoperations.Broker("broker",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "memory_profile": azure_native.iotoperations.BrokerMemoryProfile.TINY,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   broker:
///     type: azure-native:iotoperations:Broker
///     properties:
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         memoryProfile: Tiny
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Broker_CreateOrUpdate_Simple
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var broker = new AzureNative.IoTOperations.Broker("broker", new()
///     {
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerPropertiesArgs
///         {
///             Cardinality = new AzureNative.IoTOperations.Inputs.CardinalityArgs
///             {
///                 BackendChain = new AzureNative.IoTOperations.Inputs.BackendChainArgs
///                 {
///                     Partitions = 2,
///                     RedundancyFactor = 2,
///                     Workers = 2,
///                 },
///                 Frontend = new AzureNative.IoTOperations.Inputs.FrontendArgs
///                 {
///                     Replicas = 2,
///                     Workers = 2,
///                 },
///             },
///             GenerateResourceLimits = new AzureNative.IoTOperations.Inputs.GenerateResourceLimitsArgs
///             {
///                 Cpu = AzureNative.IoTOperations.OperationalMode.Enabled,
///             },
///             MemoryProfile = AzureNative.IoTOperations.BrokerMemoryProfile.Low,
///         },
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewBroker(ctx, "broker", &iotoperations.BrokerArgs{
/// 			BrokerName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerPropertiesArgs{
/// 				Cardinality: &iotoperations.CardinalityArgs{
/// 					BackendChain: &iotoperations.BackendChainArgs{
/// 						Partitions:       pulumi.Int(2),
/// 						RedundancyFactor: pulumi.Int(2),
/// 						Workers:          pulumi.Int(2),
/// 					},
/// 					Frontend: &iotoperations.FrontendArgs{
/// 						Replicas: pulumi.Int(2),
/// 						Workers:  pulumi.Int(2),
/// 					},
/// 				},
/// 				GenerateResourceLimits: &iotoperations.GenerateResourceLimitsArgs{
/// 					Cpu: pulumi.String(iotoperations.OperationalModeEnabled),
/// 				},
/// 				MemoryProfile: pulumi.String(iotoperations.BrokerMemoryProfileLow),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// import com.pulumi.azurenative.iotoperations.Broker;
/// import com.pulumi.azurenative.iotoperations.BrokerArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.CardinalityArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BackendChainArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.FrontendArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.GenerateResourceLimitsArgs;
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
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(BrokerPropertiesArgs.builder()
///                 .cardinality(CardinalityArgs.builder()
///                     .backendChain(BackendChainArgs.builder()
///                         .partitions(2)
///                         .redundancyFactor(2)
///                         .workers(2)
///                         .build())
///                     .frontend(FrontendArgs.builder()
///                         .replicas(2)
///                         .workers(2)
///                         .build())
///                     .build())
///                 .generateResourceLimits(GenerateResourceLimitsArgs.builder()
///                     .cpu("Enabled")
///                     .build())
///                 .memoryProfile("Low")
///                 .build())
///             .resourceGroupName("rgiotoperations")
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
/// const broker = new azure_native.iotoperations.Broker("broker", {
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         cardinality: {
///             backendChain: {
///                 partitions: 2,
///                 redundancyFactor: 2,
///                 workers: 2,
///             },
///             frontend: {
///                 replicas: 2,
///                 workers: 2,
///             },
///         },
///         generateResourceLimits: {
///             cpu: azure_native.iotoperations.OperationalMode.Enabled,
///         },
///         memoryProfile: azure_native.iotoperations.BrokerMemoryProfile.Low,
///     },
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// broker = azure_native.iotoperations.Broker("broker",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "cardinality": {
///             "backend_chain": {
///                 "partitions": 2,
///                 "redundancy_factor": 2,
///                 "workers": 2,
///             },
///             "frontend": {
///                 "replicas": 2,
///                 "workers": 2,
///             },
///         },
///         "generate_resource_limits": {
///             "cpu": azure_native.iotoperations.OperationalMode.ENABLED,
///         },
///         "memory_profile": azure_native.iotoperations.BrokerMemoryProfile.LOW,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   broker:
///     type: azure-native:iotoperations:Broker
///     properties:
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         cardinality:
///           backendChain:
///             partitions: 2
///             redundancyFactor: 2
///             workers: 2
///           frontend:
///             replicas: 2
///             workers: 2
///         generateResourceLimits:
///           cpu: Enabled
///         memoryProfile: Low
///       resourceGroupName: rgiotoperations
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
/// $ pulumi import azure-native:iotoperations:Broker dowrkel /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/brokers/{brokerName}
/// ```
class Broker extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<BrokerPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Broker].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Broker]. {@macro pulumi_iotoperations_broker_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Broker(String name, {BrokerArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:iotoperations:Broker',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    properties = registerOutput<BrokerPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BrokerPropertiesResponse.fromMap(
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
    type = registerOutput<String>('type');
  }
}
