import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image_response.dart';
import 'extended_location_property_response.dart';
import 'kafka_connector_args.dart';
import 'kafka_remote_broker_connection_spec_response.dart';
import 'local_broker_connection_spec_response.dart';
import 'node_tolerations_response.dart';
import 'system_data_response.dart';

/// MQ kafkaConnector resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KafkaConnector_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kafkaConnector = new AzureNative.IoTOperationsMQ.KafkaConnector("kafkaConnector", new()
///     {
///         ClientIdPrefix = "yybbbeowkw",
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
///         Instances = 55252,
///         KafkaConnection = new AzureNative.IoTOperationsMQ.Inputs.KafkaRemoteBrokerConnectionSpecArgs
///         {
///             Authentication = new AzureNative.IoTOperationsMQ.Inputs.KafkaRemoteBrokerAuthenticationPropertiesArgs
///             {
///                 AuthType = new AzureNative.IoTOperationsMQ.Inputs.KafkaRemoteBrokerAuthenticationTypesArgs
///                 {
///                     Sasl = new AzureNative.IoTOperationsMQ.Inputs.SaslRemoteBrokerBasicAuthenticationArgs
///                     {
///                         SaslType = AzureNative.IoTOperationsMQ.KafkaSaslType.Plain,
///                         Token = new AzureNative.IoTOperationsMQ.Inputs.SaslRemoteBrokerBasicAuthenticationTokenArgs
///                         {
///                             KeyVault = new AzureNative.IoTOperationsMQ.Inputs.KafkaTokenKeyVaultPropertiesArgs
///                             {
///                                 Username = "fb",
///                                 Vault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultConnectionPropertiesArgs
///                                 {
///                                     Credentials = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultCredentialsPropertiesArgs
///                                     {
///                                         ServicePrincipalLocalSecretName = "wuimjwpbhoglbsxxa",
///                                     },
///                                     DirectoryId = "eyjniptiykzcgbzok",
///                                     Name = "lxmwfan",
///                                 },
///                                 VaultSecret = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                                 {
///                                     Name = "bmectskddmpjxnsogwooexj",
///                                     Version = "unjfbf",
///                                 },
///                             },
///                             SecretName = "hxmqokubwldgjdtjv",
///                         },
///                     },
///                     SystemAssignedManagedIdentity = new AzureNative.IoTOperationsMQ.Inputs.ManagedIdentityAuthenticationArgs
///                     {
///                         Audience = "kjderojhpehosgfcrxxbh",
///                         ExtensionName = "cyckjqqzspleajbtkniwrfsqygjfhe",
///                     },
///                     X509 = new AzureNative.IoTOperationsMQ.Inputs.KafkaX509AuthenticationArgs
///                     {
///                         KeyVault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultCertificatePropertiesArgs
///                         {
///                             Vault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultConnectionPropertiesArgs
///                             {
///                                 Credentials = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultCredentialsPropertiesArgs
///                                 {
///                                     ServicePrincipalLocalSecretName = "wuimjwpbhoglbsxxa",
///                                 },
///                                 DirectoryId = "eyjniptiykzcgbzok",
///                                 Name = "lxmwfan",
///                             },
///                             VaultCaChainSecret = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                             {
///                                 Name = "bmectskddmpjxnsogwooexj",
///                                 Version = "unjfbf",
///                             },
///                             VaultCert = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                             {
///                                 Name = "bmectskddmpjxnsogwooexj",
///                                 Version = "unjfbf",
///                             },
///                         },
///                         SecretName = "jlrjvqyoygynlpsekfbvyrpu",
///                     },
///                 },
///                 Enabled = true,
///             },
///             Endpoint = "odxpssuhjkbonjmbhbebfjcah",
///             Tls = new AzureNative.IoTOperationsMQ.Inputs.KafkaRemoteBrokerConnectionTlsArgs
///             {
///                 TlsEnabled = true,
///                 TrustedCaCertificateConfigMap = "kndjozglnxsgnzxq",
///             },
///         },
///         KafkaConnectorName = "V5--OL8-R",
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
///         Location = "mpbupgmqssnb",
///         LogLevel = "g",
///         MqName = "s47Lj-S2S-Q-XY",
///         NodeTolerations = new AzureNative.IoTOperationsMQ.Inputs.NodeTolerationsArgs
///         {
///             Effect = "eeswvciblqmmaeesjoflyvxqbz",
///             Key = "wbrstdwxgm",
///             Operator = "lbegegneekwnyodtzraarivtwhmzep",
///             Value = "sfafsjdcezdmkwibxeluukxgl",
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
/// 		_, err := iotoperationsmq.NewKafkaConnector(ctx, "kafkaConnector", &iotoperationsmq.KafkaConnectorArgs{
/// 			ClientIdPrefix: pulumi.String("yybbbeowkw"),
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
/// 			Instances: pulumi.Int(55252),
/// 			KafkaConnection: &iotoperationsmq.KafkaRemoteBrokerConnectionSpecArgs{
/// 				Authentication: &iotoperationsmq.KafkaRemoteBrokerAuthenticationPropertiesArgs{
/// 					AuthType: &iotoperationsmq.KafkaRemoteBrokerAuthenticationTypesArgs{
/// 						Sasl: &iotoperationsmq.SaslRemoteBrokerBasicAuthenticationArgs{
/// 							SaslType: pulumi.String(iotoperationsmq.KafkaSaslTypePlain),
/// 							Token: &iotoperationsmq.SaslRemoteBrokerBasicAuthenticationTokenArgs{
/// 								KeyVault: &iotoperationsmq.KafkaTokenKeyVaultPropertiesArgs{
/// 									Username: pulumi.String("fb"),
/// 									Vault: &iotoperationsmq.KeyVaultConnectionPropertiesArgs{
/// 										Credentials: &iotoperationsmq.KeyVaultCredentialsPropertiesArgs{
/// 											ServicePrincipalLocalSecretName: pulumi.String("wuimjwpbhoglbsxxa"),
/// 										},
/// 										DirectoryId: pulumi.String("eyjniptiykzcgbzok"),
/// 										Name:        pulumi.String("lxmwfan"),
/// 									},
/// 									VaultSecret: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 										Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 										Version: pulumi.String("unjfbf"),
/// 									},
/// 								},
/// 								SecretName: pulumi.String("hxmqokubwldgjdtjv"),
/// 							},
/// 						},
/// 						SystemAssignedManagedIdentity: &iotoperationsmq.ManagedIdentityAuthenticationArgs{
/// 							Audience:      pulumi.String("kjderojhpehosgfcrxxbh"),
/// 							ExtensionName: pulumi.String("cyckjqqzspleajbtkniwrfsqygjfhe"),
/// 						},
/// 						X509: &iotoperationsmq.KafkaX509AuthenticationArgs{
/// 							KeyVault: &iotoperationsmq.KeyVaultCertificatePropertiesArgs{
/// 								Vault: &iotoperationsmq.KeyVaultConnectionPropertiesArgs{
/// 									Credentials: &iotoperationsmq.KeyVaultCredentialsPropertiesArgs{
/// 										ServicePrincipalLocalSecretName: pulumi.String("wuimjwpbhoglbsxxa"),
/// 									},
/// 									DirectoryId: pulumi.String("eyjniptiykzcgbzok"),
/// 									Name:        pulumi.String("lxmwfan"),
/// 								},
/// 								VaultCaChainSecret: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 									Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 									Version: pulumi.String("unjfbf"),
/// 								},
/// 								VaultCert: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 									Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 									Version: pulumi.String("unjfbf"),
/// 								},
/// 							},
/// 							SecretName: pulumi.String("jlrjvqyoygynlpsekfbvyrpu"),
/// 						},
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				Endpoint: pulumi.String("odxpssuhjkbonjmbhbebfjcah"),
/// 				Tls: &iotoperationsmq.KafkaRemoteBrokerConnectionTlsArgs{
/// 					TlsEnabled:                    pulumi.Bool(true),
/// 					TrustedCaCertificateConfigMap: pulumi.String("kndjozglnxsgnzxq"),
/// 				},
/// 			},
/// 			KafkaConnectorName: pulumi.String("V5--OL8-R"),
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
/// 			Location: pulumi.String("mpbupgmqssnb"),
/// 			LogLevel: pulumi.String("g"),
/// 			MqName:   pulumi.String("s47Lj-S2S-Q-XY"),
/// 			NodeTolerations: &iotoperationsmq.NodeTolerationsArgs{
/// 				Effect:   pulumi.String("eeswvciblqmmaeesjoflyvxqbz"),
/// 				Key:      pulumi.String("wbrstdwxgm"),
/// 				Operator: pulumi.String("lbegegneekwnyodtzraarivtwhmzep"),
/// 				Value:    pulumi.String("sfafsjdcezdmkwibxeluukxgl"),
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
/// import com.pulumi.azurenative.iotoperationsmq.KafkaConnector;
/// import com.pulumi.azurenative.iotoperationsmq.KafkaConnectorArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ContainerImageArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaRemoteBrokerConnectionSpecArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaRemoteBrokerAuthenticationPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaRemoteBrokerAuthenticationTypesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.SaslRemoteBrokerBasicAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.SaslRemoteBrokerBasicAuthenticationTokenArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaTokenKeyVaultPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultConnectionPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultCredentialsPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultSecretObjectArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ManagedIdentityAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaX509AuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultCertificatePropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KafkaRemoteBrokerConnectionTlsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerConnectionSpecArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerAuthenticationMethodsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerKubernetesAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerConnectionTlsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.NodeTolerationsArgs;
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
///         var kafkaConnector = new KafkaConnector("kafkaConnector", KafkaConnectorArgs.builder()
///             .clientIdPrefix("yybbbeowkw")
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
///             .instances(55252)
///             .kafkaConnection(KafkaRemoteBrokerConnectionSpecArgs.builder()
///                 .authentication(KafkaRemoteBrokerAuthenticationPropertiesArgs.builder()
///                     .authType(KafkaRemoteBrokerAuthenticationTypesArgs.builder()
///                         .sasl(SaslRemoteBrokerBasicAuthenticationArgs.builder()
///                             .saslType("plain")
///                             .token(SaslRemoteBrokerBasicAuthenticationTokenArgs.builder()
///                                 .keyVault(KafkaTokenKeyVaultPropertiesArgs.builder()
///                                     .username("fb")
///                                     .vault(KeyVaultConnectionPropertiesArgs.builder()
///                                         .credentials(KeyVaultCredentialsPropertiesArgs.builder()
///                                             .servicePrincipalLocalSecretName("wuimjwpbhoglbsxxa")
///                                             .build())
///                                         .directoryId("eyjniptiykzcgbzok")
///                                         .name("lxmwfan")
///                                         .build())
///                                     .vaultSecret(KeyVaultSecretObjectArgs.builder()
///                                         .name("bmectskddmpjxnsogwooexj")
///                                         .version("unjfbf")
///                                         .build())
///                                     .build())
///                                 .secretName("hxmqokubwldgjdtjv")
///                                 .build())
///                             .build())
///                         .systemAssignedManagedIdentity(ManagedIdentityAuthenticationArgs.builder()
///                             .audience("kjderojhpehosgfcrxxbh")
///                             .extensionName("cyckjqqzspleajbtkniwrfsqygjfhe")
///                             .build())
///                         .x509(KafkaX509AuthenticationArgs.builder()
///                             .keyVault(KeyVaultCertificatePropertiesArgs.builder()
///                                 .vault(KeyVaultConnectionPropertiesArgs.builder()
///                                     .credentials(KeyVaultCredentialsPropertiesArgs.builder()
///                                         .servicePrincipalLocalSecretName("wuimjwpbhoglbsxxa")
///                                         .build())
///                                     .directoryId("eyjniptiykzcgbzok")
///                                     .name("lxmwfan")
///                                     .build())
///                                 .vaultCaChainSecret(KeyVaultSecretObjectArgs.builder()
///                                     .name("bmectskddmpjxnsogwooexj")
///                                     .version("unjfbf")
///                                     .build())
///                                 .vaultCert(KeyVaultSecretObjectArgs.builder()
///                                     .name("bmectskddmpjxnsogwooexj")
///                                     .version("unjfbf")
///                                     .build())
///                                 .build())
///                             .secretName("jlrjvqyoygynlpsekfbvyrpu")
///                             .build())
///                         .build())
///                     .enabled(true)
///                     .build())
///                 .endpoint("odxpssuhjkbonjmbhbebfjcah")
///                 .tls(KafkaRemoteBrokerConnectionTlsArgs.builder()
///                     .tlsEnabled(true)
///                     .trustedCaCertificateConfigMap("kndjozglnxsgnzxq")
///                     .build())
///                 .build())
///             .kafkaConnectorName("V5--OL8-R")
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
///             .location("mpbupgmqssnb")
///             .logLevel("g")
///             .mqName("s47Lj-S2S-Q-XY")
///             .nodeTolerations(NodeTolerationsArgs.builder()
///                 .effect("eeswvciblqmmaeesjoflyvxqbz")
///                 .key("wbrstdwxgm")
///                 .operator("lbegegneekwnyodtzraarivtwhmzep")
///                 .value("sfafsjdcezdmkwibxeluukxgl")
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
/// const kafkaConnector = new azure_native.iotoperationsmq.KafkaConnector("kafkaConnector", {
///     clientIdPrefix: "yybbbeowkw",
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
///     instances: 55252,
///     kafkaConnection: {
///         authentication: {
///             authType: {
///                 sasl: {
///                     saslType: azure_native.iotoperationsmq.KafkaSaslType.Plain,
///                     token: {
///                         keyVault: {
///                             username: "fb",
///                             vault: {
///                                 credentials: {
///                                     servicePrincipalLocalSecretName: "wuimjwpbhoglbsxxa",
///                                 },
///                                 directoryId: "eyjniptiykzcgbzok",
///                                 name: "lxmwfan",
///                             },
///                             vaultSecret: {
///                                 name: "bmectskddmpjxnsogwooexj",
///                                 version: "unjfbf",
///                             },
///                         },
///                         secretName: "hxmqokubwldgjdtjv",
///                     },
///                 },
///                 systemAssignedManagedIdentity: {
///                     audience: "kjderojhpehosgfcrxxbh",
///                     extensionName: "cyckjqqzspleajbtkniwrfsqygjfhe",
///                 },
///                 x509: {
///                     keyVault: {
///                         vault: {
///                             credentials: {
///                                 servicePrincipalLocalSecretName: "wuimjwpbhoglbsxxa",
///                             },
///                             directoryId: "eyjniptiykzcgbzok",
///                             name: "lxmwfan",
///                         },
///                         vaultCaChainSecret: {
///                             name: "bmectskddmpjxnsogwooexj",
///                             version: "unjfbf",
///                         },
///                         vaultCert: {
///                             name: "bmectskddmpjxnsogwooexj",
///                             version: "unjfbf",
///                         },
///                     },
///                     secretName: "jlrjvqyoygynlpsekfbvyrpu",
///                 },
///             },
///             enabled: true,
///         },
///         endpoint: "odxpssuhjkbonjmbhbebfjcah",
///         tls: {
///             tlsEnabled: true,
///             trustedCaCertificateConfigMap: "kndjozglnxsgnzxq",
///         },
///     },
///     kafkaConnectorName: "V5--OL8-R",
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
///     location: "mpbupgmqssnb",
///     logLevel: "g",
///     mqName: "s47Lj-S2S-Q-XY",
///     nodeTolerations: {
///         effect: "eeswvciblqmmaeesjoflyvxqbz",
///         key: "wbrstdwxgm",
///         operator: "lbegegneekwnyodtzraarivtwhmzep",
///         value: "sfafsjdcezdmkwibxeluukxgl",
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
/// kafka_connector = azure_native.iotoperationsmq.KafkaConnector("kafkaConnector",
///     client_id_prefix="yybbbeowkw",
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
///     instances=55252,
///     kafka_connection={
///         "authentication": {
///             "auth_type": {
///                 "sasl": {
///                     "sasl_type": azure_native.iotoperationsmq.KafkaSaslType.PLAIN,
///                     "token": {
///                         "key_vault": {
///                             "username": "fb",
///                             "vault": {
///                                 "credentials": {
///                                     "service_principal_local_secret_name": "wuimjwpbhoglbsxxa",
///                                 },
///                                 "directory_id": "eyjniptiykzcgbzok",
///                                 "name": "lxmwfan",
///                             },
///                             "vault_secret": {
///                                 "name": "bmectskddmpjxnsogwooexj",
///                                 "version": "unjfbf",
///                             },
///                         },
///                         "secret_name": "hxmqokubwldgjdtjv",
///                     },
///                 },
///                 "system_assigned_managed_identity": {
///                     "audience": "kjderojhpehosgfcrxxbh",
///                     "extension_name": "cyckjqqzspleajbtkniwrfsqygjfhe",
///                 },
///                 "x509": {
///                     "key_vault": {
///                         "vault": {
///                             "credentials": {
///                                 "service_principal_local_secret_name": "wuimjwpbhoglbsxxa",
///                             },
///                             "directory_id": "eyjniptiykzcgbzok",
///                             "name": "lxmwfan",
///                         },
///                         "vault_ca_chain_secret": {
///                             "name": "bmectskddmpjxnsogwooexj",
///                             "version": "unjfbf",
///                         },
///                         "vault_cert": {
///                             "name": "bmectskddmpjxnsogwooexj",
///                             "version": "unjfbf",
///                         },
///                     },
///                     "secret_name": "jlrjvqyoygynlpsekfbvyrpu",
///                 },
///             },
///             "enabled": True,
///         },
///         "endpoint": "odxpssuhjkbonjmbhbebfjcah",
///         "tls": {
///             "tls_enabled": True,
///             "trusted_ca_certificate_config_map": "kndjozglnxsgnzxq",
///         },
///     },
///     kafka_connector_name="V5--OL8-R",
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
///     location="mpbupgmqssnb",
///     log_level="g",
///     mq_name="s47Lj-S2S-Q-XY",
///     node_tolerations={
///         "effect": "eeswvciblqmmaeesjoflyvxqbz",
///         "key": "wbrstdwxgm",
///         "operator": "lbegegneekwnyodtzraarivtwhmzep",
///         "value": "sfafsjdcezdmkwibxeluukxgl",
///     },
///     resource_group_name="rgiotoperationsmq",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   kafkaConnector:
///     type: azure-native:iotoperationsmq:KafkaConnector
///     properties:
///       clientIdPrefix: yybbbeowkw
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       image:
///         pullPolicy: imfuzvqxgbdwliqnn
///         pullSecrets: klnqimxqsrdwhcqldjvdtsrs
///         repository: m
///         tag: jygfdiamhhm
///       instances: 55252
///       kafkaConnection:
///         authentication:
///           authType:
///             sasl:
///               saslType: plain
///               token:
///                 keyVault:
///                   username: fb
///                   vault:
///                     credentials:
///                       servicePrincipalLocalSecretName: wuimjwpbhoglbsxxa
///                     directoryId: eyjniptiykzcgbzok
///                     name: lxmwfan
///                   vaultSecret:
///                     name: bmectskddmpjxnsogwooexj
///                     version: unjfbf
///                 secretName: hxmqokubwldgjdtjv
///             systemAssignedManagedIdentity:
///               audience: kjderojhpehosgfcrxxbh
///               extensionName: cyckjqqzspleajbtkniwrfsqygjfhe
///             x509:
///               keyVault:
///                 vault:
///                   credentials:
///                     servicePrincipalLocalSecretName: wuimjwpbhoglbsxxa
///                   directoryId: eyjniptiykzcgbzok
///                   name: lxmwfan
///                 vaultCaChainSecret:
///                   name: bmectskddmpjxnsogwooexj
///                   version: unjfbf
///                 vaultCert:
///                   name: bmectskddmpjxnsogwooexj
///                   version: unjfbf
///               secretName: jlrjvqyoygynlpsekfbvyrpu
///           enabled: true
///         endpoint: odxpssuhjkbonjmbhbebfjcah
///         tls:
///           tlsEnabled: true
///           trustedCaCertificateConfigMap: kndjozglnxsgnzxq
///       kafkaConnectorName: V5--OL8-R
///       localBrokerConnection:
///         authentication:
///           kubernetes:
///             secretPath: soukzfkouir
///             serviceAccountTokenName: suwetviuhmhorhvsidlznnufe
///         endpoint: xc
///         tls:
///           tlsEnabled: true
///           trustedCaCertificateConfigMap: rinkomfeznsfedbmllxlbmmhc
///       location: mpbupgmqssnb
///       logLevel: g
///       mqName: s47Lj-S2S-Q-XY
///       nodeTolerations:
///         effect: eeswvciblqmmaeesjoflyvxqbz
///         key: wbrstdwxgm
///         operator: lbegegneekwnyodtzraarivtwhmzep
///         value: sfafsjdcezdmkwibxeluukxgl
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
/// $ pulumi import azure-native:iotoperationsmq:KafkaConnector acntmeqjezkawbphgyprhwv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/kafkaConnector/{kafkaConnectorName}
/// ```
class KafkaConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The client id prefix of the dynamically generated client ids.
  late final pulumi.Output<String?> clientIdPrefix;
  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;
  /// The details of KafkaConnector Docker Image.
  late final pulumi.Output<ContainerImageResponse?> image;
  /// The number of KafkaConnector pods to spin up.
  late final pulumi.Output<int?> instances;
  /// The details for connecting with Remote Kafka Broker.
  late final pulumi.Output<KafkaRemoteBrokerConnectionSpecResponse> kafkaConnection;
  /// The details for connecting with Local Broker.
  late final pulumi.Output<LocalBrokerConnectionSpecResponse?> localBrokerConnection;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The log level of the Bridge Connector instances.
  late final pulumi.Output<String?> logLevel;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The Node Tolerations for the Bridge Connector pods.
  late final pulumi.Output<NodeTolerationsResponse?> nodeTolerations;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [KafkaConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KafkaConnector]. {@macro pulumi_iotoperationsmq_kafka_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KafkaConnector(
    String name, {
    KafkaConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperationsmq:KafkaConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientIdPrefix = registerOutput<String?>('clientIdPrefix');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    image = registerOutput<ContainerImageResponse?>('image', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<int?>('instances');
    kafkaConnection = registerOutput<KafkaRemoteBrokerConnectionSpecResponse>('kafkaConnection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KafkaRemoteBrokerConnectionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localBrokerConnection = registerOutput<LocalBrokerConnectionSpecResponse?>('localBrokerConnection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocalBrokerConnectionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    logLevel = registerOutput<String?>('logLevel');
    this.name = registerOutput<String>('name');
    nodeTolerations = registerOutput<NodeTolerationsResponse?>('nodeTolerations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeTolerationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
