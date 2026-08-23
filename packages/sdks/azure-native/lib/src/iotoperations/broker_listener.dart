import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_listener_args.dart';
import 'broker_listener_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Instance broker resource
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2024-07-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BrokerListener_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var brokerListener = new AzureNative.IoTOperations.BrokerListener("brokerListener", new()
///     {
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         ListenerName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerListenerPropertiesArgs
///         {
///             Ports = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.ListenerPortArgs
///                 {
///                     AuthenticationRef = "tjvdroaqqy",
///                     AuthorizationRef = "inxhvxnwswyrvt",
///                     NodePort = 7281,
///                     Port = 1268,
///                     Protocol = AzureNative.IoTOperations.BrokerProtocolType.Mqtt,
///                     Tls = new AzureNative.IoTOperations.Inputs.TlsCertMethodArgs
///                     {
///                         CertManagerCertificateSpec = new AzureNative.IoTOperations.Inputs.CertManagerCertificateSpecArgs
///                         {
///                             Duration = "qmpeffoksron",
///                             IssuerRef = new AzureNative.IoTOperations.Inputs.CertManagerIssuerRefArgs
///                             {
///                                 Group = "jtmuladdkpasfpoyvewekmiy",
///                                 Kind = AzureNative.IoTOperations.CertManagerIssuerKind.Issuer,
///                                 Name = "ocwoqpgucvjrsuudtjhb",
///                             },
///                             PrivateKey = new AzureNative.IoTOperations.Inputs.CertManagerPrivateKeyArgs
///                             {
///                                 Algorithm = AzureNative.IoTOperations.PrivateKeyAlgorithm.Ec256,
///                                 RotationPolicy = AzureNative.IoTOperations.PrivateKeyRotationPolicy.Always,
///                             },
///                             RenewBefore = "hutno",
///                             San = new AzureNative.IoTOperations.Inputs.SanForCertArgs
///                             {
///                                 Dns = new[]
///                                 {
///                                     "xhvmhrrhgfsapocjeebqtnzarlj",
///                                 },
///                                 Ip = new[]
///                                 {
///                                     "zbgugfzcgsmegevzktsnibyuyp",
///                                 },
///                             },
///                             SecretName = "oagi",
///                         },
///                         Manual = new AzureNative.IoTOperations.Inputs.X509ManualCertificateArgs
///                         {
///                             SecretRef = "secret-name",
///                         },
///                         Mode = AzureNative.IoTOperations.TlsCertMethodMode.Automatic,
///                     },
///                 },
///             },
///             ServiceName = "tpfiszlapdpxktx",
///             ServiceType = AzureNative.IoTOperations.ServiceType.ClusterIp,
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
/// 		_, err := iotoperations.NewBrokerListener(ctx, "brokerListener", &iotoperations.BrokerListenerArgs{
/// 			BrokerName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			ListenerName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerListenerPropertiesArgs{
/// 				Ports: iotoperations.ListenerPortArray{
/// 					&iotoperations.ListenerPortArgs{
/// 						AuthenticationRef: pulumi.String("tjvdroaqqy"),
/// 						AuthorizationRef:  pulumi.String("inxhvxnwswyrvt"),
/// 						NodePort:          pulumi.Int(7281),
/// 						Port:              pulumi.Int(1268),
/// 						Protocol:          pulumi.String(iotoperations.BrokerProtocolTypeMqtt),
/// 						Tls: &iotoperations.TlsCertMethodArgs{
/// 							CertManagerCertificateSpec: &iotoperations.CertManagerCertificateSpecArgs{
/// 								Duration: pulumi.String("qmpeffoksron"),
/// 								IssuerRef: &iotoperations.CertManagerIssuerRefArgs{
/// 									Group: pulumi.String("jtmuladdkpasfpoyvewekmiy"),
/// 									Kind:  pulumi.String(iotoperations.CertManagerIssuerKindIssuer),
/// 									Name:  pulumi.String("ocwoqpgucvjrsuudtjhb"),
/// 								},
/// 								PrivateKey: &iotoperations.CertManagerPrivateKeyArgs{
/// 									Algorithm:      pulumi.String(iotoperations.PrivateKeyAlgorithmEc256),
/// 									RotationPolicy: pulumi.String(iotoperations.PrivateKeyRotationPolicyAlways),
/// 								},
/// 								RenewBefore: pulumi.String("hutno"),
/// 								San: &iotoperations.SanForCertArgs{
/// 									Dns: pulumi.StringArray{
/// 										pulumi.String("xhvmhrrhgfsapocjeebqtnzarlj"),
/// 									},
/// 									Ip: pulumi.StringArray{
/// 										pulumi.String("zbgugfzcgsmegevzktsnibyuyp"),
/// 									},
/// 								},
/// 								SecretName: pulumi.String("oagi"),
/// 							},
/// 							Manual: &iotoperations.X509ManualCertificateArgs{
/// 								SecretRef: pulumi.String("secret-name"),
/// 							},
/// 							Mode: pulumi.String(iotoperations.TlsCertMethodModeAutomatic),
/// 						},
/// 					},
/// 				},
/// 				ServiceName: pulumi.String("tpfiszlapdpxktx"),
/// 				ServiceType: pulumi.String(iotoperations.ServiceTypeClusterIp),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iotoperations_brokerlistener" "brokerListener" {
///   broker_name = "resource-name123"
///   extended_location = {
///     name = "qmbrfwcpwwhggszhrdjv"
///     type = "CustomLocation"
///   }
///   instance_name = "resource-name123"
///   listener_name = "resource-name123"
///   properties = {
///     ports = [{
///       "authenticationRef" = "tjvdroaqqy"
///       "authorizationRef"  = "inxhvxnwswyrvt"
///       "nodePort"          = 7281
///       "port"              = 1268
///       "protocol"          = "Mqtt"
///       "tls" = {
///         "certManagerCertificateSpec" = {
///           "duration" = "qmpeffoksron"
///           "issuerRef" = {
///             "group" = "jtmuladdkpasfpoyvewekmiy"
///             "kind"  = "Issuer"
///             "name"  = "ocwoqpgucvjrsuudtjhb"
///           }
///           "privateKey" = {
///             "algorithm"      = "Ec256"
///             "rotationPolicy" = "Always"
///           }
///           "renewBefore" = "hutno"
///           "san" = {
///             "dns" = ["xhvmhrrhgfsapocjeebqtnzarlj"]
///             "ip"  = ["zbgugfzcgsmegevzktsnibyuyp"]
///           }
///           "secretName" = "oagi"
///         }
///         "manual" = {
///           "secretRef" = "secret-name"
///         }
///         "mode" = "Automatic"
///       }
///     }]
///     service_name = "tpfiszlapdpxktx"
///     service_type = "ClusterIp"
///   }
///   resource_group_name = "rgiotoperations"
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
/// import com.pulumi.azurenative.iotoperations.BrokerListener;
/// import com.pulumi.azurenative.iotoperations.BrokerListenerArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerListenerPropertiesArgs;
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
///         var brokerListener = new BrokerListener("brokerListener", BrokerListenerArgs.builder()
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .listenerName("resource-name123")
///             .properties(BrokerListenerPropertiesArgs.builder()
///                 .ports(ListenerPortArgs.builder()
///                     .authenticationRef("tjvdroaqqy")
///                     .authorizationRef("inxhvxnwswyrvt")
///                     .nodePort(7281)
///                     .port(1268)
///                     .protocol("Mqtt")
///                     .tls(TlsCertMethodArgs.builder()
///                         .certManagerCertificateSpec(CertManagerCertificateSpecArgs.builder()
///                             .duration("qmpeffoksron")
///                             .issuerRef(CertManagerIssuerRefArgs.builder()
///                                 .group("jtmuladdkpasfpoyvewekmiy")
///                                 .kind("Issuer")
///                                 .name("ocwoqpgucvjrsuudtjhb")
///                                 .build())
///                             .privateKey(CertManagerPrivateKeyArgs.builder()
///                                 .algorithm("Ec256")
///                                 .rotationPolicy("Always")
///                                 .build())
///                             .renewBefore("hutno")
///                             .san(SanForCertArgs.builder()
///                                 .dns("xhvmhrrhgfsapocjeebqtnzarlj")
///                                 .ip("zbgugfzcgsmegevzktsnibyuyp")
///                                 .build())
///                             .secretName("oagi")
///                             .build())
///                         .manual(X509ManualCertificateArgs.builder()
///                             .secretRef("secret-name")
///                             .build())
///                         .mode("Automatic")
///                         .build())
///                     .build())
///                 .serviceName("tpfiszlapdpxktx")
///                 .serviceType("ClusterIp")
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
/// const brokerListener = new azure_native.iotoperations.BrokerListener("brokerListener", {
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     listenerName: "resource-name123",
///     properties: {
///         ports: [{
///             authenticationRef: "tjvdroaqqy",
///             authorizationRef: "inxhvxnwswyrvt",
///             nodePort: 7281,
///             port: 1268,
///             protocol: azure_native.iotoperations.BrokerProtocolType.Mqtt,
///             tls: {
///                 certManagerCertificateSpec: {
///                     duration: "qmpeffoksron",
///                     issuerRef: {
///                         group: "jtmuladdkpasfpoyvewekmiy",
///                         kind: azure_native.iotoperations.CertManagerIssuerKind.Issuer,
///                         name: "ocwoqpgucvjrsuudtjhb",
///                     },
///                     privateKey: {
///                         algorithm: azure_native.iotoperations.PrivateKeyAlgorithm.Ec256,
///                         rotationPolicy: azure_native.iotoperations.PrivateKeyRotationPolicy.Always,
///                     },
///                     renewBefore: "hutno",
///                     san: {
///                         dns: ["xhvmhrrhgfsapocjeebqtnzarlj"],
///                         ip: ["zbgugfzcgsmegevzktsnibyuyp"],
///                     },
///                     secretName: "oagi",
///                 },
///                 manual: {
///                     secretRef: "secret-name",
///                 },
///                 mode: azure_native.iotoperations.TlsCertMethodMode.Automatic,
///             },
///         }],
///         serviceName: "tpfiszlapdpxktx",
///         serviceType: azure_native.iotoperations.ServiceType.ClusterIp,
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
/// broker_listener = azure_native.iotoperations.BrokerListener("brokerListener",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     listener_name="resource-name123",
///     properties={
///         "ports": [{
///             "authentication_ref": "tjvdroaqqy",
///             "authorization_ref": "inxhvxnwswyrvt",
///             "node_port": 7281,
///             "port": 1268,
///             "protocol": azure_native.iotoperations.BrokerProtocolType.MQTT,
///             "tls": {
///                 "cert_manager_certificate_spec": {
///                     "duration": "qmpeffoksron",
///                     "issuer_ref": {
///                         "group": "jtmuladdkpasfpoyvewekmiy",
///                         "kind": azure_native.iotoperations.CertManagerIssuerKind.ISSUER,
///                         "name": "ocwoqpgucvjrsuudtjhb",
///                     },
///                     "private_key": {
///                         "algorithm": azure_native.iotoperations.PrivateKeyAlgorithm.EC256,
///                         "rotation_policy": azure_native.iotoperations.PrivateKeyRotationPolicy.ALWAYS,
///                     },
///                     "renew_before": "hutno",
///                     "san": {
///                         "dns": ["xhvmhrrhgfsapocjeebqtnzarlj"],
///                         "ip": ["zbgugfzcgsmegevzktsnibyuyp"],
///                     },
///                     "secret_name": "oagi",
///                 },
///                 "manual": {
///                     "secret_ref": "secret-name",
///                 },
///                 "mode": azure_native.iotoperations.TlsCertMethodMode.AUTOMATIC,
///             },
///         }],
///         "service_name": "tpfiszlapdpxktx",
///         "service_type": azure_native.iotoperations.ServiceType.CLUSTER_IP,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   brokerListener:
///     type: azure-native:iotoperations:BrokerListener
///     properties:
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       listenerName: resource-name123
///       properties:
///         ports:
///           - authenticationRef: tjvdroaqqy
///             authorizationRef: inxhvxnwswyrvt
///             nodePort: 7281
///             port: 1268
///             protocol: Mqtt
///             tls:
///               certManagerCertificateSpec:
///                 duration: qmpeffoksron
///                 issuerRef:
///                   group: jtmuladdkpasfpoyvewekmiy
///                   kind: Issuer
///                   name: ocwoqpgucvjrsuudtjhb
///                 privateKey:
///                   algorithm: Ec256
///                   rotationPolicy: Always
///                 renewBefore: hutno
///                 san:
///                   dns:
///                     - xhvmhrrhgfsapocjeebqtnzarlj
///                   ip:
///                     - zbgugfzcgsmegevzktsnibyuyp
///                 secretName: oagi
///               manual:
///                 secretRef: secret-name
///               mode: Automatic
///         serviceName: tpfiszlapdpxktx
///         serviceType: ClusterIp
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### BrokerListener_CreateOrUpdate_Complex
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var brokerListener = new AzureNative.IoTOperations.BrokerListener("brokerListener", new()
///     {
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         ListenerName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerListenerPropertiesArgs
///         {
///             Ports = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.ListenerPortArgs
///                 {
///                     AuthenticationRef = "example-authentication",
///                     Port = 8080,
///                     Protocol = AzureNative.IoTOperations.BrokerProtocolType.WebSockets,
///                 },
///                 new AzureNative.IoTOperations.Inputs.ListenerPortArgs
///                 {
///                     AuthenticationRef = "example-authentication",
///                     Port = 8443,
///                     Protocol = AzureNative.IoTOperations.BrokerProtocolType.WebSockets,
///                     Tls = new AzureNative.IoTOperations.Inputs.TlsCertMethodArgs
///                     {
///                         CertManagerCertificateSpec = new AzureNative.IoTOperations.Inputs.CertManagerCertificateSpecArgs
///                         {
///                             IssuerRef = new AzureNative.IoTOperations.Inputs.CertManagerIssuerRefArgs
///                             {
///                                 Group = "jtmuladdkpasfpoyvewekmiy",
///                                 Kind = AzureNative.IoTOperations.CertManagerIssuerKind.Issuer,
///                                 Name = "example-issuer",
///                             },
///                         },
///                         Mode = AzureNative.IoTOperations.TlsCertMethodMode.Automatic,
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.ListenerPortArgs
///                 {
///                     AuthenticationRef = "example-authentication",
///                     Port = 1883,
///                 },
///                 new AzureNative.IoTOperations.Inputs.ListenerPortArgs
///                 {
///                     AuthenticationRef = "example-authentication",
///                     Port = 8883,
///                     Tls = new AzureNative.IoTOperations.Inputs.TlsCertMethodArgs
///                     {
///                         Manual = new AzureNative.IoTOperations.Inputs.X509ManualCertificateArgs
///                         {
///                             SecretRef = "example-secret",
///                         },
///                         Mode = AzureNative.IoTOperations.TlsCertMethodMode.Manual,
///                     },
///                 },
///             },
///             ServiceType = AzureNative.IoTOperations.ServiceType.LoadBalancer,
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
/// 		_, err := iotoperations.NewBrokerListener(ctx, "brokerListener", &iotoperations.BrokerListenerArgs{
/// 			BrokerName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			ListenerName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerListenerPropertiesArgs{
/// 				Ports: iotoperations.ListenerPortArray{
/// 					&iotoperations.ListenerPortArgs{
/// 						AuthenticationRef: pulumi.String("example-authentication"),
/// 						Port:              pulumi.Int(8080),
/// 						Protocol:          pulumi.String(iotoperations.BrokerProtocolTypeWebSockets),
/// 					},
/// 					&iotoperations.ListenerPortArgs{
/// 						AuthenticationRef: pulumi.String("example-authentication"),
/// 						Port:              pulumi.Int(8443),
/// 						Protocol:          pulumi.String(iotoperations.BrokerProtocolTypeWebSockets),
/// 						Tls: &iotoperations.TlsCertMethodArgs{
/// 							CertManagerCertificateSpec: &iotoperations.CertManagerCertificateSpecArgs{
/// 								IssuerRef: &iotoperations.CertManagerIssuerRefArgs{
/// 									Group: pulumi.String("jtmuladdkpasfpoyvewekmiy"),
/// 									Kind:  pulumi.String(iotoperations.CertManagerIssuerKindIssuer),
/// 									Name:  pulumi.String("example-issuer"),
/// 								},
/// 							},
/// 							Mode: pulumi.String(iotoperations.TlsCertMethodModeAutomatic),
/// 						},
/// 					},
/// 					&iotoperations.ListenerPortArgs{
/// 						AuthenticationRef: pulumi.String("example-authentication"),
/// 						Port:              pulumi.Int(1883),
/// 					},
/// 					&iotoperations.ListenerPortArgs{
/// 						AuthenticationRef: pulumi.String("example-authentication"),
/// 						Port:              pulumi.Int(8883),
/// 						Tls: &iotoperations.TlsCertMethodArgs{
/// 							Manual: &iotoperations.X509ManualCertificateArgs{
/// 								SecretRef: pulumi.String("example-secret"),
/// 							},
/// 							Mode: pulumi.String(iotoperations.TlsCertMethodModeManual),
/// 						},
/// 					},
/// 				},
/// 				ServiceType: pulumi.String(iotoperations.ServiceTypeLoadBalancer),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iotoperations_brokerlistener" "brokerListener" {
///   broker_name = "resource-name123"
///   extended_location = {
///     name = "qmbrfwcpwwhggszhrdjv"
///     type = "CustomLocation"
///   }
///   instance_name = "resource-name123"
///   listener_name = "resource-name123"
///   properties = {
///     ports = [{
///       "authenticationRef" = "example-authentication"
///       "port"              = 8080
///       "protocol"          = "WebSockets"
///       }, {
///       "authenticationRef" = "example-authentication"
///       "port"              = 8443
///       "protocol"          = "WebSockets"
///       "tls" = {
///         "certManagerCertificateSpec" = {
///           "issuerRef" = {
///             "group" = "jtmuladdkpasfpoyvewekmiy"
///             "kind"  = "Issuer"
///             "name"  = "example-issuer"
///           }
///         }
///         "mode" = "Automatic"
///       }
///       }, {
///       "authenticationRef" = "example-authentication"
///       "port"              = 1883
///       }, {
///       "authenticationRef" = "example-authentication"
///       "port"              = 8883
///       "tls" = {
///         "manual" = {
///           "secretRef" = "example-secret"
///         }
///         "mode" = "Manual"
///       }
///     }]
///     service_type = "LoadBalancer"
///   }
///   resource_group_name = "rgiotoperations"
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
/// import com.pulumi.azurenative.iotoperations.BrokerListener;
/// import com.pulumi.azurenative.iotoperations.BrokerListenerArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerListenerPropertiesArgs;
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
///         var brokerListener = new BrokerListener("brokerListener", BrokerListenerArgs.builder()
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .listenerName("resource-name123")
///             .properties(BrokerListenerPropertiesArgs.builder()
///                 .ports(
///                     ListenerPortArgs.builder()
///                         .authenticationRef("example-authentication")
///                         .port(8080)
///                         .protocol("WebSockets")
///                         .build(),
///                     ListenerPortArgs.builder()
///                         .authenticationRef("example-authentication")
///                         .port(8443)
///                         .protocol("WebSockets")
///                         .tls(TlsCertMethodArgs.builder()
///                             .certManagerCertificateSpec(CertManagerCertificateSpecArgs.builder()
///                                 .issuerRef(CertManagerIssuerRefArgs.builder()
///                                     .group("jtmuladdkpasfpoyvewekmiy")
///                                     .kind("Issuer")
///                                     .name("example-issuer")
///                                     .build())
///                                 .build())
///                             .mode("Automatic")
///                             .build())
///                         .build(),
///                     ListenerPortArgs.builder()
///                         .authenticationRef("example-authentication")
///                         .port(1883)
///                         .build(),
///                     ListenerPortArgs.builder()
///                         .authenticationRef("example-authentication")
///                         .port(8883)
///                         .tls(TlsCertMethodArgs.builder()
///                             .manual(X509ManualCertificateArgs.builder()
///                                 .secretRef("example-secret")
///                                 .build())
///                             .mode("Manual")
///                             .build())
///                         .build())
///                 .serviceType("LoadBalancer")
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
/// const brokerListener = new azure_native.iotoperations.BrokerListener("brokerListener", {
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     listenerName: "resource-name123",
///     properties: {
///         ports: [
///             {
///                 authenticationRef: "example-authentication",
///                 port: 8080,
///                 protocol: azure_native.iotoperations.BrokerProtocolType.WebSockets,
///             },
///             {
///                 authenticationRef: "example-authentication",
///                 port: 8443,
///                 protocol: azure_native.iotoperations.BrokerProtocolType.WebSockets,
///                 tls: {
///                     certManagerCertificateSpec: {
///                         issuerRef: {
///                             group: "jtmuladdkpasfpoyvewekmiy",
///                             kind: azure_native.iotoperations.CertManagerIssuerKind.Issuer,
///                             name: "example-issuer",
///                         },
///                     },
///                     mode: azure_native.iotoperations.TlsCertMethodMode.Automatic,
///                 },
///             },
///             {
///                 authenticationRef: "example-authentication",
///                 port: 1883,
///             },
///             {
///                 authenticationRef: "example-authentication",
///                 port: 8883,
///                 tls: {
///                     manual: {
///                         secretRef: "example-secret",
///                     },
///                     mode: azure_native.iotoperations.TlsCertMethodMode.Manual,
///                 },
///             },
///         ],
///         serviceType: azure_native.iotoperations.ServiceType.LoadBalancer,
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
/// broker_listener = azure_native.iotoperations.BrokerListener("brokerListener",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     listener_name="resource-name123",
///     properties={
///         "ports": [
///             {
///                 "authentication_ref": "example-authentication",
///                 "port": 8080,
///                 "protocol": azure_native.iotoperations.BrokerProtocolType.WEB_SOCKETS,
///             },
///             {
///                 "authentication_ref": "example-authentication",
///                 "port": 8443,
///                 "protocol": azure_native.iotoperations.BrokerProtocolType.WEB_SOCKETS,
///                 "tls": {
///                     "cert_manager_certificate_spec": {
///                         "issuer_ref": {
///                             "group": "jtmuladdkpasfpoyvewekmiy",
///                             "kind": azure_native.iotoperations.CertManagerIssuerKind.ISSUER,
///                             "name": "example-issuer",
///                         },
///                     },
///                     "mode": azure_native.iotoperations.TlsCertMethodMode.AUTOMATIC,
///                 },
///             },
///             {
///                 "authentication_ref": "example-authentication",
///                 "port": 1883,
///             },
///             {
///                 "authentication_ref": "example-authentication",
///                 "port": 8883,
///                 "tls": {
///                     "manual": {
///                         "secret_ref": "example-secret",
///                     },
///                     "mode": azure_native.iotoperations.TlsCertMethodMode.MANUAL,
///                 },
///             },
///         ],
///         "service_type": azure_native.iotoperations.ServiceType.LOAD_BALANCER,
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   brokerListener:
///     type: azure-native:iotoperations:BrokerListener
///     properties:
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       listenerName: resource-name123
///       properties:
///         ports:
///           - authenticationRef: example-authentication
///             port: 8080
///             protocol: WebSockets
///           - authenticationRef: example-authentication
///             port: 8443
///             protocol: WebSockets
///             tls:
///               certManagerCertificateSpec:
///                 issuerRef:
///                   group: jtmuladdkpasfpoyvewekmiy
///                   kind: Issuer
///                   name: example-issuer
///               mode: Automatic
///           - authenticationRef: example-authentication
///             port: 1883
///           - authenticationRef: example-authentication
///             port: 8883
///             tls:
///               manual:
///                 secretRef: example-secret
///               mode: Manual
///         serviceType: LoadBalancer
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### BrokerListener_CreateOrUpdate_Simple
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var brokerListener = new AzureNative.IoTOperations.BrokerListener("brokerListener", new()
///     {
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         ListenerName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerListenerPropertiesArgs
///         {
///             Ports = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.ListenerPortArgs
///                 {
///                     Port = 1883,
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
/// 		_, err := iotoperations.NewBrokerListener(ctx, "brokerListener", &iotoperations.BrokerListenerArgs{
/// 			BrokerName: pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			ListenerName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerListenerPropertiesArgs{
/// 				Ports: iotoperations.ListenerPortArray{
/// 					&iotoperations.ListenerPortArgs{
/// 						Port: pulumi.Int(1883),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iotoperations_brokerlistener" "brokerListener" {
///   broker_name = "resource-name123"
///   extended_location = {
///     name = "qmbrfwcpwwhggszhrdjv"
///     type = "CustomLocation"
///   }
///   instance_name = "resource-name123"
///   listener_name = "resource-name123"
///   properties = {
///     ports = [{
///       "port" = 1883
///     }]
///   }
///   resource_group_name = "rgiotoperations"
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
/// import com.pulumi.azurenative.iotoperations.BrokerListener;
/// import com.pulumi.azurenative.iotoperations.BrokerListenerArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerListenerPropertiesArgs;
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
///         var brokerListener = new BrokerListener("brokerListener", BrokerListenerArgs.builder()
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .listenerName("resource-name123")
///             .properties(BrokerListenerPropertiesArgs.builder()
///                 .ports(ListenerPortArgs.builder()
///                     .port(1883)
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
/// const brokerListener = new azure_native.iotoperations.BrokerListener("brokerListener", {
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     listenerName: "resource-name123",
///     properties: {
///         ports: [{
///             port: 1883,
///         }],
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
/// broker_listener = azure_native.iotoperations.BrokerListener("brokerListener",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     listener_name="resource-name123",
///     properties={
///         "ports": [{
///             "port": 1883,
///         }],
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   brokerListener:
///     type: azure-native:iotoperations:BrokerListener
///     properties:
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       listenerName: resource-name123
///       properties:
///         ports:
///           - port: 1883
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
/// $ pulumi import azure-native:iotoperations:BrokerListener hoqjaachratt /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/brokers/{brokerName}/listeners/{listenerName}
/// ```
class BrokerListener extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<BrokerListenerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BrokerListener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrokerListener]. {@macro pulumi_iotoperations_broker_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrokerListener(
    String name, {
    BrokerListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperations:BrokerListener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<BrokerListenerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerListenerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
