import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image_response.dart';
import 'extended_location_property_response.dart';
import 'local_broker_connection_spec_response.dart';
import 'mqtt_bridge_connector_args.dart';
import 'mqtt_bridge_remote_broker_connection_spec_response.dart';
import 'node_tolerations_response.dart';
import 'system_data_response.dart';

/// MQ mqttBridgeConnector resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MqttBridgeConnector_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mqttBridgeConnector = new AzureNative.IoTOperationsMQ.MqttBridgeConnector("mqttBridgeConnector", new()
///     {
///         BridgeInstances = 4528,
///         ClientIdPrefix = "yqipejvabahsexbnttiegjnh",
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         Image = new AzureNative.IoTOperationsMQ.Inputs.ContainerImageArgs
///         {
///             PullPolicy = "imfuzvqxgbdwliqnn",
///             PullSecrets = "klnqimxqsrdwhcqldjvdtsrs",
///             Repository = "m",
///             Tag = "jygfdiamhhm",
///         },
///         LocalBrokerConnection = new AzureNative.IoTOperationsMQ.Inputs.LocalBrokerConnectionSpecArgs
///         {
///             Authentication = new AzureNative.IoTOperationsMQ.Inputs.LocalBrokerAuthenticationMethodsArgs
///             {
///                 Kubernetes = new AzureNative.IoTOperationsMQ.Inputs.LocalBrokerKubernetesAuthenticationArgs
///                 {
///                     SecretPath = "soukzfkouir",
///                     ServiceAccountTokenName = "suwetviuhmhorhvsidlznnufe",
///                 },
///             },
///             Endpoint = "xc",
///             Tls = new AzureNative.IoTOperationsMQ.Inputs.LocalBrokerConnectionTlsArgs
///             {
///                 TlsEnabled = true,
///                 TrustedCaCertificateConfigMap = "rinkomfeznsfedbmllxlbmmhc",
///             },
///         },
///         Location = "frztvxzhskx",
///         LogLevel = "gpgijsotipdtvvkpnckuziqqv",
///         MqName = "R8-6x-Y-L-F-21RP5-XVv",
///         MqttBridgeConnectorName = "k1v-U4P2440C1b7T8y-G",
///         NodeTolerations = new AzureNative.IoTOperationsMQ.Inputs.NodeTolerationsArgs
///         {
///             Effect = "eeswvciblqmmaeesjoflyvxqbz",
///             Key = "wbrstdwxgm",
///             Operator = "lbegegneekwnyodtzraarivtwhmzep",
///             Value = "sfafsjdcezdmkwibxeluukxgl",
///         },
///         Protocol = AzureNative.IoTOperationsMQ.MqttProtocol.V3,
///         RemoteBrokerConnection = new AzureNative.IoTOperationsMQ.Inputs.MqttBridgeRemoteBrokerConnectionSpecArgs
///         {
///             Authentication = new AzureNative.IoTOperationsMQ.Inputs.MqttBridgeRemoteBrokerAuthenticationMethodsArgs
///             {
///                 SystemAssignedManagedIdentity = new AzureNative.IoTOperationsMQ.Inputs.ManagedIdentityAuthenticationArgs
///                 {
///                     Audience = "kjderojhpehosgfcrxxbh",
///                     ExtensionName = "cyckjqqzspleajbtkniwrfsqygjfhe",
///                 },
///                 X509 = new AzureNative.IoTOperationsMQ.Inputs.MqttBridgeRemoteBrokerX509AuthenticationArgs
///                 {
///                     KeyVault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultCertificatePropertiesArgs
///                     {
///                         Vault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultConnectionPropertiesArgs
///                         {
///                             Credentials = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultCredentialsPropertiesArgs
///                             {
///                                 ServicePrincipalLocalSecretName = "wuimjwpbhoglbsxxa",
///                             },
///                             DirectoryId = "eyjniptiykzcgbzok",
///                             Name = "lxmwfan",
///                         },
///                         VaultCaChainSecret = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                         {
///                             Name = "bmectskddmpjxnsogwooexj",
///                             Version = "unjfbf",
///                         },
///                         VaultCert = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                         {
///                             Name = "bmectskddmpjxnsogwooexj",
///                             Version = "unjfbf",
///                         },
///                     },
///                     SecretName = "x",
///                 },
///             },
///             Endpoint = "bshzrukafmxjgnrlhzlxbbzjdbqh",
///             Protocol = AzureNative.IoTOperationsMQ.MqttBridgeRemoteBrokerProtocol.Mqtt,
///             Tls = new AzureNative.IoTOperationsMQ.Inputs.MqttBridgeRemoteBrokerConnectionTlsArgs
///             {
///                 TlsEnabled = true,
///                 TrustedCaCertificateConfigMap = "ivtebqmclgfjx",
///             },
///         },
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
/// 		_, err := iotoperationsmq.NewMqttBridgeConnector(ctx, "mqttBridgeConnector", &iotoperationsmq.MqttBridgeConnectorArgs{
/// 			BridgeInstances: pulumi.Int(4528),
/// 			ClientIdPrefix:  pulumi.String("yqipejvabahsexbnttiegjnh"),
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Image: &iotoperationsmq.ContainerImageArgs{
/// 				PullPolicy:  pulumi.String("imfuzvqxgbdwliqnn"),
/// 				PullSecrets: pulumi.String("klnqimxqsrdwhcqldjvdtsrs"),
/// 				Repository:  pulumi.String("m"),
/// 				Tag:         pulumi.String("jygfdiamhhm"),
/// 			},
/// 			LocalBrokerConnection: &iotoperationsmq.LocalBrokerConnectionSpecArgs{
/// 				Authentication: &iotoperationsmq.LocalBrokerAuthenticationMethodsArgs{
/// 					Kubernetes: &iotoperationsmq.LocalBrokerKubernetesAuthenticationArgs{
/// 						SecretPath:              pulumi.String("soukzfkouir"),
/// 						ServiceAccountTokenName: pulumi.String("suwetviuhmhorhvsidlznnufe"),
/// 					},
/// 				},
/// 				Endpoint: pulumi.String("xc"),
/// 				Tls: &iotoperationsmq.LocalBrokerConnectionTlsArgs{
/// 					TlsEnabled:                    pulumi.Bool(true),
/// 					TrustedCaCertificateConfigMap: pulumi.String("rinkomfeznsfedbmllxlbmmhc"),
/// 				},
/// 			},
/// 			Location:                pulumi.String("frztvxzhskx"),
/// 			LogLevel:                pulumi.String("gpgijsotipdtvvkpnckuziqqv"),
/// 			MqName:                  pulumi.String("R8-6x-Y-L-F-21RP5-XVv"),
/// 			MqttBridgeConnectorName: pulumi.String("k1v-U4P2440C1b7T8y-G"),
/// 			NodeTolerations: &iotoperationsmq.NodeTolerationsArgs{
/// 				Effect:   pulumi.String("eeswvciblqmmaeesjoflyvxqbz"),
/// 				Key:      pulumi.String("wbrstdwxgm"),
/// 				Operator: pulumi.String("lbegegneekwnyodtzraarivtwhmzep"),
/// 				Value:    pulumi.String("sfafsjdcezdmkwibxeluukxgl"),
/// 			},
/// 			Protocol: pulumi.String(iotoperationsmq.MqttProtocolV3),
/// 			RemoteBrokerConnection: &iotoperationsmq.MqttBridgeRemoteBrokerConnectionSpecArgs{
/// 				Authentication: &iotoperationsmq.MqttBridgeRemoteBrokerAuthenticationMethodsArgs{
/// 					SystemAssignedManagedIdentity: &iotoperationsmq.ManagedIdentityAuthenticationArgs{
/// 						Audience:      pulumi.String("kjderojhpehosgfcrxxbh"),
/// 						ExtensionName: pulumi.String("cyckjqqzspleajbtkniwrfsqygjfhe"),
/// 					},
/// 					X509: &iotoperationsmq.MqttBridgeRemoteBrokerX509AuthenticationArgs{
/// 						KeyVault: &iotoperationsmq.KeyVaultCertificatePropertiesArgs{
/// 							Vault: &iotoperationsmq.KeyVaultConnectionPropertiesArgs{
/// 								Credentials: &iotoperationsmq.KeyVaultCredentialsPropertiesArgs{
/// 									ServicePrincipalLocalSecretName: pulumi.String("wuimjwpbhoglbsxxa"),
/// 								},
/// 								DirectoryId: pulumi.String("eyjniptiykzcgbzok"),
/// 								Name:        pulumi.String("lxmwfan"),
/// 							},
/// 							VaultCaChainSecret: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 								Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 								Version: pulumi.String("unjfbf"),
/// 							},
/// 							VaultCert: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 								Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 								Version: pulumi.String("unjfbf"),
/// 							},
/// 						},
/// 						SecretName: pulumi.String("x"),
/// 					},
/// 				},
/// 				Endpoint: pulumi.String("bshzrukafmxjgnrlhzlxbbzjdbqh"),
/// 				Protocol: pulumi.String(iotoperationsmq.MqttBridgeRemoteBrokerProtocolMqtt),
/// 				Tls: &iotoperationsmq.MqttBridgeRemoteBrokerConnectionTlsArgs{
/// 					TlsEnabled:                    pulumi.Bool(true),
/// 					TrustedCaCertificateConfigMap: pulumi.String("ivtebqmclgfjx"),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.iotoperationsmq.MqttBridgeConnector;
/// import com.pulumi.azurenative.iotoperationsmq.MqttBridgeConnectorArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ContainerImageArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerConnectionSpecArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerAuthenticationMethodsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerKubernetesAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerConnectionTlsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.NodeTolerationsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.MqttBridgeRemoteBrokerConnectionSpecArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.MqttBridgeRemoteBrokerAuthenticationMethodsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ManagedIdentityAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.MqttBridgeRemoteBrokerX509AuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultCertificatePropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultConnectionPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultCredentialsPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultSecretObjectArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.MqttBridgeRemoteBrokerConnectionTlsArgs;
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
///         var mqttBridgeConnector = new MqttBridgeConnector("mqttBridgeConnector", MqttBridgeConnectorArgs.builder()
///             .bridgeInstances(4528)
///             .clientIdPrefix("yqipejvabahsexbnttiegjnh")
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .image(ContainerImageArgs.builder()
///                 .pullPolicy("imfuzvqxgbdwliqnn")
///                 .pullSecrets("klnqimxqsrdwhcqldjvdtsrs")
///                 .repository("m")
///                 .tag("jygfdiamhhm")
///                 .build())
///             .localBrokerConnection(LocalBrokerConnectionSpecArgs.builder()
///                 .authentication(LocalBrokerAuthenticationMethodsArgs.builder()
///                     .kubernetes(LocalBrokerKubernetesAuthenticationArgs.builder()
///                         .secretPath("soukzfkouir")
///                         .serviceAccountTokenName("suwetviuhmhorhvsidlznnufe")
///                         .build())
///                     .build())
///                 .endpoint("xc")
///                 .tls(LocalBrokerConnectionTlsArgs.builder()
///                     .tlsEnabled(true)
///                     .trustedCaCertificateConfigMap("rinkomfeznsfedbmllxlbmmhc")
///                     .build())
///                 .build())
///             .location("frztvxzhskx")
///             .logLevel("gpgijsotipdtvvkpnckuziqqv")
///             .mqName("R8-6x-Y-L-F-21RP5-XVv")
///             .mqttBridgeConnectorName("k1v-U4P2440C1b7T8y-G")
///             .nodeTolerations(NodeTolerationsArgs.builder()
///                 .effect("eeswvciblqmmaeesjoflyvxqbz")
///                 .key("wbrstdwxgm")
///                 .operator("lbegegneekwnyodtzraarivtwhmzep")
///                 .value("sfafsjdcezdmkwibxeluukxgl")
///                 .build())
///             .protocol("v3")
///             .remoteBrokerConnection(MqttBridgeRemoteBrokerConnectionSpecArgs.builder()
///                 .authentication(MqttBridgeRemoteBrokerAuthenticationMethodsArgs.builder()
///                     .systemAssignedManagedIdentity(ManagedIdentityAuthenticationArgs.builder()
///                         .audience("kjderojhpehosgfcrxxbh")
///                         .extensionName("cyckjqqzspleajbtkniwrfsqygjfhe")
///                         .build())
///                     .x509(MqttBridgeRemoteBrokerX509AuthenticationArgs.builder()
///                         .keyVault(KeyVaultCertificatePropertiesArgs.builder()
///                             .vault(KeyVaultConnectionPropertiesArgs.builder()
///                                 .credentials(KeyVaultCredentialsPropertiesArgs.builder()
///                                     .servicePrincipalLocalSecretName("wuimjwpbhoglbsxxa")
///                                     .build())
///                                 .directoryId("eyjniptiykzcgbzok")
///                                 .name("lxmwfan")
///                                 .build())
///                             .vaultCaChainSecret(KeyVaultSecretObjectArgs.builder()
///                                 .name("bmectskddmpjxnsogwooexj")
///                                 .version("unjfbf")
///                                 .build())
///                             .vaultCert(KeyVaultSecretObjectArgs.builder()
///                                 .name("bmectskddmpjxnsogwooexj")
///                                 .version("unjfbf")
///                                 .build())
///                             .build())
///                         .secretName("x")
///                         .build())
///                     .build())
///                 .endpoint("bshzrukafmxjgnrlhzlxbbzjdbqh")
///                 .protocol("mqtt")
///                 .tls(MqttBridgeRemoteBrokerConnectionTlsArgs.builder()
///                     .tlsEnabled(true)
///                     .trustedCaCertificateConfigMap("ivtebqmclgfjx")
///                     .build())
///                 .build())
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
/// const mqttBridgeConnector = new azure_native.iotoperationsmq.MqttBridgeConnector("mqttBridgeConnector", {
///     bridgeInstances: 4528,
///     clientIdPrefix: "yqipejvabahsexbnttiegjnh",
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     image: {
///         pullPolicy: "imfuzvqxgbdwliqnn",
///         pullSecrets: "klnqimxqsrdwhcqldjvdtsrs",
///         repository: "m",
///         tag: "jygfdiamhhm",
///     },
///     localBrokerConnection: {
///         authentication: {
///             kubernetes: {
///                 secretPath: "soukzfkouir",
///                 serviceAccountTokenName: "suwetviuhmhorhvsidlznnufe",
///             },
///         },
///         endpoint: "xc",
///         tls: {
///             tlsEnabled: true,
///             trustedCaCertificateConfigMap: "rinkomfeznsfedbmllxlbmmhc",
///         },
///     },
///     location: "frztvxzhskx",
///     logLevel: "gpgijsotipdtvvkpnckuziqqv",
///     mqName: "R8-6x-Y-L-F-21RP5-XVv",
///     mqttBridgeConnectorName: "k1v-U4P2440C1b7T8y-G",
///     nodeTolerations: {
///         effect: "eeswvciblqmmaeesjoflyvxqbz",
///         key: "wbrstdwxgm",
///         operator: "lbegegneekwnyodtzraarivtwhmzep",
///         value: "sfafsjdcezdmkwibxeluukxgl",
///     },
///     protocol: azure_native.iotoperationsmq.MqttProtocol.V3,
///     remoteBrokerConnection: {
///         authentication: {
///             systemAssignedManagedIdentity: {
///                 audience: "kjderojhpehosgfcrxxbh",
///                 extensionName: "cyckjqqzspleajbtkniwrfsqygjfhe",
///             },
///             x509: {
///                 keyVault: {
///                     vault: {
///                         credentials: {
///                             servicePrincipalLocalSecretName: "wuimjwpbhoglbsxxa",
///                         },
///                         directoryId: "eyjniptiykzcgbzok",
///                         name: "lxmwfan",
///                     },
///                     vaultCaChainSecret: {
///                         name: "bmectskddmpjxnsogwooexj",
///                         version: "unjfbf",
///                     },
///                     vaultCert: {
///                         name: "bmectskddmpjxnsogwooexj",
///                         version: "unjfbf",
///                     },
///                 },
///                 secretName: "x",
///             },
///         },
///         endpoint: "bshzrukafmxjgnrlhzlxbbzjdbqh",
///         protocol: azure_native.iotoperationsmq.MqttBridgeRemoteBrokerProtocol.Mqtt,
///         tls: {
///             tlsEnabled: true,
///             trustedCaCertificateConfigMap: "ivtebqmclgfjx",
///         },
///     },
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
/// mqtt_bridge_connector = azure_native.iotoperationsmq.MqttBridgeConnector("mqttBridgeConnector",
///     bridge_instances=4528,
///     client_id_prefix="yqipejvabahsexbnttiegjnh",
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     image={
///         "pull_policy": "imfuzvqxgbdwliqnn",
///         "pull_secrets": "klnqimxqsrdwhcqldjvdtsrs",
///         "repository": "m",
///         "tag": "jygfdiamhhm",
///     },
///     local_broker_connection={
///         "authentication": {
///             "kubernetes": {
///                 "secret_path": "soukzfkouir",
///                 "service_account_token_name": "suwetviuhmhorhvsidlznnufe",
///             },
///         },
///         "endpoint": "xc",
///         "tls": {
///             "tls_enabled": True,
///             "trusted_ca_certificate_config_map": "rinkomfeznsfedbmllxlbmmhc",
///         },
///     },
///     location="frztvxzhskx",
///     log_level="gpgijsotipdtvvkpnckuziqqv",
///     mq_name="R8-6x-Y-L-F-21RP5-XVv",
///     mqtt_bridge_connector_name="k1v-U4P2440C1b7T8y-G",
///     node_tolerations={
///         "effect": "eeswvciblqmmaeesjoflyvxqbz",
///         "key": "wbrstdwxgm",
///         "operator": "lbegegneekwnyodtzraarivtwhmzep",
///         "value": "sfafsjdcezdmkwibxeluukxgl",
///     },
///     protocol=azure_native.iotoperationsmq.MqttProtocol.V3,
///     remote_broker_connection={
///         "authentication": {
///             "system_assigned_managed_identity": {
///                 "audience": "kjderojhpehosgfcrxxbh",
///                 "extension_name": "cyckjqqzspleajbtkniwrfsqygjfhe",
///             },
///             "x509": {
///                 "key_vault": {
///                     "vault": {
///                         "credentials": {
///                             "service_principal_local_secret_name": "wuimjwpbhoglbsxxa",
///                         },
///                         "directory_id": "eyjniptiykzcgbzok",
///                         "name": "lxmwfan",
///                     },
///                     "vault_ca_chain_secret": {
///                         "name": "bmectskddmpjxnsogwooexj",
///                         "version": "unjfbf",
///                     },
///                     "vault_cert": {
///                         "name": "bmectskddmpjxnsogwooexj",
///                         "version": "unjfbf",
///                     },
///                 },
///                 "secret_name": "x",
///             },
///         },
///         "endpoint": "bshzrukafmxjgnrlhzlxbbzjdbqh",
///         "protocol": azure_native.iotoperationsmq.MqttBridgeRemoteBrokerProtocol.MQTT,
///         "tls": {
///             "tls_enabled": True,
///             "trusted_ca_certificate_config_map": "ivtebqmclgfjx",
///         },
///     },
///     resource_group_name="rgiotoperationsmq",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   mqttBridgeConnector:
///     type: azure-native:iotoperationsmq:MqttBridgeConnector
///     properties:
///       bridgeInstances: 4528
///       clientIdPrefix: yqipejvabahsexbnttiegjnh
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       image:
///         pullPolicy: imfuzvqxgbdwliqnn
///         pullSecrets: klnqimxqsrdwhcqldjvdtsrs
///         repository: m
///         tag: jygfdiamhhm
///       localBrokerConnection:
///         authentication:
///           kubernetes:
///             secretPath: soukzfkouir
///             serviceAccountTokenName: suwetviuhmhorhvsidlznnufe
///         endpoint: xc
///         tls:
///           tlsEnabled: true
///           trustedCaCertificateConfigMap: rinkomfeznsfedbmllxlbmmhc
///       location: frztvxzhskx
///       logLevel: gpgijsotipdtvvkpnckuziqqv
///       mqName: R8-6x-Y-L-F-21RP5-XVv
///       mqttBridgeConnectorName: k1v-U4P2440C1b7T8y-G
///       nodeTolerations:
///         effect: eeswvciblqmmaeesjoflyvxqbz
///         key: wbrstdwxgm
///         operator: lbegegneekwnyodtzraarivtwhmzep
///         value: sfafsjdcezdmkwibxeluukxgl
///       protocol: v3
///       remoteBrokerConnection:
///         authentication:
///           systemAssignedManagedIdentity:
///             audience: kjderojhpehosgfcrxxbh
///             extensionName: cyckjqqzspleajbtkniwrfsqygjfhe
///           x509:
///             keyVault:
///               vault:
///                 credentials:
///                   servicePrincipalLocalSecretName: wuimjwpbhoglbsxxa
///                 directoryId: eyjniptiykzcgbzok
///                 name: lxmwfan
///               vaultCaChainSecret:
///                 name: bmectskddmpjxnsogwooexj
///                 version: unjfbf
///               vaultCert:
///                 name: bmectskddmpjxnsogwooexj
///                 version: unjfbf
///             secretName: x
///         endpoint: bshzrukafmxjgnrlhzlxbbzjdbqh
///         protocol: mqtt
///         tls:
///           tlsEnabled: true
///           trustedCaCertificateConfigMap: ivtebqmclgfjx
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
/// $ pulumi import azure-native:iotoperationsmq:MqttBridgeConnector pjcjtrthj /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/mqttBridgeConnector/{mqttBridgeConnectorName}
/// ```
class MqttBridgeConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The number of instances to deploy for a bridge rollout.
  late final pulumi.Output<int?> bridgeInstances;

  /// The client id prefix of the dynamically generated client ids.
  late final pulumi.Output<String?> clientIdPrefix;

  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;

  /// The details of MqttBridge Docker Image.
  late final pulumi.Output<ContainerImageResponse> image;

  /// The details for connecting with Local Broker.
  late final pulumi.Output<LocalBrokerConnectionSpecResponse?>
  localBrokerConnection;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The log level of the Bridge Connector instances.
  late final pulumi.Output<String?> logLevel;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The Node Tolerations for the Bridge Connector pods.
  late final pulumi.Output<NodeTolerationsResponse?> nodeTolerations;

  /// The protocol to use for connecting with Brokers.
  late final pulumi.Output<String> protocol;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// The details for connecting with Remote Broker.
  late final pulumi.Output<MqttBridgeRemoteBrokerConnectionSpecResponse>
  remoteBrokerConnection;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MqttBridgeConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MqttBridgeConnector]. {@macro pulumi_iotoperationsmq_mqtt_bridge_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MqttBridgeConnector(
    String name, {
    MqttBridgeConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:iotoperationsmq:MqttBridgeConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bridgeInstances = registerOutput<int?>('bridgeInstances');
    clientIdPrefix = registerOutput<String?>('clientIdPrefix');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>(
      'extendedLocation',
    );
    image = registerOutput<ContainerImageResponse>('image');
    localBrokerConnection = registerOutput<LocalBrokerConnectionSpecResponse?>(
      'localBrokerConnection',
    );
    location = registerOutput<String>('location');
    logLevel = registerOutput<String?>('logLevel');
    this.name = registerOutput<String>('name');
    nodeTolerations = registerOutput<NodeTolerationsResponse?>(
      'nodeTolerations',
    );
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    remoteBrokerConnection =
        registerOutput<MqttBridgeRemoteBrokerConnectionSpecResponse>(
          'remoteBrokerConnection',
        );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
