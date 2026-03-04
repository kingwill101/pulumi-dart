import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_args.dart';
import 'dataflow_endpoint_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Instance dataflowEndpoint resource
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             DataExplorerSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointDataExplorerArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointDataExplorerAuthenticationArgs
///                 {
///                     Method = "SystemAssignedManagedIdentity",
///                     SystemAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs
///                     {
///                         Audience = "psxomrfbhoflycm",
///                     },
///                     UserAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs
///                     {
///                         ClientId = "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                         Scope = "zop",
///                         TenantId = "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                     },
///                 },
///                 Batching = new AzureNative.IoTOperations.Inputs.BatchingConfigurationArgs
///                 {
///                     LatencySeconds = 9312,
///                     MaxMessages = 9028,
///                 },
///                 Database = "yqcdpjsifm",
///                 Host = "<cluster>.<region>.kusto.windows.net",
///             },
///             DataLakeStorageSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointDataLakeStorageArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointDataLakeStorageAuthenticationArgs
///                 {
///                     AccessTokenSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationAccessTokenArgs
///                     {
///                         SecretRef = "sevriyphcvnlrnfudqzejecwa",
///                     },
///                     Method = AzureNative.IoTOperations.DataLakeStorageAuthMethod.SystemAssignedManagedIdentity,
///                     SystemAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs
///                     {
///                         Audience = "psxomrfbhoflycm",
///                     },
///                     UserAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs
///                     {
///                         ClientId = "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                         Scope = "zop",
///                         TenantId = "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                     },
///                 },
///                 Batching = new AzureNative.IoTOperations.Inputs.BatchingConfigurationArgs
///                 {
///                     LatencySeconds = 9312,
///                     MaxMessages = 9028,
///                 },
///                 Host = "<account>.blob.core.windows.net",
///             },
///             EndpointType = AzureNative.IoTOperations.EndpointType.DataExplorer,
///             FabricOneLakeSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointFabricOneLakeArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointFabricOneLakeAuthenticationArgs
///                 {
///                     Method = "SystemAssignedManagedIdentity",
///                     SystemAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs
///                     {
///                         Audience = "psxomrfbhoflycm",
///                     },
///                     UserAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs
///                     {
///                         ClientId = "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                         Scope = "zop",
///                         TenantId = "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                     },
///                 },
///                 Batching = new AzureNative.IoTOperations.Inputs.BatchingConfigurationArgs
///                 {
///                     LatencySeconds = 9312,
///                     MaxMessages = 9028,
///                 },
///                 Host = "https://<host>.fabric.microsoft.com",
///                 Names = new AzureNative.IoTOperations.Inputs.DataflowEndpointFabricOneLakeNamesArgs
///                 {
///                     LakehouseName = "wpeathi",
///                     WorkspaceName = "nwgmitkbljztgms",
///                 },
///                 OneLakePathType = AzureNative.IoTOperations.DataflowEndpointFabricPathType.Files,
///             },
///             KafkaSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointKafkaArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointKafkaAuthenticationArgs
///                 {
///                     Method = AzureNative.IoTOperations.KafkaAuthMethod.SystemAssignedManagedIdentity,
///                     SaslSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationSaslArgs
///                     {
///                         SaslType = AzureNative.IoTOperations.DataflowEndpointAuthenticationSaslType.Plain,
///                         SecretRef = "visyxoztqnylvbyokhtmpdkwes",
///                     },
///                     SystemAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs
///                     {
///                         Audience = "psxomrfbhoflycm",
///                     },
///                     UserAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs
///                     {
///                         ClientId = "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                         Scope = "zop",
///                         TenantId = "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                     },
///                     X509CertificateSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationX509Args
///                     {
///                         SecretRef = "afwizrystfslkfqd",
///                     },
///                 },
///                 Batching = new AzureNative.IoTOperations.Inputs.DataflowEndpointKafkaBatchingArgs
///                 {
///                     LatencyMs = 3679,
///                     MaxBytes = 8887,
///                     MaxMessages = 2174,
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 },
///                 CloudEventAttributes = "PassThrough",
///                 Compression = AzureNative.IoTOperations.DataflowEndpointKafkaCompression.None,
///                 ConsumerGroupId = "ukkzcjiyenhxokat",
///                 CopyMqttProperties = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 Host = "pwcqfiqclcgneolpewnyavoulbip",
///                 KafkaAcks = AzureNative.IoTOperations.DataflowEndpointKafkaAcks.Zero,
///                 PartitionStrategy = AzureNative.IoTOperations.DataflowEndpointKafkaPartitionStrategy.Default,
///                 Tls = new AzureNative.IoTOperations.Inputs.TlsPropertiesArgs
///                 {
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                     TrustedCaCertificateConfigMapRef = "tectjjvukvelsreihwadh",
///                 },
///             },
///             LocalStorageSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointLocalStorageArgs
///             {
///                 PersistentVolumeClaimRef = "jjwqwvd",
///             },
///             MqttSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointMqttArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointMqttAuthenticationArgs
///                 {
///                     Method = AzureNative.IoTOperations.MqttAuthMethod.SystemAssignedManagedIdentity,
///                     ServiceAccountTokenSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationServiceAccountTokenArgs
///                     {
///                         Audience = "ejbklrbxgjaqleoycgpje",
///                     },
///                     SystemAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs
///                     {
///                         Audience = "psxomrfbhoflycm",
///                     },
///                     UserAssignedManagedIdentitySettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs
///                     {
///                         ClientId = "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                         Scope = "zop",
///                         TenantId = "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                     },
///                     X509CertificateSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationX509Args
///                     {
///                         SecretRef = "afwizrystfslkfqd",
///                     },
///                 },
///                 ClientIdPrefix = "kkljsdxdirfhwxtkavldekeqhv",
///                 CloudEventAttributes = "PassThrough",
///                 Host = "nyhnxqnbspstctl",
///                 KeepAliveSeconds = 0,
///                 MaxInflightMessages = 0,
///                 Protocol = AzureNative.IoTOperations.BrokerProtocolType.Mqtt,
///                 Qos = 1,
///                 Retain = AzureNative.IoTOperations.MqttRetainType.Keep,
///                 SessionExpirySeconds = 0,
///                 Tls = new AzureNative.IoTOperations.Inputs.TlsPropertiesArgs
///                 {
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                     TrustedCaCertificateConfigMapRef = "tectjjvukvelsreihwadh",
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				DataExplorerSettings: &iotoperations.DataflowEndpointDataExplorerArgs{
/// 					Authentication: &iotoperations.DataflowEndpointDataExplorerAuthenticationArgs{
/// 						Method: pulumi.Any("SystemAssignedManagedIdentity"),
/// 						SystemAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs{
/// 							Audience: pulumi.String("psxomrfbhoflycm"),
/// 						},
/// 						UserAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs{
/// 							ClientId: pulumi.String("fb90f267-8872-431a-a76a-a1cec5d3c4d2"),
/// 							Scope:    pulumi.String("zop"),
/// 							TenantId: pulumi.String("ed060aa2-71ff-4d3f-99c4-a9138356fdec"),
/// 						},
/// 					},
/// 					Batching: &iotoperations.BatchingConfigurationArgs{
/// 						LatencySeconds: pulumi.Int(9312),
/// 						MaxMessages:    pulumi.Int(9028),
/// 					},
/// 					Database: pulumi.String("yqcdpjsifm"),
/// 					Host:     pulumi.String("<cluster>.<region>.kusto.windows.net"),
/// 				},
/// 				DataLakeStorageSettings: &iotoperations.DataflowEndpointDataLakeStorageArgs{
/// 					Authentication: &iotoperations.DataflowEndpointDataLakeStorageAuthenticationArgs{
/// 						AccessTokenSettings: &iotoperations.DataflowEndpointAuthenticationAccessTokenArgs{
/// 							SecretRef: pulumi.String("sevriyphcvnlrnfudqzejecwa"),
/// 						},
/// 						Method: pulumi.String(iotoperations.DataLakeStorageAuthMethodSystemAssignedManagedIdentity),
/// 						SystemAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs{
/// 							Audience: pulumi.String("psxomrfbhoflycm"),
/// 						},
/// 						UserAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs{
/// 							ClientId: pulumi.String("fb90f267-8872-431a-a76a-a1cec5d3c4d2"),
/// 							Scope:    pulumi.String("zop"),
/// 							TenantId: pulumi.String("ed060aa2-71ff-4d3f-99c4-a9138356fdec"),
/// 						},
/// 					},
/// 					Batching: &iotoperations.BatchingConfigurationArgs{
/// 						LatencySeconds: pulumi.Int(9312),
/// 						MaxMessages:    pulumi.Int(9028),
/// 					},
/// 					Host: pulumi.String("<account>.blob.core.windows.net"),
/// 				},
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeDataExplorer),
/// 				FabricOneLakeSettings: &iotoperations.DataflowEndpointFabricOneLakeArgs{
/// 					Authentication: &iotoperations.DataflowEndpointFabricOneLakeAuthenticationArgs{
/// 						Method: pulumi.Any("SystemAssignedManagedIdentity"),
/// 						SystemAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs{
/// 							Audience: pulumi.String("psxomrfbhoflycm"),
/// 						},
/// 						UserAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs{
/// 							ClientId: pulumi.String("fb90f267-8872-431a-a76a-a1cec5d3c4d2"),
/// 							Scope:    pulumi.String("zop"),
/// 							TenantId: pulumi.String("ed060aa2-71ff-4d3f-99c4-a9138356fdec"),
/// 						},
/// 					},
/// 					Batching: &iotoperations.BatchingConfigurationArgs{
/// 						LatencySeconds: pulumi.Int(9312),
/// 						MaxMessages:    pulumi.Int(9028),
/// 					},
/// 					Host: pulumi.String("https://<host>.fabric.microsoft.com"),
/// 					Names: &iotoperations.DataflowEndpointFabricOneLakeNamesArgs{
/// 						LakehouseName: pulumi.String("wpeathi"),
/// 						WorkspaceName: pulumi.String("nwgmitkbljztgms"),
/// 					},
/// 					OneLakePathType: pulumi.String(iotoperations.DataflowEndpointFabricPathTypeFiles),
/// 				},
/// 				KafkaSettings: &iotoperations.DataflowEndpointKafkaArgs{
/// 					Authentication: &iotoperations.DataflowEndpointKafkaAuthenticationArgs{
/// 						Method: pulumi.String(iotoperations.KafkaAuthMethodSystemAssignedManagedIdentity),
/// 						SaslSettings: &iotoperations.DataflowEndpointAuthenticationSaslArgs{
/// 							SaslType:  pulumi.String(iotoperations.DataflowEndpointAuthenticationSaslTypePlain),
/// 							SecretRef: pulumi.String("visyxoztqnylvbyokhtmpdkwes"),
/// 						},
/// 						SystemAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs{
/// 							Audience: pulumi.String("psxomrfbhoflycm"),
/// 						},
/// 						UserAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs{
/// 							ClientId: pulumi.String("fb90f267-8872-431a-a76a-a1cec5d3c4d2"),
/// 							Scope:    pulumi.String("zop"),
/// 							TenantId: pulumi.String("ed060aa2-71ff-4d3f-99c4-a9138356fdec"),
/// 						},
/// 						X509CertificateSettings: &iotoperations.DataflowEndpointAuthenticationX509Args{
/// 							SecretRef: pulumi.String("afwizrystfslkfqd"),
/// 						},
/// 					},
/// 					Batching: &iotoperations.DataflowEndpointKafkaBatchingArgs{
/// 						LatencyMs:   pulumi.Int(3679),
/// 						MaxBytes:    pulumi.Int(8887),
/// 						MaxMessages: pulumi.Int(2174),
/// 						Mode:        pulumi.String(iotoperations.OperationalModeEnabled),
/// 					},
/// 					CloudEventAttributes: pulumi.String("PassThrough"),
/// 					Compression:          pulumi.String(iotoperations.DataflowEndpointKafkaCompressionNone),
/// 					ConsumerGroupId:      pulumi.String("ukkzcjiyenhxokat"),
/// 					CopyMqttProperties:   pulumi.String(iotoperations.OperationalModeEnabled),
/// 					Host:                 pulumi.String("pwcqfiqclcgneolpewnyavoulbip"),
/// 					KafkaAcks:            pulumi.String(iotoperations.DataflowEndpointKafkaAcksZero),
/// 					PartitionStrategy:    pulumi.String(iotoperations.DataflowEndpointKafkaPartitionStrategyDefault),
/// 					Tls: &iotoperations.TlsPropertiesArgs{
/// 						Mode:                             pulumi.String(iotoperations.OperationalModeEnabled),
/// 						TrustedCaCertificateConfigMapRef: pulumi.String("tectjjvukvelsreihwadh"),
/// 					},
/// 				},
/// 				LocalStorageSettings: &iotoperations.DataflowEndpointLocalStorageArgs{
/// 					PersistentVolumeClaimRef: pulumi.String("jjwqwvd"),
/// 				},
/// 				MqttSettings: &iotoperations.DataflowEndpointMqttArgs{
/// 					Authentication: &iotoperations.DataflowEndpointMqttAuthenticationArgs{
/// 						Method: pulumi.String(iotoperations.MqttAuthMethodSystemAssignedManagedIdentity),
/// 						ServiceAccountTokenSettings: &iotoperations.DataflowEndpointAuthenticationServiceAccountTokenArgs{
/// 							Audience: pulumi.String("ejbklrbxgjaqleoycgpje"),
/// 						},
/// 						SystemAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs{
/// 							Audience: pulumi.String("psxomrfbhoflycm"),
/// 						},
/// 						UserAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs{
/// 							ClientId: pulumi.String("fb90f267-8872-431a-a76a-a1cec5d3c4d2"),
/// 							Scope:    pulumi.String("zop"),
/// 							TenantId: pulumi.String("ed060aa2-71ff-4d3f-99c4-a9138356fdec"),
/// 						},
/// 						X509CertificateSettings: &iotoperations.DataflowEndpointAuthenticationX509Args{
/// 							SecretRef: pulumi.String("afwizrystfslkfqd"),
/// 						},
/// 					},
/// 					ClientIdPrefix:       pulumi.String("kkljsdxdirfhwxtkavldekeqhv"),
/// 					CloudEventAttributes: pulumi.String("PassThrough"),
/// 					Host:                 pulumi.String("nyhnxqnbspstctl"),
/// 					KeepAliveSeconds:     pulumi.Int(0),
/// 					MaxInflightMessages:  pulumi.Int(0),
/// 					Protocol:             pulumi.String(iotoperations.BrokerProtocolTypeMqtt),
/// 					Qos:                  pulumi.Int(1),
/// 					Retain:               pulumi.String(iotoperations.MqttRetainTypeKeep),
/// 					SessionExpirySeconds: pulumi.Int(0),
/// 					Tls: &iotoperations.TlsPropertiesArgs{
/// 						Mode:                             pulumi.String(iotoperations.OperationalModeEnabled),
/// 						TrustedCaCertificateConfigMapRef: pulumi.String("tectjjvukvelsreihwadh"),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointDataExplorerArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointDataExplorerAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BatchingConfigurationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointDataLakeStorageArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointDataLakeStorageAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationAccessTokenArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointFabricOneLakeArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointFabricOneLakeAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointFabricOneLakeNamesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointKafkaArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointKafkaAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationSaslArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationX509Args;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointKafkaBatchingArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.TlsPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointLocalStorageArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointMqttArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointMqttAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationServiceAccountTokenArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .dataExplorerSettings(DataflowEndpointDataExplorerArgs.builder()
///                     .authentication(DataflowEndpointDataExplorerAuthenticationArgs.builder()
///                         .method("SystemAssignedManagedIdentity")
///                         .systemAssignedManagedIdentitySettings(DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs.builder()
///                             .audience("psxomrfbhoflycm")
///                             .build())
///                         .userAssignedManagedIdentitySettings(DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs.builder()
///                             .clientId("fb90f267-8872-431a-a76a-a1cec5d3c4d2")
///                             .scope("zop")
///                             .tenantId("ed060aa2-71ff-4d3f-99c4-a9138356fdec")
///                             .build())
///                         .build())
///                     .batching(BatchingConfigurationArgs.builder()
///                         .latencySeconds(9312)
///                         .maxMessages(9028)
///                         .build())
///                     .database("yqcdpjsifm")
///                     .host("<cluster>.<region>.kusto.windows.net")
///                     .build())
///                 .dataLakeStorageSettings(DataflowEndpointDataLakeStorageArgs.builder()
///                     .authentication(DataflowEndpointDataLakeStorageAuthenticationArgs.builder()
///                         .accessTokenSettings(DataflowEndpointAuthenticationAccessTokenArgs.builder()
///                             .secretRef("sevriyphcvnlrnfudqzejecwa")
///                             .build())
///                         .method("SystemAssignedManagedIdentity")
///                         .systemAssignedManagedIdentitySettings(DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs.builder()
///                             .audience("psxomrfbhoflycm")
///                             .build())
///                         .userAssignedManagedIdentitySettings(DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs.builder()
///                             .clientId("fb90f267-8872-431a-a76a-a1cec5d3c4d2")
///                             .scope("zop")
///                             .tenantId("ed060aa2-71ff-4d3f-99c4-a9138356fdec")
///                             .build())
///                         .build())
///                     .batching(BatchingConfigurationArgs.builder()
///                         .latencySeconds(9312)
///                         .maxMessages(9028)
///                         .build())
///                     .host("<account>.blob.core.windows.net")
///                     .build())
///                 .endpointType("DataExplorer")
///                 .fabricOneLakeSettings(DataflowEndpointFabricOneLakeArgs.builder()
///                     .authentication(DataflowEndpointFabricOneLakeAuthenticationArgs.builder()
///                         .method("SystemAssignedManagedIdentity")
///                         .systemAssignedManagedIdentitySettings(DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs.builder()
///                             .audience("psxomrfbhoflycm")
///                             .build())
///                         .userAssignedManagedIdentitySettings(DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs.builder()
///                             .clientId("fb90f267-8872-431a-a76a-a1cec5d3c4d2")
///                             .scope("zop")
///                             .tenantId("ed060aa2-71ff-4d3f-99c4-a9138356fdec")
///                             .build())
///                         .build())
///                     .batching(BatchingConfigurationArgs.builder()
///                         .latencySeconds(9312)
///                         .maxMessages(9028)
///                         .build())
///                     .host("https://<host>.fabric.microsoft.com")
///                     .names(DataflowEndpointFabricOneLakeNamesArgs.builder()
///                         .lakehouseName("wpeathi")
///                         .workspaceName("nwgmitkbljztgms")
///                         .build())
///                     .oneLakePathType("Files")
///                     .build())
///                 .kafkaSettings(DataflowEndpointKafkaArgs.builder()
///                     .authentication(DataflowEndpointKafkaAuthenticationArgs.builder()
///                         .method("SystemAssignedManagedIdentity")
///                         .saslSettings(DataflowEndpointAuthenticationSaslArgs.builder()
///                             .saslType("Plain")
///                             .secretRef("visyxoztqnylvbyokhtmpdkwes")
///                             .build())
///                         .systemAssignedManagedIdentitySettings(DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs.builder()
///                             .audience("psxomrfbhoflycm")
///                             .build())
///                         .userAssignedManagedIdentitySettings(DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs.builder()
///                             .clientId("fb90f267-8872-431a-a76a-a1cec5d3c4d2")
///                             .scope("zop")
///                             .tenantId("ed060aa2-71ff-4d3f-99c4-a9138356fdec")
///                             .build())
///                         .x509CertificateSettings(DataflowEndpointAuthenticationX509Args.builder()
///                             .secretRef("afwizrystfslkfqd")
///                             .build())
///                         .build())
///                     .batching(DataflowEndpointKafkaBatchingArgs.builder()
///                         .latencyMs(3679)
///                         .maxBytes(8887)
///                         .maxMessages(2174)
///                         .mode("Enabled")
///                         .build())
///                     .cloudEventAttributes("PassThrough")
///                     .compression("None")
///                     .consumerGroupId("ukkzcjiyenhxokat")
///                     .copyMqttProperties("Enabled")
///                     .host("pwcqfiqclcgneolpewnyavoulbip")
///                     .kafkaAcks("Zero")
///                     .partitionStrategy("Default")
///                     .tls(TlsPropertiesArgs.builder()
///                         .mode("Enabled")
///                         .trustedCaCertificateConfigMapRef("tectjjvukvelsreihwadh")
///                         .build())
///                     .build())
///                 .localStorageSettings(DataflowEndpointLocalStorageArgs.builder()
///                     .persistentVolumeClaimRef("jjwqwvd")
///                     .build())
///                 .mqttSettings(DataflowEndpointMqttArgs.builder()
///                     .authentication(DataflowEndpointMqttAuthenticationArgs.builder()
///                         .method("SystemAssignedManagedIdentity")
///                         .serviceAccountTokenSettings(DataflowEndpointAuthenticationServiceAccountTokenArgs.builder()
///                             .audience("ejbklrbxgjaqleoycgpje")
///                             .build())
///                         .systemAssignedManagedIdentitySettings(DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs.builder()
///                             .audience("psxomrfbhoflycm")
///                             .build())
///                         .userAssignedManagedIdentitySettings(DataflowEndpointAuthenticationUserAssignedManagedIdentityArgs.builder()
///                             .clientId("fb90f267-8872-431a-a76a-a1cec5d3c4d2")
///                             .scope("zop")
///                             .tenantId("ed060aa2-71ff-4d3f-99c4-a9138356fdec")
///                             .build())
///                         .x509CertificateSettings(DataflowEndpointAuthenticationX509Args.builder()
///                             .secretRef("afwizrystfslkfqd")
///                             .build())
///                         .build())
///                     .clientIdPrefix("kkljsdxdirfhwxtkavldekeqhv")
///                     .cloudEventAttributes("PassThrough")
///                     .host("nyhnxqnbspstctl")
///                     .keepAliveSeconds(0)
///                     .maxInflightMessages(0)
///                     .protocol("Mqtt")
///                     .qos(1)
///                     .retain("Keep")
///                     .sessionExpirySeconds(0)
///                     .tls(TlsPropertiesArgs.builder()
///                         .mode("Enabled")
///                         .trustedCaCertificateConfigMapRef("tectjjvukvelsreihwadh")
///                         .build())
///                     .build())
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         dataExplorerSettings: {
///             authentication: {
///                 method: "SystemAssignedManagedIdentity",
///                 systemAssignedManagedIdentitySettings: {
///                     audience: "psxomrfbhoflycm",
///                 },
///                 userAssignedManagedIdentitySettings: {
///                     clientId: "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     scope: "zop",
///                     tenantId: "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///             },
///             batching: {
///                 latencySeconds: 9312,
///                 maxMessages: 9028,
///             },
///             database: "yqcdpjsifm",
///             host: "<cluster>.<region>.kusto.windows.net",
///         },
///         dataLakeStorageSettings: {
///             authentication: {
///                 accessTokenSettings: {
///                     secretRef: "sevriyphcvnlrnfudqzejecwa",
///                 },
///                 method: azure_native.iotoperations.DataLakeStorageAuthMethod.SystemAssignedManagedIdentity,
///                 systemAssignedManagedIdentitySettings: {
///                     audience: "psxomrfbhoflycm",
///                 },
///                 userAssignedManagedIdentitySettings: {
///                     clientId: "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     scope: "zop",
///                     tenantId: "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///             },
///             batching: {
///                 latencySeconds: 9312,
///                 maxMessages: 9028,
///             },
///             host: "<account>.blob.core.windows.net",
///         },
///         endpointType: azure_native.iotoperations.EndpointType.DataExplorer,
///         fabricOneLakeSettings: {
///             authentication: {
///                 method: "SystemAssignedManagedIdentity",
///                 systemAssignedManagedIdentitySettings: {
///                     audience: "psxomrfbhoflycm",
///                 },
///                 userAssignedManagedIdentitySettings: {
///                     clientId: "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     scope: "zop",
///                     tenantId: "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///             },
///             batching: {
///                 latencySeconds: 9312,
///                 maxMessages: 9028,
///             },
///             host: "https://<host>.fabric.microsoft.com",
///             names: {
///                 lakehouseName: "wpeathi",
///                 workspaceName: "nwgmitkbljztgms",
///             },
///             oneLakePathType: azure_native.iotoperations.DataflowEndpointFabricPathType.Files,
///         },
///         kafkaSettings: {
///             authentication: {
///                 method: azure_native.iotoperations.KafkaAuthMethod.SystemAssignedManagedIdentity,
///                 saslSettings: {
///                     saslType: azure_native.iotoperations.DataflowEndpointAuthenticationSaslType.Plain,
///                     secretRef: "visyxoztqnylvbyokhtmpdkwes",
///                 },
///                 systemAssignedManagedIdentitySettings: {
///                     audience: "psxomrfbhoflycm",
///                 },
///                 userAssignedManagedIdentitySettings: {
///                     clientId: "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     scope: "zop",
///                     tenantId: "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///                 x509CertificateSettings: {
///                     secretRef: "afwizrystfslkfqd",
///                 },
///             },
///             batching: {
///                 latencyMs: 3679,
///                 maxBytes: 8887,
///                 maxMessages: 2174,
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///             },
///             cloudEventAttributes: "PassThrough",
///             compression: azure_native.iotoperations.DataflowEndpointKafkaCompression.None,
///             consumerGroupId: "ukkzcjiyenhxokat",
///             copyMqttProperties: azure_native.iotoperations.OperationalMode.Enabled,
///             host: "pwcqfiqclcgneolpewnyavoulbip",
///             kafkaAcks: azure_native.iotoperations.DataflowEndpointKafkaAcks.Zero,
///             partitionStrategy: azure_native.iotoperations.DataflowEndpointKafkaPartitionStrategy.Default,
///             tls: {
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///                 trustedCaCertificateConfigMapRef: "tectjjvukvelsreihwadh",
///             },
///         },
///         localStorageSettings: {
///             persistentVolumeClaimRef: "jjwqwvd",
///         },
///         mqttSettings: {
///             authentication: {
///                 method: azure_native.iotoperations.MqttAuthMethod.SystemAssignedManagedIdentity,
///                 serviceAccountTokenSettings: {
///                     audience: "ejbklrbxgjaqleoycgpje",
///                 },
///                 systemAssignedManagedIdentitySettings: {
///                     audience: "psxomrfbhoflycm",
///                 },
///                 userAssignedManagedIdentitySettings: {
///                     clientId: "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     scope: "zop",
///                     tenantId: "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///                 x509CertificateSettings: {
///                     secretRef: "afwizrystfslkfqd",
///                 },
///             },
///             clientIdPrefix: "kkljsdxdirfhwxtkavldekeqhv",
///             cloudEventAttributes: "PassThrough",
///             host: "nyhnxqnbspstctl",
///             keepAliveSeconds: 0,
///             maxInflightMessages: 0,
///             protocol: azure_native.iotoperations.BrokerProtocolType.Mqtt,
///             qos: 1,
///             retain: azure_native.iotoperations.MqttRetainType.Keep,
///             sessionExpirySeconds: 0,
///             tls: {
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///                 trustedCaCertificateConfigMapRef: "tectjjvukvelsreihwadh",
///             },
///         },
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "data_explorer_settings": {
///             "authentication": {
///                 "method": "SystemAssignedManagedIdentity",
///                 "system_assigned_managed_identity_settings": {
///                     "audience": "psxomrfbhoflycm",
///                 },
///                 "user_assigned_managed_identity_settings": {
///                     "client_id": "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     "scope": "zop",
///                     "tenant_id": "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///             },
///             "batching": {
///                 "latency_seconds": 9312,
///                 "max_messages": 9028,
///             },
///             "database": "yqcdpjsifm",
///             "host": "<cluster>.<region>.kusto.windows.net",
///         },
///         "data_lake_storage_settings": {
///             "authentication": {
///                 "access_token_settings": {
///                     "secret_ref": "sevriyphcvnlrnfudqzejecwa",
///                 },
///                 "method": azure_native.iotoperations.DataLakeStorageAuthMethod.SYSTEM_ASSIGNED_MANAGED_IDENTITY,
///                 "system_assigned_managed_identity_settings": {
///                     "audience": "psxomrfbhoflycm",
///                 },
///                 "user_assigned_managed_identity_settings": {
///                     "client_id": "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     "scope": "zop",
///                     "tenant_id": "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///             },
///             "batching": {
///                 "latency_seconds": 9312,
///                 "max_messages": 9028,
///             },
///             "host": "<account>.blob.core.windows.net",
///         },
///         "endpoint_type": azure_native.iotoperations.EndpointType.DATA_EXPLORER,
///         "fabric_one_lake_settings": {
///             "authentication": {
///                 "method": "SystemAssignedManagedIdentity",
///                 "system_assigned_managed_identity_settings": {
///                     "audience": "psxomrfbhoflycm",
///                 },
///                 "user_assigned_managed_identity_settings": {
///                     "client_id": "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     "scope": "zop",
///                     "tenant_id": "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///             },
///             "batching": {
///                 "latency_seconds": 9312,
///                 "max_messages": 9028,
///             },
///             "host": "https://<host>.fabric.microsoft.com",
///             "names": {
///                 "lakehouse_name": "wpeathi",
///                 "workspace_name": "nwgmitkbljztgms",
///             },
///             "one_lake_path_type": azure_native.iotoperations.DataflowEndpointFabricPathType.FILES,
///         },
///         "kafka_settings": {
///             "authentication": {
///                 "method": azure_native.iotoperations.KafkaAuthMethod.SYSTEM_ASSIGNED_MANAGED_IDENTITY,
///                 "sasl_settings": {
///                     "sasl_type": azure_native.iotoperations.DataflowEndpointAuthenticationSaslType.PLAIN,
///                     "secret_ref": "visyxoztqnylvbyokhtmpdkwes",
///                 },
///                 "system_assigned_managed_identity_settings": {
///                     "audience": "psxomrfbhoflycm",
///                 },
///                 "user_assigned_managed_identity_settings": {
///                     "client_id": "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     "scope": "zop",
///                     "tenant_id": "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///                 "x509_certificate_settings": {
///                     "secret_ref": "afwizrystfslkfqd",
///                 },
///             },
///             "batching": {
///                 "latency_ms": 3679,
///                 "max_bytes": 8887,
///                 "max_messages": 2174,
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///             },
///             "cloud_event_attributes": "PassThrough",
///             "compression": azure_native.iotoperations.DataflowEndpointKafkaCompression.NONE,
///             "consumer_group_id": "ukkzcjiyenhxokat",
///             "copy_mqtt_properties": azure_native.iotoperations.OperationalMode.ENABLED,
///             "host": "pwcqfiqclcgneolpewnyavoulbip",
///             "kafka_acks": azure_native.iotoperations.DataflowEndpointKafkaAcks.ZERO,
///             "partition_strategy": azure_native.iotoperations.DataflowEndpointKafkaPartitionStrategy.DEFAULT,
///             "tls": {
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///                 "trusted_ca_certificate_config_map_ref": "tectjjvukvelsreihwadh",
///             },
///         },
///         "local_storage_settings": {
///             "persistent_volume_claim_ref": "jjwqwvd",
///         },
///         "mqtt_settings": {
///             "authentication": {
///                 "method": azure_native.iotoperations.MqttAuthMethod.SYSTEM_ASSIGNED_MANAGED_IDENTITY,
///                 "service_account_token_settings": {
///                     "audience": "ejbklrbxgjaqleoycgpje",
///                 },
///                 "system_assigned_managed_identity_settings": {
///                     "audience": "psxomrfbhoflycm",
///                 },
///                 "user_assigned_managed_identity_settings": {
///                     "client_id": "fb90f267-8872-431a-a76a-a1cec5d3c4d2",
///                     "scope": "zop",
///                     "tenant_id": "ed060aa2-71ff-4d3f-99c4-a9138356fdec",
///                 },
///                 "x509_certificate_settings": {
///                     "secret_ref": "afwizrystfslkfqd",
///                 },
///             },
///             "client_id_prefix": "kkljsdxdirfhwxtkavldekeqhv",
///             "cloud_event_attributes": "PassThrough",
///             "host": "nyhnxqnbspstctl",
///             "keep_alive_seconds": 0,
///             "max_inflight_messages": 0,
///             "protocol": azure_native.iotoperations.BrokerProtocolType.MQTT,
///             "qos": 1,
///             "retain": azure_native.iotoperations.MqttRetainType.KEEP,
///             "session_expiry_seconds": 0,
///             "tls": {
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///                 "trusted_ca_certificate_config_map_ref": "tectjjvukvelsreihwadh",
///             },
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         dataExplorerSettings:
///           authentication:
///             method: SystemAssignedManagedIdentity
///             systemAssignedManagedIdentitySettings:
///               audience: psxomrfbhoflycm
///             userAssignedManagedIdentitySettings:
///               clientId: fb90f267-8872-431a-a76a-a1cec5d3c4d2
///               scope: zop
///               tenantId: ed060aa2-71ff-4d3f-99c4-a9138356fdec
///           batching:
///             latencySeconds: 9312
///             maxMessages: 9028
///           database: yqcdpjsifm
///           host: <cluster>.<region>.kusto.windows.net
///         dataLakeStorageSettings:
///           authentication:
///             accessTokenSettings:
///               secretRef: sevriyphcvnlrnfudqzejecwa
///             method: SystemAssignedManagedIdentity
///             systemAssignedManagedIdentitySettings:
///               audience: psxomrfbhoflycm
///             userAssignedManagedIdentitySettings:
///               clientId: fb90f267-8872-431a-a76a-a1cec5d3c4d2
///               scope: zop
///               tenantId: ed060aa2-71ff-4d3f-99c4-a9138356fdec
///           batching:
///             latencySeconds: 9312
///             maxMessages: 9028
///           host: <account>.blob.core.windows.net
///         endpointType: DataExplorer
///         fabricOneLakeSettings:
///           authentication:
///             method: SystemAssignedManagedIdentity
///             systemAssignedManagedIdentitySettings:
///               audience: psxomrfbhoflycm
///             userAssignedManagedIdentitySettings:
///               clientId: fb90f267-8872-431a-a76a-a1cec5d3c4d2
///               scope: zop
///               tenantId: ed060aa2-71ff-4d3f-99c4-a9138356fdec
///           batching:
///             latencySeconds: 9312
///             maxMessages: 9028
///           host: https://<host>.fabric.microsoft.com
///           names:
///             lakehouseName: wpeathi
///             workspaceName: nwgmitkbljztgms
///           oneLakePathType: Files
///         kafkaSettings:
///           authentication:
///             method: SystemAssignedManagedIdentity
///             saslSettings:
///               saslType: Plain
///               secretRef: visyxoztqnylvbyokhtmpdkwes
///             systemAssignedManagedIdentitySettings:
///               audience: psxomrfbhoflycm
///             userAssignedManagedIdentitySettings:
///               clientId: fb90f267-8872-431a-a76a-a1cec5d3c4d2
///               scope: zop
///               tenantId: ed060aa2-71ff-4d3f-99c4-a9138356fdec
///             x509CertificateSettings:
///               secretRef: afwizrystfslkfqd
///           batching:
///             latencyMs: 3679
///             maxBytes: 8887
///             maxMessages: 2174
///             mode: Enabled
///           cloudEventAttributes: PassThrough
///           compression: None
///           consumerGroupId: ukkzcjiyenhxokat
///           copyMqttProperties: Enabled
///           host: pwcqfiqclcgneolpewnyavoulbip
///           kafkaAcks: Zero
///           partitionStrategy: Default
///           tls:
///             mode: Enabled
///             trustedCaCertificateConfigMapRef: tectjjvukvelsreihwadh
///         localStorageSettings:
///           persistentVolumeClaimRef: jjwqwvd
///         mqttSettings:
///           authentication:
///             method: SystemAssignedManagedIdentity
///             serviceAccountTokenSettings:
///               audience: ejbklrbxgjaqleoycgpje
///             systemAssignedManagedIdentitySettings:
///               audience: psxomrfbhoflycm
///             userAssignedManagedIdentitySettings:
///               clientId: fb90f267-8872-431a-a76a-a1cec5d3c4d2
///               scope: zop
///               tenantId: ed060aa2-71ff-4d3f-99c4-a9138356fdec
///             x509CertificateSettings:
///               secretRef: afwizrystfslkfqd
///           clientIdPrefix: kkljsdxdirfhwxtkavldekeqhv
///           cloudEventAttributes: PassThrough
///           host: nyhnxqnbspstctl
///           keepAliveSeconds: 0
///           maxInflightMessages: 0
///           protocol: Mqtt
///           qos: 1
///           retain: Keep
///           sessionExpirySeconds: 0
///           tls:
///             mode: Enabled
///             trustedCaCertificateConfigMapRef: tectjjvukvelsreihwadh
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate_ADLSv2
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "adlsv2-endpoint",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             DataLakeStorageSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointDataLakeStorageArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointDataLakeStorageAuthenticationArgs
///                 {
///                     AccessTokenSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationAccessTokenArgs
///                     {
///                         SecretRef = "my-secret",
///                     },
///                     Method = AzureNative.IoTOperations.DataLakeStorageAuthMethod.AccessToken,
///                 },
///                 Host = "example.blob.core.windows.net",
///             },
///             EndpointType = AzureNative.IoTOperations.EndpointType.DataLakeStorage,
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("adlsv2-endpoint"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				DataLakeStorageSettings: &iotoperations.DataflowEndpointDataLakeStorageArgs{
/// 					Authentication: &iotoperations.DataflowEndpointDataLakeStorageAuthenticationArgs{
/// 						AccessTokenSettings: &iotoperations.DataflowEndpointAuthenticationAccessTokenArgs{
/// 							SecretRef: pulumi.String("my-secret"),
/// 						},
/// 						Method: pulumi.String(iotoperations.DataLakeStorageAuthMethodAccessToken),
/// 					},
/// 					Host: pulumi.String("example.blob.core.windows.net"),
/// 				},
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeDataLakeStorage),
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointDataLakeStorageArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointDataLakeStorageAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationAccessTokenArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("adlsv2-endpoint")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .dataLakeStorageSettings(DataflowEndpointDataLakeStorageArgs.builder()
///                     .authentication(DataflowEndpointDataLakeStorageAuthenticationArgs.builder()
///                         .accessTokenSettings(DataflowEndpointAuthenticationAccessTokenArgs.builder()
///                             .secretRef("my-secret")
///                             .build())
///                         .method("AccessToken")
///                         .build())
///                     .host("example.blob.core.windows.net")
///                     .build())
///                 .endpointType("DataLakeStorage")
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "adlsv2-endpoint",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         dataLakeStorageSettings: {
///             authentication: {
///                 accessTokenSettings: {
///                     secretRef: "my-secret",
///                 },
///                 method: azure_native.iotoperations.DataLakeStorageAuthMethod.AccessToken,
///             },
///             host: "example.blob.core.windows.net",
///         },
///         endpointType: azure_native.iotoperations.EndpointType.DataLakeStorage,
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="adlsv2-endpoint",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "data_lake_storage_settings": {
///             "authentication": {
///                 "access_token_settings": {
///                     "secret_ref": "my-secret",
///                 },
///                 "method": azure_native.iotoperations.DataLakeStorageAuthMethod.ACCESS_TOKEN,
///             },
///             "host": "example.blob.core.windows.net",
///         },
///         "endpoint_type": azure_native.iotoperations.EndpointType.DATA_LAKE_STORAGE,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: adlsv2-endpoint
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         dataLakeStorageSettings:
///           authentication:
///             accessTokenSettings:
///               secretRef: my-secret
///             method: AccessToken
///           host: example.blob.core.windows.net
///         endpointType: DataLakeStorage
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate_ADX
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "adx-endpoint",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             DataExplorerSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointDataExplorerArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointDataExplorerAuthenticationArgs
///                 {
///                     Method = "SystemAssignedManagedIdentity",
///                     SystemAssignedManagedIdentitySettings = null,
///                 },
///                 Batching = new AzureNative.IoTOperations.Inputs.BatchingConfigurationArgs
///                 {
///                     LatencySeconds = 9312,
///                     MaxMessages = 9028,
///                 },
///                 Database = "example-database",
///                 Host = "example.westeurope.kusto.windows.net",
///             },
///             EndpointType = AzureNative.IoTOperations.EndpointType.DataExplorer,
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("adx-endpoint"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				DataExplorerSettings: &iotoperations.DataflowEndpointDataExplorerArgs{
/// 					Authentication: &iotoperations.DataflowEndpointDataExplorerAuthenticationArgs{
/// 						Method:                                pulumi.Any("SystemAssignedManagedIdentity"),
/// 						SystemAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs{},
/// 					},
/// 					Batching: &iotoperations.BatchingConfigurationArgs{
/// 						LatencySeconds: pulumi.Int(9312),
/// 						MaxMessages:    pulumi.Int(9028),
/// 					},
/// 					Database: pulumi.String("example-database"),
/// 					Host:     pulumi.String("example.westeurope.kusto.windows.net"),
/// 				},
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeDataExplorer),
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointDataExplorerArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointDataExplorerAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BatchingConfigurationArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("adx-endpoint")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .dataExplorerSettings(DataflowEndpointDataExplorerArgs.builder()
///                     .authentication(DataflowEndpointDataExplorerAuthenticationArgs.builder()
///                         .method("SystemAssignedManagedIdentity")
///                         .systemAssignedManagedIdentitySettings(DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs.builder()
///                             .build())
///                         .build())
///                     .batching(BatchingConfigurationArgs.builder()
///                         .latencySeconds(9312)
///                         .maxMessages(9028)
///                         .build())
///                     .database("example-database")
///                     .host("example.westeurope.kusto.windows.net")
///                     .build())
///                 .endpointType("DataExplorer")
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "adx-endpoint",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         dataExplorerSettings: {
///             authentication: {
///                 method: "SystemAssignedManagedIdentity",
///                 systemAssignedManagedIdentitySettings: {},
///             },
///             batching: {
///                 latencySeconds: 9312,
///                 maxMessages: 9028,
///             },
///             database: "example-database",
///             host: "example.westeurope.kusto.windows.net",
///         },
///         endpointType: azure_native.iotoperations.EndpointType.DataExplorer,
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="adx-endpoint",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "data_explorer_settings": {
///             "authentication": {
///                 "method": "SystemAssignedManagedIdentity",
///                 "system_assigned_managed_identity_settings": {},
///             },
///             "batching": {
///                 "latency_seconds": 9312,
///                 "max_messages": 9028,
///             },
///             "database": "example-database",
///             "host": "example.westeurope.kusto.windows.net",
///         },
///         "endpoint_type": azure_native.iotoperations.EndpointType.DATA_EXPLORER,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: adx-endpoint
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         dataExplorerSettings:
///           authentication:
///             method: SystemAssignedManagedIdentity
///             systemAssignedManagedIdentitySettings: {}
///           batching:
///             latencySeconds: 9312
///             maxMessages: 9028
///           database: example-database
///           host: example.westeurope.kusto.windows.net
///         endpointType: DataExplorer
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate_AIO
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "aio-builtin-broker-endpoint",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             EndpointType = AzureNative.IoTOperations.EndpointType.Mqtt,
///             MqttSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointMqttArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointMqttAuthenticationArgs
///                 {
///                     Method = "Kubernetes",
///                     ServiceAccountTokenSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationServiceAccountTokenArgs
///                     {
///                         Audience = "aio-internal",
///                     },
///                 },
///                 Host = "aio-broker:18883",
///                 Tls = new AzureNative.IoTOperations.Inputs.TlsPropertiesArgs
///                 {
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                     TrustedCaCertificateConfigMapRef = "aio-ca-trust-bundle-test-only",
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("aio-builtin-broker-endpoint"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeMqtt),
/// 				MqttSettings: &iotoperations.DataflowEndpointMqttArgs{
/// 					Authentication: &iotoperations.DataflowEndpointMqttAuthenticationArgs{
/// 						Method: pulumi.String("Kubernetes"),
/// 						ServiceAccountTokenSettings: &iotoperations.DataflowEndpointAuthenticationServiceAccountTokenArgs{
/// 							Audience: pulumi.String("aio-internal"),
/// 						},
/// 					},
/// 					Host: pulumi.String("aio-broker:18883"),
/// 					Tls: &iotoperations.TlsPropertiesArgs{
/// 						Mode:                             pulumi.String(iotoperations.OperationalModeEnabled),
/// 						TrustedCaCertificateConfigMapRef: pulumi.String("aio-ca-trust-bundle-test-only"),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointMqttArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointMqttAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationServiceAccountTokenArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.TlsPropertiesArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("aio-builtin-broker-endpoint")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .endpointType("Mqtt")
///                 .mqttSettings(DataflowEndpointMqttArgs.builder()
///                     .authentication(DataflowEndpointMqttAuthenticationArgs.builder()
///                         .method("Kubernetes")
///                         .serviceAccountTokenSettings(DataflowEndpointAuthenticationServiceAccountTokenArgs.builder()
///                             .audience("aio-internal")
///                             .build())
///                         .build())
///                     .host("aio-broker:18883")
///                     .tls(TlsPropertiesArgs.builder()
///                         .mode("Enabled")
///                         .trustedCaCertificateConfigMapRef("aio-ca-trust-bundle-test-only")
///                         .build())
///                     .build())
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "aio-builtin-broker-endpoint",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         endpointType: azure_native.iotoperations.EndpointType.Mqtt,
///         mqttSettings: {
///             authentication: {
///                 method: "Kubernetes",
///                 serviceAccountTokenSettings: {
///                     audience: "aio-internal",
///                 },
///             },
///             host: "aio-broker:18883",
///             tls: {
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///                 trustedCaCertificateConfigMapRef: "aio-ca-trust-bundle-test-only",
///             },
///         },
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="aio-builtin-broker-endpoint",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "endpoint_type": azure_native.iotoperations.EndpointType.MQTT,
///         "mqtt_settings": {
///             "authentication": {
///                 "method": "Kubernetes",
///                 "service_account_token_settings": {
///                     "audience": "aio-internal",
///                 },
///             },
///             "host": "aio-broker:18883",
///             "tls": {
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///                 "trusted_ca_certificate_config_map_ref": "aio-ca-trust-bundle-test-only",
///             },
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: aio-builtin-broker-endpoint
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         endpointType: Mqtt
///         mqttSettings:
///           authentication:
///             method: Kubernetes
///             serviceAccountTokenSettings:
///               audience: aio-internal
///           host: aio-broker:18883
///           tls:
///             mode: Enabled
///             trustedCaCertificateConfigMapRef: aio-ca-trust-bundle-test-only
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate_EventGrid
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "event-grid-endpoint",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             EndpointType = AzureNative.IoTOperations.EndpointType.Mqtt,
///             MqttSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointMqttArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointMqttAuthenticationArgs
///                 {
///                     Method = AzureNative.IoTOperations.MqttAuthMethod.SystemAssignedManagedIdentity,
///                     SystemAssignedManagedIdentitySettings = null,
///                 },
///                 Host = "example.westeurope-1.ts.eventgrid.azure.net:8883",
///                 Tls = new AzureNative.IoTOperations.Inputs.TlsPropertiesArgs
///                 {
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("event-grid-endpoint"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeMqtt),
/// 				MqttSettings: &iotoperations.DataflowEndpointMqttArgs{
/// 					Authentication: &iotoperations.DataflowEndpointMqttAuthenticationArgs{
/// 						Method:                                pulumi.String(iotoperations.MqttAuthMethodSystemAssignedManagedIdentity),
/// 						SystemAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs{},
/// 					},
/// 					Host: pulumi.String("example.westeurope-1.ts.eventgrid.azure.net:8883"),
/// 					Tls: &iotoperations.TlsPropertiesArgs{
/// 						Mode: pulumi.String(iotoperations.OperationalModeEnabled),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointMqttArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointMqttAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.TlsPropertiesArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("event-grid-endpoint")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .endpointType("Mqtt")
///                 .mqttSettings(DataflowEndpointMqttArgs.builder()
///                     .authentication(DataflowEndpointMqttAuthenticationArgs.builder()
///                         .method("SystemAssignedManagedIdentity")
///                         .systemAssignedManagedIdentitySettings(DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs.builder()
///                             .build())
///                         .build())
///                     .host("example.westeurope-1.ts.eventgrid.azure.net:8883")
///                     .tls(TlsPropertiesArgs.builder()
///                         .mode("Enabled")
///                         .build())
///                     .build())
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "event-grid-endpoint",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         endpointType: azure_native.iotoperations.EndpointType.Mqtt,
///         mqttSettings: {
///             authentication: {
///                 method: azure_native.iotoperations.MqttAuthMethod.SystemAssignedManagedIdentity,
///                 systemAssignedManagedIdentitySettings: {},
///             },
///             host: "example.westeurope-1.ts.eventgrid.azure.net:8883",
///             tls: {
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///             },
///         },
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="event-grid-endpoint",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "endpoint_type": azure_native.iotoperations.EndpointType.MQTT,
///         "mqtt_settings": {
///             "authentication": {
///                 "method": azure_native.iotoperations.MqttAuthMethod.SYSTEM_ASSIGNED_MANAGED_IDENTITY,
///                 "system_assigned_managed_identity_settings": {},
///             },
///             "host": "example.westeurope-1.ts.eventgrid.azure.net:8883",
///             "tls": {
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///             },
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: event-grid-endpoint
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         endpointType: Mqtt
///         mqttSettings:
///           authentication:
///             method: SystemAssignedManagedIdentity
///             systemAssignedManagedIdentitySettings: {}
///           host: example.westeurope-1.ts.eventgrid.azure.net:8883
///           tls:
///             mode: Enabled
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate_EventHub
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "event-hub-endpoint",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             EndpointType = AzureNative.IoTOperations.EndpointType.Kafka,
///             KafkaSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointKafkaArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointKafkaAuthenticationArgs
///                 {
///                     Method = AzureNative.IoTOperations.KafkaAuthMethod.SystemAssignedManagedIdentity,
///                     SystemAssignedManagedIdentitySettings = null,
///                 },
///                 ConsumerGroupId = "aiodataflows",
///                 Host = "example.servicebus.windows.net:9093",
///                 Tls = new AzureNative.IoTOperations.Inputs.TlsPropertiesArgs
///                 {
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("event-hub-endpoint"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeKafka),
/// 				KafkaSettings: &iotoperations.DataflowEndpointKafkaArgs{
/// 					Authentication: &iotoperations.DataflowEndpointKafkaAuthenticationArgs{
/// 						Method:                                pulumi.String(iotoperations.KafkaAuthMethodSystemAssignedManagedIdentity),
/// 						SystemAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs{},
/// 					},
/// 					ConsumerGroupId: pulumi.String("aiodataflows"),
/// 					Host:            pulumi.String("example.servicebus.windows.net:9093"),
/// 					Tls: &iotoperations.TlsPropertiesArgs{
/// 						Mode: pulumi.String(iotoperations.OperationalModeEnabled),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointKafkaArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointKafkaAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.TlsPropertiesArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("event-hub-endpoint")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .endpointType("Kafka")
///                 .kafkaSettings(DataflowEndpointKafkaArgs.builder()
///                     .authentication(DataflowEndpointKafkaAuthenticationArgs.builder()
///                         .method("SystemAssignedManagedIdentity")
///                         .systemAssignedManagedIdentitySettings(DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs.builder()
///                             .build())
///                         .build())
///                     .consumerGroupId("aiodataflows")
///                     .host("example.servicebus.windows.net:9093")
///                     .tls(TlsPropertiesArgs.builder()
///                         .mode("Enabled")
///                         .build())
///                     .build())
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "event-hub-endpoint",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         endpointType: azure_native.iotoperations.EndpointType.Kafka,
///         kafkaSettings: {
///             authentication: {
///                 method: azure_native.iotoperations.KafkaAuthMethod.SystemAssignedManagedIdentity,
///                 systemAssignedManagedIdentitySettings: {},
///             },
///             consumerGroupId: "aiodataflows",
///             host: "example.servicebus.windows.net:9093",
///             tls: {
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///             },
///         },
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="event-hub-endpoint",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "endpoint_type": azure_native.iotoperations.EndpointType.KAFKA,
///         "kafka_settings": {
///             "authentication": {
///                 "method": azure_native.iotoperations.KafkaAuthMethod.SYSTEM_ASSIGNED_MANAGED_IDENTITY,
///                 "system_assigned_managed_identity_settings": {},
///             },
///             "consumer_group_id": "aiodataflows",
///             "host": "example.servicebus.windows.net:9093",
///             "tls": {
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///             },
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: event-hub-endpoint
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         endpointType: Kafka
///         kafkaSettings:
///           authentication:
///             method: SystemAssignedManagedIdentity
///             systemAssignedManagedIdentitySettings: {}
///           consumerGroupId: aiodataflows
///           host: example.servicebus.windows.net:9093
///           tls:
///             mode: Enabled
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate_Fabric
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "fabric-endpoint",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             EndpointType = AzureNative.IoTOperations.EndpointType.FabricOneLake,
///             FabricOneLakeSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointFabricOneLakeArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointFabricOneLakeAuthenticationArgs
///                 {
///                     Method = "SystemAssignedManagedIdentity",
///                     SystemAssignedManagedIdentitySettings = null,
///                 },
///                 Host = "onelake.dfs.fabric.microsoft.com",
///                 Names = new AzureNative.IoTOperations.Inputs.DataflowEndpointFabricOneLakeNamesArgs
///                 {
///                     LakehouseName = "example-lakehouse",
///                     WorkspaceName = "example-workspace",
///                 },
///                 OneLakePathType = AzureNative.IoTOperations.DataflowEndpointFabricPathType.Tables,
///             },
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("fabric-endpoint"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeFabricOneLake),
/// 				FabricOneLakeSettings: &iotoperations.DataflowEndpointFabricOneLakeArgs{
/// 					Authentication: &iotoperations.DataflowEndpointFabricOneLakeAuthenticationArgs{
/// 						Method:                                pulumi.Any("SystemAssignedManagedIdentity"),
/// 						SystemAssignedManagedIdentitySettings: &iotoperations.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs{},
/// 					},
/// 					Host: pulumi.String("onelake.dfs.fabric.microsoft.com"),
/// 					Names: &iotoperations.DataflowEndpointFabricOneLakeNamesArgs{
/// 						LakehouseName: pulumi.String("example-lakehouse"),
/// 						WorkspaceName: pulumi.String("example-workspace"),
/// 					},
/// 					OneLakePathType: pulumi.String(iotoperations.DataflowEndpointFabricPathTypeTables),
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointFabricOneLakeArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointFabricOneLakeAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointFabricOneLakeNamesArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("fabric-endpoint")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .endpointType("FabricOneLake")
///                 .fabricOneLakeSettings(DataflowEndpointFabricOneLakeArgs.builder()
///                     .authentication(DataflowEndpointFabricOneLakeAuthenticationArgs.builder()
///                         .method("SystemAssignedManagedIdentity")
///                         .systemAssignedManagedIdentitySettings(DataflowEndpointAuthenticationSystemAssignedManagedIdentityArgs.builder()
///                             .build())
///                         .build())
///                     .host("onelake.dfs.fabric.microsoft.com")
///                     .names(DataflowEndpointFabricOneLakeNamesArgs.builder()
///                         .lakehouseName("example-lakehouse")
///                         .workspaceName("example-workspace")
///                         .build())
///                     .oneLakePathType("Tables")
///                     .build())
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "fabric-endpoint",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         endpointType: azure_native.iotoperations.EndpointType.FabricOneLake,
///         fabricOneLakeSettings: {
///             authentication: {
///                 method: "SystemAssignedManagedIdentity",
///                 systemAssignedManagedIdentitySettings: {},
///             },
///             host: "onelake.dfs.fabric.microsoft.com",
///             names: {
///                 lakehouseName: "example-lakehouse",
///                 workspaceName: "example-workspace",
///             },
///             oneLakePathType: azure_native.iotoperations.DataflowEndpointFabricPathType.Tables,
///         },
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="fabric-endpoint",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "endpoint_type": azure_native.iotoperations.EndpointType.FABRIC_ONE_LAKE,
///         "fabric_one_lake_settings": {
///             "authentication": {
///                 "method": "SystemAssignedManagedIdentity",
///                 "system_assigned_managed_identity_settings": {},
///             },
///             "host": "onelake.dfs.fabric.microsoft.com",
///             "names": {
///                 "lakehouse_name": "example-lakehouse",
///                 "workspace_name": "example-workspace",
///             },
///             "one_lake_path_type": azure_native.iotoperations.DataflowEndpointFabricPathType.TABLES,
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: fabric-endpoint
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         endpointType: FabricOneLake
///         fabricOneLakeSettings:
///           authentication:
///             method: SystemAssignedManagedIdentity
///             systemAssignedManagedIdentitySettings: {}
///           host: onelake.dfs.fabric.microsoft.com
///           names:
///             lakehouseName: example-lakehouse
///             workspaceName: example-workspace
///           oneLakePathType: Tables
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate_Kafka
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "generic-kafka-endpoint",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             EndpointType = AzureNative.IoTOperations.EndpointType.Kafka,
///             KafkaSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointKafkaArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointKafkaAuthenticationArgs
///                 {
///                     Method = AzureNative.IoTOperations.KafkaAuthMethod.Sasl,
///                     SaslSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationSaslArgs
///                     {
///                         SaslType = AzureNative.IoTOperations.DataflowEndpointAuthenticationSaslType.Plain,
///                         SecretRef = "my-secret",
///                     },
///                 },
///                 Batching = new AzureNative.IoTOperations.Inputs.DataflowEndpointKafkaBatchingArgs
///                 {
///                     LatencyMs = 5,
///                     MaxBytes = 1000000,
///                     MaxMessages = 100000,
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 },
///                 CloudEventAttributes = AzureNative.IoTOperations.CloudEventAttributeType.Propagate,
///                 Compression = AzureNative.IoTOperations.DataflowEndpointKafkaCompression.Gzip,
///                 ConsumerGroupId = "dataflows",
///                 CopyMqttProperties = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 Host = "example.kafka.local:9093",
///                 KafkaAcks = AzureNative.IoTOperations.DataflowEndpointKafkaAcks.All,
///                 PartitionStrategy = AzureNative.IoTOperations.DataflowEndpointKafkaPartitionStrategy.Default,
///                 Tls = new AzureNative.IoTOperations.Inputs.TlsPropertiesArgs
///                 {
///                     Mode = AzureNative.IoTOperations.OperationalMode.Enabled,
///                     TrustedCaCertificateConfigMapRef = "ca-certificates",
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("generic-kafka-endpoint"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeKafka),
/// 				KafkaSettings: &iotoperations.DataflowEndpointKafkaArgs{
/// 					Authentication: &iotoperations.DataflowEndpointKafkaAuthenticationArgs{
/// 						Method: pulumi.String(iotoperations.KafkaAuthMethodSasl),
/// 						SaslSettings: &iotoperations.DataflowEndpointAuthenticationSaslArgs{
/// 							SaslType:  pulumi.String(iotoperations.DataflowEndpointAuthenticationSaslTypePlain),
/// 							SecretRef: pulumi.String("my-secret"),
/// 						},
/// 					},
/// 					Batching: &iotoperations.DataflowEndpointKafkaBatchingArgs{
/// 						LatencyMs:   pulumi.Int(5),
/// 						MaxBytes:    pulumi.Int(1000000),
/// 						MaxMessages: pulumi.Int(100000),
/// 						Mode:        pulumi.String(iotoperations.OperationalModeEnabled),
/// 					},
/// 					CloudEventAttributes: pulumi.String(iotoperations.CloudEventAttributeTypePropagate),
/// 					Compression:          pulumi.String(iotoperations.DataflowEndpointKafkaCompressionGzip),
/// 					ConsumerGroupId:      pulumi.String("dataflows"),
/// 					CopyMqttProperties:   pulumi.String(iotoperations.OperationalModeEnabled),
/// 					Host:                 pulumi.String("example.kafka.local:9093"),
/// 					KafkaAcks:            pulumi.String(iotoperations.DataflowEndpointKafkaAcksAll),
/// 					PartitionStrategy:    pulumi.String(iotoperations.DataflowEndpointKafkaPartitionStrategyDefault),
/// 					Tls: &iotoperations.TlsPropertiesArgs{
/// 						Mode:                             pulumi.String(iotoperations.OperationalModeEnabled),
/// 						TrustedCaCertificateConfigMapRef: pulumi.String("ca-certificates"),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointKafkaArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointKafkaAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationSaslArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointKafkaBatchingArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.TlsPropertiesArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("generic-kafka-endpoint")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .endpointType("Kafka")
///                 .kafkaSettings(DataflowEndpointKafkaArgs.builder()
///                     .authentication(DataflowEndpointKafkaAuthenticationArgs.builder()
///                         .method("Sasl")
///                         .saslSettings(DataflowEndpointAuthenticationSaslArgs.builder()
///                             .saslType("Plain")
///                             .secretRef("my-secret")
///                             .build())
///                         .build())
///                     .batching(DataflowEndpointKafkaBatchingArgs.builder()
///                         .latencyMs(5)
///                         .maxBytes(1000000)
///                         .maxMessages(100000)
///                         .mode("Enabled")
///                         .build())
///                     .cloudEventAttributes("Propagate")
///                     .compression("Gzip")
///                     .consumerGroupId("dataflows")
///                     .copyMqttProperties("Enabled")
///                     .host("example.kafka.local:9093")
///                     .kafkaAcks("All")
///                     .partitionStrategy("Default")
///                     .tls(TlsPropertiesArgs.builder()
///                         .mode("Enabled")
///                         .trustedCaCertificateConfigMapRef("ca-certificates")
///                         .build())
///                     .build())
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "generic-kafka-endpoint",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         endpointType: azure_native.iotoperations.EndpointType.Kafka,
///         kafkaSettings: {
///             authentication: {
///                 method: azure_native.iotoperations.KafkaAuthMethod.Sasl,
///                 saslSettings: {
///                     saslType: azure_native.iotoperations.DataflowEndpointAuthenticationSaslType.Plain,
///                     secretRef: "my-secret",
///                 },
///             },
///             batching: {
///                 latencyMs: 5,
///                 maxBytes: 1000000,
///                 maxMessages: 100000,
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///             },
///             cloudEventAttributes: azure_native.iotoperations.CloudEventAttributeType.Propagate,
///             compression: azure_native.iotoperations.DataflowEndpointKafkaCompression.Gzip,
///             consumerGroupId: "dataflows",
///             copyMqttProperties: azure_native.iotoperations.OperationalMode.Enabled,
///             host: "example.kafka.local:9093",
///             kafkaAcks: azure_native.iotoperations.DataflowEndpointKafkaAcks.All,
///             partitionStrategy: azure_native.iotoperations.DataflowEndpointKafkaPartitionStrategy.Default,
///             tls: {
///                 mode: azure_native.iotoperations.OperationalMode.Enabled,
///                 trustedCaCertificateConfigMapRef: "ca-certificates",
///             },
///         },
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="generic-kafka-endpoint",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "endpoint_type": azure_native.iotoperations.EndpointType.KAFKA,
///         "kafka_settings": {
///             "authentication": {
///                 "method": azure_native.iotoperations.KafkaAuthMethod.SASL,
///                 "sasl_settings": {
///                     "sasl_type": azure_native.iotoperations.DataflowEndpointAuthenticationSaslType.PLAIN,
///                     "secret_ref": "my-secret",
///                 },
///             },
///             "batching": {
///                 "latency_ms": 5,
///                 "max_bytes": 1000000,
///                 "max_messages": 100000,
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///             },
///             "cloud_event_attributes": azure_native.iotoperations.CloudEventAttributeType.PROPAGATE,
///             "compression": azure_native.iotoperations.DataflowEndpointKafkaCompression.GZIP,
///             "consumer_group_id": "dataflows",
///             "copy_mqtt_properties": azure_native.iotoperations.OperationalMode.ENABLED,
///             "host": "example.kafka.local:9093",
///             "kafka_acks": azure_native.iotoperations.DataflowEndpointKafkaAcks.ALL,
///             "partition_strategy": azure_native.iotoperations.DataflowEndpointKafkaPartitionStrategy.DEFAULT,
///             "tls": {
///                 "mode": azure_native.iotoperations.OperationalMode.ENABLED,
///                 "trusted_ca_certificate_config_map_ref": "ca-certificates",
///             },
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: generic-kafka-endpoint
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         endpointType: Kafka
///         kafkaSettings:
///           authentication:
///             method: Sasl
///             saslSettings:
///               saslType: Plain
///               secretRef: my-secret
///           batching:
///             latencyMs: 5
///             maxBytes: 1e+06
///             maxMessages: 100000
///             mode: Enabled
///           cloudEventAttributes: Propagate
///           compression: Gzip
///           consumerGroupId: dataflows
///           copyMqttProperties: Enabled
///           host: example.kafka.local:9093
///           kafkaAcks: All
///           partitionStrategy: Default
///           tls:
///             mode: Enabled
///             trustedCaCertificateConfigMapRef: ca-certificates
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate_LocalStorage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "local-storage-endpoint",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             EndpointType = AzureNative.IoTOperations.EndpointType.LocalStorage,
///             LocalStorageSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointLocalStorageArgs
///             {
///                 PersistentVolumeClaimRef = "example-pvc",
///             },
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("local-storage-endpoint"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeLocalStorage),
/// 				LocalStorageSettings: &iotoperations.DataflowEndpointLocalStorageArgs{
/// 					PersistentVolumeClaimRef: pulumi.String("example-pvc"),
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointLocalStorageArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("local-storage-endpoint")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .endpointType("LocalStorage")
///                 .localStorageSettings(DataflowEndpointLocalStorageArgs.builder()
///                     .persistentVolumeClaimRef("example-pvc")
///                     .build())
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "local-storage-endpoint",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         endpointType: azure_native.iotoperations.EndpointType.LocalStorage,
///         localStorageSettings: {
///             persistentVolumeClaimRef: "example-pvc",
///         },
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="local-storage-endpoint",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "endpoint_type": azure_native.iotoperations.EndpointType.LOCAL_STORAGE,
///         "local_storage_settings": {
///             "persistent_volume_claim_ref": "example-pvc",
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: local-storage-endpoint
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         endpointType: LocalStorage
///         localStorageSettings:
///           persistentVolumeClaimRef: example-pvc
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataflowEndpoint_CreateOrUpdate_MQTT
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataflowEndpoint = new AzureNative.IoTOperations.DataflowEndpoint("dataflowEndpoint", new()
///     {
///         DataflowEndpointName = "generic-mqtt-broker-endpoint",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.DataflowEndpointPropertiesArgs
///         {
///             EndpointType = AzureNative.IoTOperations.EndpointType.Mqtt,
///             MqttSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointMqttArgs
///             {
///                 Authentication = new AzureNative.IoTOperations.Inputs.DataflowEndpointMqttAuthenticationArgs
///                 {
///                     Method = AzureNative.IoTOperations.MqttAuthMethod.X509Certificate,
///                     X509CertificateSettings = new AzureNative.IoTOperations.Inputs.DataflowEndpointAuthenticationX509Args
///                     {
///                         SecretRef = "example-secret",
///                     },
///                 },
///                 ClientIdPrefix = "factory-gateway",
///                 Host = "example.broker.local:1883",
///                 KeepAliveSeconds = 60,
///                 MaxInflightMessages = 100,
///                 Protocol = AzureNative.IoTOperations.BrokerProtocolType.WebSockets,
///                 Qos = 1,
///                 Retain = AzureNative.IoTOperations.MqttRetainType.Keep,
///                 SessionExpirySeconds = 3600,
///                 Tls = new AzureNative.IoTOperations.Inputs.TlsPropertiesArgs
///                 {
///                     Mode = AzureNative.IoTOperations.OperationalMode.Disabled,
///                 },
///             },
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
/// 		_, err := iotoperations.NewDataflowEndpoint(ctx, "dataflowEndpoint", &iotoperations.DataflowEndpointArgs{
/// 			DataflowEndpointName: pulumi.String("generic-mqtt-broker-endpoint"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.DataflowEndpointPropertiesArgs{
/// 				EndpointType: pulumi.String(iotoperations.EndpointTypeMqtt),
/// 				MqttSettings: &iotoperations.DataflowEndpointMqttArgs{
/// 					Authentication: &iotoperations.DataflowEndpointMqttAuthenticationArgs{
/// 						Method: pulumi.String(iotoperations.MqttAuthMethodX509Certificate),
/// 						X509CertificateSettings: &iotoperations.DataflowEndpointAuthenticationX509Args{
/// 							SecretRef: pulumi.String("example-secret"),
/// 						},
/// 					},
/// 					ClientIdPrefix:       pulumi.String("factory-gateway"),
/// 					Host:                 pulumi.String("example.broker.local:1883"),
/// 					KeepAliveSeconds:     pulumi.Int(60),
/// 					MaxInflightMessages:  pulumi.Int(100),
/// 					Protocol:             pulumi.String(iotoperations.BrokerProtocolTypeWebSockets),
/// 					Qos:                  pulumi.Int(1),
/// 					Retain:               pulumi.String(iotoperations.MqttRetainTypeKeep),
/// 					SessionExpirySeconds: pulumi.Int(3600),
/// 					Tls: &iotoperations.TlsPropertiesArgs{
/// 						Mode: pulumi.String(iotoperations.OperationalModeDisabled),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.iotoperations.DataflowEndpoint;
/// import com.pulumi.azurenative.iotoperations.DataflowEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointMqttArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointMqttAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.DataflowEndpointAuthenticationX509Args;
/// import com.pulumi.azurenative.iotoperations.inputs.TlsPropertiesArgs;
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
///         var dataflowEndpoint = new DataflowEndpoint("dataflowEndpoint", DataflowEndpointArgs.builder()
///             .dataflowEndpointName("generic-mqtt-broker-endpoint")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(DataflowEndpointPropertiesArgs.builder()
///                 .endpointType("Mqtt")
///                 .mqttSettings(DataflowEndpointMqttArgs.builder()
///                     .authentication(DataflowEndpointMqttAuthenticationArgs.builder()
///                         .method("X509Certificate")
///                         .x509CertificateSettings(DataflowEndpointAuthenticationX509Args.builder()
///                             .secretRef("example-secret")
///                             .build())
///                         .build())
///                     .clientIdPrefix("factory-gateway")
///                     .host("example.broker.local:1883")
///                     .keepAliveSeconds(60)
///                     .maxInflightMessages(100)
///                     .protocol("WebSockets")
///                     .qos(1)
///                     .retain("Keep")
///                     .sessionExpirySeconds(3600)
///                     .tls(TlsPropertiesArgs.builder()
///                         .mode("Disabled")
///                         .build())
///                     .build())
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
/// const dataflowEndpoint = new azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint", {
///     dataflowEndpointName: "generic-mqtt-broker-endpoint",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         endpointType: azure_native.iotoperations.EndpointType.Mqtt,
///         mqttSettings: {
///             authentication: {
///                 method: azure_native.iotoperations.MqttAuthMethod.X509Certificate,
///                 x509CertificateSettings: {
///                     secretRef: "example-secret",
///                 },
///             },
///             clientIdPrefix: "factory-gateway",
///             host: "example.broker.local:1883",
///             keepAliveSeconds: 60,
///             maxInflightMessages: 100,
///             protocol: azure_native.iotoperations.BrokerProtocolType.WebSockets,
///             qos: 1,
///             retain: azure_native.iotoperations.MqttRetainType.Keep,
///             sessionExpirySeconds: 3600,
///             tls: {
///                 mode: azure_native.iotoperations.OperationalMode.Disabled,
///             },
///         },
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
/// dataflow_endpoint = azure_native.iotoperations.DataflowEndpoint("dataflowEndpoint",
///     dataflow_endpoint_name="generic-mqtt-broker-endpoint",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "endpoint_type": azure_native.iotoperations.EndpointType.MQTT,
///         "mqtt_settings": {
///             "authentication": {
///                 "method": azure_native.iotoperations.MqttAuthMethod.X509_CERTIFICATE,
///                 "x509_certificate_settings": {
///                     "secret_ref": "example-secret",
///                 },
///             },
///             "client_id_prefix": "factory-gateway",
///             "host": "example.broker.local:1883",
///             "keep_alive_seconds": 60,
///             "max_inflight_messages": 100,
///             "protocol": azure_native.iotoperations.BrokerProtocolType.WEB_SOCKETS,
///             "qos": 1,
///             "retain": azure_native.iotoperations.MqttRetainType.KEEP,
///             "session_expiry_seconds": 3600,
///             "tls": {
///                 "mode": azure_native.iotoperations.OperationalMode.DISABLED,
///             },
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   dataflowEndpoint:
///     type: azure-native:iotoperations:DataflowEndpoint
///     properties:
///       dataflowEndpointName: generic-mqtt-broker-endpoint
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         endpointType: Mqtt
///         mqttSettings:
///           authentication:
///             method: X509Certificate
///             x509CertificateSettings:
///               secretRef: example-secret
///           clientIdPrefix: factory-gateway
///           host: example.broker.local:1883
///           keepAliveSeconds: 60
///           maxInflightMessages: 100
///           protocol: WebSockets
///           qos: 1
///           retain: Keep
///           sessionExpirySeconds: 3600
///           tls:
///             mode: Disabled
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
/// $ pulumi import azure-native:iotoperations:DataflowEndpoint zyhxscudobzfacetvgyjiav /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/dataflowEndpoints/{dataflowEndpointName}
/// ```
class DataflowEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<DataflowEndpointPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataflowEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataflowEndpoint]. {@macro pulumi_iotoperations_dataflow_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataflowEndpoint(
    String name, {
    DataflowEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:iotoperations:DataflowEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
    );
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataflowEndpointPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
