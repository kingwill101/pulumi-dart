import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authentication_args.dart';
import 'extended_location_property_response.dart';
import 'system_data_response.dart';

/// MQ broker/authentication resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BrokerAuthentication_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var brokerAuthentication = new AzureNative.IoTOperationsMQ.BrokerAuthentication("brokerAuthentication", new()
///     {
///         AuthenticationMethods = new[]
///         {
///             new AzureNative.IoTOperationsMQ.Inputs.BrokerAuthenticatorMethodsArgs
///             {
///                 Custom = new AzureNative.IoTOperationsMQ.Inputs.BrokerAuthenticatorMethodCustomArgs
///                 {
///                     Auth = new AzureNative.IoTOperationsMQ.Inputs.BrokerAuthenticatorCustomAuthArgs
///                     {
///                         X509 = new AzureNative.IoTOperationsMQ.Inputs.BrokerAuthenticatorCustomAuthX509Args
///                         {
///                             KeyVault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultCertificatePropertiesArgs
///                             {
///                                 Vault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultConnectionPropertiesArgs
///                                 {
///                                     Credentials = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultCredentialsPropertiesArgs
///                                     {
///                                         ServicePrincipalLocalSecretName = "wuimjwpbhoglbsxxa",
///                                     },
///                                     DirectoryId = "eyjniptiykzcgbzok",
///                                     Name = "lxmwfan",
///                                 },
///                                 VaultCaChainSecret = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                                 {
///                                     Name = "bmectskddmpjxnsogwooexj",
///                                     Version = "unjfbf",
///                                 },
///                                 VaultCert = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                                 {
///                                     Name = "bmectskddmpjxnsogwooexj",
///                                     Version = "unjfbf",
///                                 },
///                             },
///                             SecretName = "dordbwjewnqkhfd",
///                         },
///                     },
///                     CaCertConfigMap = "diufihyysdcosgy",
///                     Endpoint = "yy",
///                     Headers = null,
///                 },
///                 Sat = new AzureNative.IoTOperationsMQ.Inputs.BrokerAuthenticatorMethodSatArgs
///                 {
///                     Audiences = new[]
///                     {
///                         "fiyitxutbuuhwtltukyjacads",
///                     },
///                 },
///                 Svid = new AzureNative.IoTOperationsMQ.Inputs.BrokerAuthenticatorMethodSvidArgs
///                 {
///                     AgentSocketPath = "gnyowebmeaj",
///                     IdentityMaxRetry = 4031184731,
///                     IdentityWaitRetryMs = 2243705844935085568,
///                 },
///                 UsernamePassword = new AzureNative.IoTOperationsMQ.Inputs.BrokerAuthenticatorMethodUsernamePasswordArgs
///                 {
///                     KeyVault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretPropertiesArgs
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
///                         VaultSecret = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                         {
///                             Name = "bmectskddmpjxnsogwooexj",
///                             Version = "unjfbf",
///                         },
///                     },
///                     SecretName = "blk",
///                 },
///                 X509 = new AzureNative.IoTOperationsMQ.Inputs.BrokerAuthenticatorMethodX509Args
///                 {
///                     Attributes = new AzureNative.IoTOperationsMQ.Inputs.BrokerAuthenticatorMethodX509AttributesArgs
///                     {
///                         KeyVault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretPropertiesArgs
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
///                             VaultSecret = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                             {
///                                 Name = "bmectskddmpjxnsogwooexj",
///                                 Version = "unjfbf",
///                             },
///                         },
///                         SecretName = "ybcke",
///                     },
///                     TrustedClientCaCertConfigMap = "udidafmnpt",
///                 },
///             },
///         },
///         AuthenticationName = "lUo-GQ3-95F-1O-",
///         BrokerName = "87v1GC9557XuP-JLI4-",
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         ListenerRef = new[]
///         {
///             "dhjpypfjzzmwm",
///         },
///         Location = "vtxegvaeqwyupplnm",
///         MqName = "2S-A2-D9kC946K",
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
/// 		_, err := iotoperationsmq.NewBrokerAuthentication(ctx, "brokerAuthentication", &iotoperationsmq.BrokerAuthenticationArgs{
/// 			AuthenticationMethods: iotoperationsmq.BrokerAuthenticatorMethodsArray{
/// 				&iotoperationsmq.BrokerAuthenticatorMethodsArgs{
/// 					Custom: &iotoperationsmq.BrokerAuthenticatorMethodCustomArgs{
/// 						Auth: &iotoperationsmq.BrokerAuthenticatorCustomAuthArgs{
/// 							X509: &iotoperationsmq.BrokerAuthenticatorCustomAuthX509Args{
/// 								KeyVault: &iotoperationsmq.KeyVaultCertificatePropertiesArgs{
/// 									Vault: &iotoperationsmq.KeyVaultConnectionPropertiesArgs{
/// 										Credentials: &iotoperationsmq.KeyVaultCredentialsPropertiesArgs{
/// 											ServicePrincipalLocalSecretName: pulumi.String("wuimjwpbhoglbsxxa"),
/// 										},
/// 										DirectoryId: pulumi.String("eyjniptiykzcgbzok"),
/// 										Name:        pulumi.String("lxmwfan"),
/// 									},
/// 									VaultCaChainSecret: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 										Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 										Version: pulumi.String("unjfbf"),
/// 									},
/// 									VaultCert: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 										Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 										Version: pulumi.String("unjfbf"),
/// 									},
/// 								},
/// 								SecretName: pulumi.String("dordbwjewnqkhfd"),
/// 							},
/// 						},
/// 						CaCertConfigMap: pulumi.String("diufihyysdcosgy"),
/// 						Endpoint:        pulumi.String("yy"),
/// 						Headers:         pulumi.StringMap{},
/// 					},
/// 					Sat: &iotoperationsmq.BrokerAuthenticatorMethodSatArgs{
/// 						Audiences: pulumi.StringArray{
/// 							pulumi.String("fiyitxutbuuhwtltukyjacads"),
/// 						},
/// 					},
/// 					Svid: &iotoperationsmq.BrokerAuthenticatorMethodSvidArgs{
/// 						AgentSocketPath:     pulumi.String("gnyowebmeaj"),
/// 						IdentityMaxRetry:    pulumi.Float64(4031184731),
/// 						IdentityWaitRetryMs: pulumi.Float64(2243705844935085568),
/// 					},
/// 					UsernamePassword: &iotoperationsmq.BrokerAuthenticatorMethodUsernamePasswordArgs{
/// 						KeyVault: &iotoperationsmq.KeyVaultSecretPropertiesArgs{
/// 							Vault: &iotoperationsmq.KeyVaultConnectionPropertiesArgs{
/// 								Credentials: &iotoperationsmq.KeyVaultCredentialsPropertiesArgs{
/// 									ServicePrincipalLocalSecretName: pulumi.String("wuimjwpbhoglbsxxa"),
/// 								},
/// 								DirectoryId: pulumi.String("eyjniptiykzcgbzok"),
/// 								Name:        pulumi.String("lxmwfan"),
/// 							},
/// 							VaultSecret: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 								Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 								Version: pulumi.String("unjfbf"),
/// 							},
/// 						},
/// 						SecretName: pulumi.String("blk"),
/// 					},
/// 					X509: &iotoperationsmq.BrokerAuthenticatorMethodX509Args{
/// 						Attributes: &iotoperationsmq.BrokerAuthenticatorMethodX509AttributesArgs{
/// 							KeyVault: &iotoperationsmq.KeyVaultSecretPropertiesArgs{
/// 								Vault: &iotoperationsmq.KeyVaultConnectionPropertiesArgs{
/// 									Credentials: &iotoperationsmq.KeyVaultCredentialsPropertiesArgs{
/// 										ServicePrincipalLocalSecretName: pulumi.String("wuimjwpbhoglbsxxa"),
/// 									},
/// 									DirectoryId: pulumi.String("eyjniptiykzcgbzok"),
/// 									Name:        pulumi.String("lxmwfan"),
/// 								},
/// 								VaultSecret: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 									Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 									Version: pulumi.String("unjfbf"),
/// 								},
/// 							},
/// 							SecretName: pulumi.String("ybcke"),
/// 						},
/// 						TrustedClientCaCertConfigMap: pulumi.String("udidafmnpt"),
/// 					},
/// 				},
/// 			},
/// 			AuthenticationName: pulumi.String("lUo-GQ3-95F-1O-"),
/// 			BrokerName:         pulumi.String("87v1GC9557XuP-JLI4-"),
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			ListenerRef: pulumi.StringArray{
/// 				pulumi.String("dhjpypfjzzmwm"),
/// 			},
/// 			Location:          pulumi.String("vtxegvaeqwyupplnm"),
/// 			MqName:            pulumi.String("2S-A2-D9kC946K"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iotoperationsmq_brokerauthentication" "brokerAuthentication" {
///   authentication_methods {
///     custom = {
///       auth = {
///         x509 = {
///           key_vault = {
///             vault = {
///               credentials = {
///                 service_principal_local_secret_name = "wuimjwpbhoglbsxxa"
///               }
///               directory_id = "eyjniptiykzcgbzok"
///               name         = "lxmwfan"
///             }
///             vault_ca_chain_secret = {
///               name    = "bmectskddmpjxnsogwooexj"
///               version = "unjfbf"
///             }
///             vault_cert = {
///               name    = "bmectskddmpjxnsogwooexj"
///               version = "unjfbf"
///             }
///           }
///           secret_name = "dordbwjewnqkhfd"
///         }
///       }
///       ca_cert_config_map = "diufihyysdcosgy"
///       endpoint           = "yy"
///       headers            = {}
///     }
///     sat = {
///       audiences = ["fiyitxutbuuhwtltukyjacads"]
///     }
///     svid = {
///       agent_socket_path      = "gnyowebmeaj"
///       identity_max_retry     = 4031184731
///       identity_wait_retry_ms = 2243705844935085568
///     }
///     username_password = {
///       key_vault = {
///         vault = {
///           credentials = {
///             service_principal_local_secret_name = "wuimjwpbhoglbsxxa"
///           }
///           directory_id = "eyjniptiykzcgbzok"
///           name         = "lxmwfan"
///         }
///         vault_secret = {
///           name    = "bmectskddmpjxnsogwooexj"
///           version = "unjfbf"
///         }
///       }
///       secret_name = "blk"
///     }
///     x509 = {
///       attributes = {
///         key_vault = {
///           vault = {
///             credentials = {
///               service_principal_local_secret_name = "wuimjwpbhoglbsxxa"
///             }
///             directory_id = "eyjniptiykzcgbzok"
///             name         = "lxmwfan"
///           }
///           vault_secret = {
///             name    = "bmectskddmpjxnsogwooexj"
///             version = "unjfbf"
///           }
///         }
///         secret_name = "ybcke"
///       }
///       trusted_client_ca_cert_config_map = "udidafmnpt"
///     }
///   }
///   authentication_name = "lUo-GQ3-95F-1O-"
///   broker_name         = "87v1GC9557XuP-JLI4-"
///   extended_location = {
///     name = "an"
///     type = "CustomLocation"
///   }
///   listener_ref        = ["dhjpypfjzzmwm"]
///   location            = "vtxegvaeqwyupplnm"
///   mq_name             = "2S-A2-D9kC946K"
///   resource_group_name = "rgiotoperationsmq"
///   tags                = {}
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
/// import com.pulumi.azurenative.iotoperationsmq.BrokerAuthentication;
/// import com.pulumi.azurenative.iotoperationsmq.BrokerAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerAuthenticatorMethodsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerAuthenticatorMethodCustomArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerAuthenticatorCustomAuthArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerAuthenticatorCustomAuthX509Args;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultCertificatePropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultConnectionPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultCredentialsPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultSecretObjectArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerAuthenticatorMethodSatArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerAuthenticatorMethodSvidArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerAuthenticatorMethodUsernamePasswordArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultSecretPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerAuthenticatorMethodX509Args;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.BrokerAuthenticatorMethodX509AttributesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
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
///         var brokerAuthentication = new BrokerAuthentication("brokerAuthentication", BrokerAuthenticationArgs.builder()
///             .authenticationMethods(BrokerAuthenticatorMethodsArgs.builder()
///                 .custom(BrokerAuthenticatorMethodCustomArgs.builder()
///                     .auth(BrokerAuthenticatorCustomAuthArgs.builder()
///                         .x509(BrokerAuthenticatorCustomAuthX509Args.builder()
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
///                             .secretName("dordbwjewnqkhfd")
///                             .build())
///                         .build())
///                     .caCertConfigMap("diufihyysdcosgy")
///                     .endpoint("yy")
///                     .headers(Map.ofEntries(
///                     ))
///                     .build())
///                 .sat(BrokerAuthenticatorMethodSatArgs.builder()
///                     .audiences("fiyitxutbuuhwtltukyjacads")
///                     .build())
///                 .svid(BrokerAuthenticatorMethodSvidArgs.builder()
///                     .agentSocketPath("gnyowebmeaj")
///                     .identityMaxRetry(4031184731.0)
///                     .identityWaitRetryMs(2243705844935085568.0)
///                     .build())
///                 .usernamePassword(BrokerAuthenticatorMethodUsernamePasswordArgs.builder()
///                     .keyVault(KeyVaultSecretPropertiesArgs.builder()
///                         .vault(KeyVaultConnectionPropertiesArgs.builder()
///                             .credentials(KeyVaultCredentialsPropertiesArgs.builder()
///                                 .servicePrincipalLocalSecretName("wuimjwpbhoglbsxxa")
///                                 .build())
///                             .directoryId("eyjniptiykzcgbzok")
///                             .name("lxmwfan")
///                             .build())
///                         .vaultSecret(KeyVaultSecretObjectArgs.builder()
///                             .name("bmectskddmpjxnsogwooexj")
///                             .version("unjfbf")
///                             .build())
///                         .build())
///                     .secretName("blk")
///                     .build())
///                 .x509(BrokerAuthenticatorMethodX509Args.builder()
///                     .attributes(BrokerAuthenticatorMethodX509AttributesArgs.builder()
///                         .keyVault(KeyVaultSecretPropertiesArgs.builder()
///                             .vault(KeyVaultConnectionPropertiesArgs.builder()
///                                 .credentials(KeyVaultCredentialsPropertiesArgs.builder()
///                                     .servicePrincipalLocalSecretName("wuimjwpbhoglbsxxa")
///                                     .build())
///                                 .directoryId("eyjniptiykzcgbzok")
///                                 .name("lxmwfan")
///                                 .build())
///                             .vaultSecret(KeyVaultSecretObjectArgs.builder()
///                                 .name("bmectskddmpjxnsogwooexj")
///                                 .version("unjfbf")
///                                 .build())
///                             .build())
///                         .secretName("ybcke")
///                         .build())
///                     .trustedClientCaCertConfigMap("udidafmnpt")
///                     .build())
///                 .build())
///             .authenticationName("lUo-GQ3-95F-1O-")
///             .brokerName("87v1GC9557XuP-JLI4-")
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .listenerRef("dhjpypfjzzmwm")
///             .location("vtxegvaeqwyupplnm")
///             .mqName("2S-A2-D9kC946K")
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
/// const brokerAuthentication = new azure_native.iotoperationsmq.BrokerAuthentication("brokerAuthentication", {
///     authenticationMethods: [{
///         custom: {
///             auth: {
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
///                     secretName: "dordbwjewnqkhfd",
///                 },
///             },
///             caCertConfigMap: "diufihyysdcosgy",
///             endpoint: "yy",
///             headers: {},
///         },
///         sat: {
///             audiences: ["fiyitxutbuuhwtltukyjacads"],
///         },
///         svid: {
///             agentSocketPath: "gnyowebmeaj",
///             identityMaxRetry: 4031184731,
///             identityWaitRetryMs: 2243705844935085568,
///         },
///         usernamePassword: {
///             keyVault: {
///                 vault: {
///                     credentials: {
///                         servicePrincipalLocalSecretName: "wuimjwpbhoglbsxxa",
///                     },
///                     directoryId: "eyjniptiykzcgbzok",
///                     name: "lxmwfan",
///                 },
///                 vaultSecret: {
///                     name: "bmectskddmpjxnsogwooexj",
///                     version: "unjfbf",
///                 },
///             },
///             secretName: "blk",
///         },
///         x509: {
///             attributes: {
///                 keyVault: {
///                     vault: {
///                         credentials: {
///                             servicePrincipalLocalSecretName: "wuimjwpbhoglbsxxa",
///                         },
///                         directoryId: "eyjniptiykzcgbzok",
///                         name: "lxmwfan",
///                     },
///                     vaultSecret: {
///                         name: "bmectskddmpjxnsogwooexj",
///                         version: "unjfbf",
///                     },
///                 },
///                 secretName: "ybcke",
///             },
///             trustedClientCaCertConfigMap: "udidafmnpt",
///         },
///     }],
///     authenticationName: "lUo-GQ3-95F-1O-",
///     brokerName: "87v1GC9557XuP-JLI4-",
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     listenerRef: ["dhjpypfjzzmwm"],
///     location: "vtxegvaeqwyupplnm",
///     mqName: "2S-A2-D9kC946K",
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
/// broker_authentication = azure_native.iotoperationsmq.BrokerAuthentication("brokerAuthentication",
///     authentication_methods=[{
///         "custom": {
///             "auth": {
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
///                     "secret_name": "dordbwjewnqkhfd",
///                 },
///             },
///             "ca_cert_config_map": "diufihyysdcosgy",
///             "endpoint": "yy",
///             "headers": {},
///         },
///         "sat": {
///             "audiences": ["fiyitxutbuuhwtltukyjacads"],
///         },
///         "svid": {
///             "agent_socket_path": "gnyowebmeaj",
///             "identity_max_retry": 4031184731,
///             "identity_wait_retry_ms": 2243705844935085568,
///         },
///         "username_password": {
///             "key_vault": {
///                 "vault": {
///                     "credentials": {
///                         "service_principal_local_secret_name": "wuimjwpbhoglbsxxa",
///                     },
///                     "directory_id": "eyjniptiykzcgbzok",
///                     "name": "lxmwfan",
///                 },
///                 "vault_secret": {
///                     "name": "bmectskddmpjxnsogwooexj",
///                     "version": "unjfbf",
///                 },
///             },
///             "secret_name": "blk",
///         },
///         "x509": {
///             "attributes": {
///                 "key_vault": {
///                     "vault": {
///                         "credentials": {
///                             "service_principal_local_secret_name": "wuimjwpbhoglbsxxa",
///                         },
///                         "directory_id": "eyjniptiykzcgbzok",
///                         "name": "lxmwfan",
///                     },
///                     "vault_secret": {
///                         "name": "bmectskddmpjxnsogwooexj",
///                         "version": "unjfbf",
///                     },
///                 },
///                 "secret_name": "ybcke",
///             },
///             "trusted_client_ca_cert_config_map": "udidafmnpt",
///         },
///     }],
///     authentication_name="lUo-GQ3-95F-1O-",
///     broker_name="87v1GC9557XuP-JLI4-",
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     listener_ref=["dhjpypfjzzmwm"],
///     location="vtxegvaeqwyupplnm",
///     mq_name="2S-A2-D9kC946K",
///     resource_group_name="rgiotoperationsmq",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   brokerAuthentication:
///     type: azure-native:iotoperationsmq:BrokerAuthentication
///     properties:
///       authenticationMethods:
///         - custom:
///             auth:
///               x509:
///                 keyVault:
///                   vault:
///                     credentials:
///                       servicePrincipalLocalSecretName: wuimjwpbhoglbsxxa
///                     directoryId: eyjniptiykzcgbzok
///                     name: lxmwfan
///                   vaultCaChainSecret:
///                     name: bmectskddmpjxnsogwooexj
///                     version: unjfbf
///                   vaultCert:
///                     name: bmectskddmpjxnsogwooexj
///                     version: unjfbf
///                 secretName: dordbwjewnqkhfd
///             caCertConfigMap: diufihyysdcosgy
///             endpoint: yy
///             headers: {}
///           sat:
///             audiences:
///               - fiyitxutbuuhwtltukyjacads
///           svid:
///             agentSocketPath: gnyowebmeaj
///             identityMaxRetry: 4.031184731e+09
///             identityWaitRetryMs: 2.2437058449350856e+18
///           usernamePassword:
///             keyVault:
///               vault:
///                 credentials:
///                   servicePrincipalLocalSecretName: wuimjwpbhoglbsxxa
///                 directoryId: eyjniptiykzcgbzok
///                 name: lxmwfan
///               vaultSecret:
///                 name: bmectskddmpjxnsogwooexj
///                 version: unjfbf
///             secretName: blk
///           x509:
///             attributes:
///               keyVault:
///                 vault:
///                   credentials:
///                     servicePrincipalLocalSecretName: wuimjwpbhoglbsxxa
///                   directoryId: eyjniptiykzcgbzok
///                   name: lxmwfan
///                 vaultSecret:
///                   name: bmectskddmpjxnsogwooexj
///                   version: unjfbf
///               secretName: ybcke
///             trustedClientCaCertConfigMap: udidafmnpt
///       authenticationName: lUo-GQ3-95F-1O-
///       brokerName: 87v1GC9557XuP-JLI4-
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       listenerRef:
///         - dhjpypfjzzmwm
///       location: vtxegvaeqwyupplnm
///       mqName: 2S-A2-D9kC946K
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
/// $ pulumi import azure-native:iotoperationsmq:BrokerAuthentication ktgtbdoqrmk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/broker/{brokerName}/authentication/{authenticationName}
/// ```
class BrokerAuthentication extends pulumi.CustomResource {
  /// The list of authentication methods supported by the Authentication Resource. For each array element, NOTE - Enum only authenticator type supported.
  late final pulumi.Output<List<Map<String, dynamic>>> authenticationMethods;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;
  /// The array of listener Resources it supports.
  late final pulumi.Output<List<String>> listenerRef;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
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

  /// Creates a new [BrokerAuthentication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrokerAuthentication]. {@macro pulumi_iotoperationsmq_broker_authentication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrokerAuthentication(
    String name, {
    BrokerAuthenticationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperationsmq:BrokerAuthentication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationMethods = registerOutput<List<Map<String, dynamic>>>('authenticationMethods');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listenerRef = registerOutput<List<String>>('listenerRef');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
