import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_listener_args.dart';
import 'extended_location_property_response.dart';
import 'system_data_response.dart';
import 'tls_cert_method_response.dart';

/// MQ broker/listener resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
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
///     var brokerListener = new AzureNative.IoTOperationsMQ.BrokerListener("brokerListener", new()
///     {
///         AuthenticationEnabled = true,
///         AuthorizationEnabled = true,
///         BrokerName = "HGF6WIy6oHv756MjW0JRLILF",
///         BrokerRef = "ikuszpfycikq",
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         ListenerName = "XGEP",
///         Location = "dppbdcpstouifyko",
///         MqName = "Z1-2BCdNY4JO--84",
///         NodePort = 34375,
///         Port = 19791,
///         ResourceGroupName = "rgiotoperationsmq",
///         ServiceName = "euxa",
///         ServiceType = AzureNative.IoTOperationsMQ.ServiceType.ClusterIp,
///         Tags = null,
///         Tls = new AzureNative.IoTOperationsMQ.Inputs.TlsCertMethodArgs
///         {
///             Automatic = new AzureNative.IoTOperationsMQ.Inputs.AutomaticCertMethodArgs
///             {
///                 Duration = "rv",
///                 IssuerRef = new AzureNative.IoTOperationsMQ.Inputs.CertManagerIssuerRefArgs
///                 {
///                     Group = "wxydv",
///                     Kind = "birgjwuxfjcvyqe",
///                     Name = "krmdlovyynymtvgffaveker",
///                 },
///                 PrivateKey = new AzureNative.IoTOperationsMQ.Inputs.CertManagerPrivateKeyArgs
///                 {
///                     Algorithm = "wwewfsddymjefuhxzqybwvay",
///                     RotationPolicy = "jxmpyvfneckopjiakjtous",
///                     Size = 63427,
///                 },
///                 RenewBefore = "dexxoqqkgyofhkbk",
///                 San = new AzureNative.IoTOperationsMQ.Inputs.SanForCertArgs
///                 {
///                     Dns = new[]
///                     {
///                         "nknzptgqgjvbkgzv",
///                     },
///                     Ip = new[]
///                     {
///                         "jpdkemham",
///                     },
///                 },
///                 SecretName = "hquvygbuueerkspqqktviya",
///                 SecretNamespace = "aevwndhcnfxitdjykp",
///             },
///             KeyVault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultCertificatePropertiesArgs
///             {
///                 Vault = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultConnectionPropertiesArgs
///                 {
///                     Credentials = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultCredentialsPropertiesArgs
///                     {
///                         ServicePrincipalLocalSecretName = "wuimjwpbhoglbsxxa",
///                     },
///                     DirectoryId = "eyjniptiykzcgbzok",
///                     Name = "lxmwfan",
///                 },
///                 VaultCaChainSecret = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                 {
///                     Name = "bmectskddmpjxnsogwooexj",
///                     Version = "unjfbf",
///                 },
///                 VaultCert = new AzureNative.IoTOperationsMQ.Inputs.KeyVaultSecretObjectArgs
///                 {
///                     Name = "bmectskddmpjxnsogwooexj",
///                     Version = "unjfbf",
///                 },
///             },
///             Manual = new AzureNative.IoTOperationsMQ.Inputs.ManualCertMethodArgs
///             {
///                 SecretName = "fezcl",
///                 SecretNamespace = "ozhayajoooingoczovfusqyilin",
///             },
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
/// 	iotoperationsmq "github.com/pulumi/pulumi-azure-native-sdk/iotoperationsmq/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperationsmq.NewBrokerListener(ctx, "brokerListener", &iotoperationsmq.BrokerListenerArgs{
/// 			AuthenticationEnabled: pulumi.Bool(true),
/// 			AuthorizationEnabled:  pulumi.Bool(true),
/// 			BrokerName:            pulumi.String("HGF6WIy6oHv756MjW0JRLILF"),
/// 			BrokerRef:             pulumi.String("ikuszpfycikq"),
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			ListenerName:      pulumi.String("XGEP"),
/// 			Location:          pulumi.String("dppbdcpstouifyko"),
/// 			MqName:            pulumi.String("Z1-2BCdNY4JO--84"),
/// 			NodePort:          pulumi.Int(34375),
/// 			Port:              pulumi.Int(19791),
/// 			ResourceGroupName: pulumi.String("rgiotoperationsmq"),
/// 			ServiceName:       pulumi.String("euxa"),
/// 			ServiceType:       pulumi.String(iotoperationsmq.ServiceTypeClusterIp),
/// 			Tags:              pulumi.StringMap{},
/// 			Tls: &iotoperationsmq.TlsCertMethodArgs{
/// 				Automatic: &iotoperationsmq.AutomaticCertMethodArgs{
/// 					Duration: pulumi.String("rv"),
/// 					IssuerRef: &iotoperationsmq.CertManagerIssuerRefArgs{
/// 						Group: pulumi.String("wxydv"),
/// 						Kind:  pulumi.String("birgjwuxfjcvyqe"),
/// 						Name:  pulumi.String("krmdlovyynymtvgffaveker"),
/// 					},
/// 					PrivateKey: &iotoperationsmq.CertManagerPrivateKeyArgs{
/// 						Algorithm:      pulumi.String("wwewfsddymjefuhxzqybwvay"),
/// 						RotationPolicy: pulumi.String("jxmpyvfneckopjiakjtous"),
/// 						Size:           pulumi.Int(63427),
/// 					},
/// 					RenewBefore: pulumi.String("dexxoqqkgyofhkbk"),
/// 					San: &iotoperationsmq.SanForCertArgs{
/// 						Dns: pulumi.StringArray{
/// 							pulumi.String("nknzptgqgjvbkgzv"),
/// 						},
/// 						Ip: pulumi.StringArray{
/// 							pulumi.String("jpdkemham"),
/// 						},
/// 					},
/// 					SecretName:      pulumi.String("hquvygbuueerkspqqktviya"),
/// 					SecretNamespace: pulumi.String("aevwndhcnfxitdjykp"),
/// 				},
/// 				KeyVault: &iotoperationsmq.KeyVaultCertificatePropertiesArgs{
/// 					Vault: &iotoperationsmq.KeyVaultConnectionPropertiesArgs{
/// 						Credentials: &iotoperationsmq.KeyVaultCredentialsPropertiesArgs{
/// 							ServicePrincipalLocalSecretName: pulumi.String("wuimjwpbhoglbsxxa"),
/// 						},
/// 						DirectoryId: pulumi.String("eyjniptiykzcgbzok"),
/// 						Name:        pulumi.String("lxmwfan"),
/// 					},
/// 					VaultCaChainSecret: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 						Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 						Version: pulumi.String("unjfbf"),
/// 					},
/// 					VaultCert: &iotoperationsmq.KeyVaultSecretObjectArgs{
/// 						Name:    pulumi.String("bmectskddmpjxnsogwooexj"),
/// 						Version: pulumi.String("unjfbf"),
/// 					},
/// 				},
/// 				Manual: &iotoperationsmq.ManualCertMethodArgs{
/// 					SecretName:      pulumi.String("fezcl"),
/// 					SecretNamespace: pulumi.String("ozhayajoooingoczovfusqyilin"),
/// 				},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iotoperationsmq_brokerlistener" "brokerListener" {
///   authentication_enabled = true
///   authorization_enabled  = true
///   broker_name            = "HGF6WIy6oHv756MjW0JRLILF"
///   broker_ref             = "ikuszpfycikq"
///   extended_location = {
///     name = "an"
///     type = "CustomLocation"
///   }
///   listener_name       = "XGEP"
///   location            = "dppbdcpstouifyko"
///   mq_name             = "Z1-2BCdNY4JO--84"
///   node_port           = 34375
///   port                = 19791
///   resource_group_name = "rgiotoperationsmq"
///   service_name        = "euxa"
///   service_type        = "clusterIp"
///   tags                = {}
///   tls = {
///     automatic = {
///       duration = "rv"
///       issuer_ref = {
///         group = "wxydv"
///         kind  = "birgjwuxfjcvyqe"
///         name  = "krmdlovyynymtvgffaveker"
///       }
///       private_key = {
///         algorithm       = "wwewfsddymjefuhxzqybwvay"
///         rotation_policy = "jxmpyvfneckopjiakjtous"
///         size            = 63427
///       }
///       renew_before = "dexxoqqkgyofhkbk"
///       san = {
///         dns = ["nknzptgqgjvbkgzv"]
///         ip  = ["jpdkemham"]
///       }
///       secret_name      = "hquvygbuueerkspqqktviya"
///       secret_namespace = "aevwndhcnfxitdjykp"
///     }
///     key_vault = {
///       vault = {
///         credentials = {
///           service_principal_local_secret_name = "wuimjwpbhoglbsxxa"
///         }
///         directory_id = "eyjniptiykzcgbzok"
///         name         = "lxmwfan"
///       }
///       vault_ca_chain_secret = {
///         name    = "bmectskddmpjxnsogwooexj"
///         version = "unjfbf"
///       }
///       vault_cert = {
///         name    = "bmectskddmpjxnsogwooexj"
///         version = "unjfbf"
///       }
///     }
///     manual = {
///       secret_name      = "fezcl"
///       secret_namespace = "ozhayajoooingoczovfusqyilin"
///     }
///   }
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
/// import com.pulumi.azurenative.iotoperationsmq.BrokerListener;
/// import com.pulumi.azurenative.iotoperationsmq.BrokerListenerArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.TlsCertMethodArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.AutomaticCertMethodArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.CertManagerIssuerRefArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.CertManagerPrivateKeyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.SanForCertArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultCertificatePropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultConnectionPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultCredentialsPropertiesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.KeyVaultSecretObjectArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ManualCertMethodArgs;
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
///             .authenticationEnabled(true)
///             .authorizationEnabled(true)
///             .brokerName("HGF6WIy6oHv756MjW0JRLILF")
///             .brokerRef("ikuszpfycikq")
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .listenerName("XGEP")
///             .location("dppbdcpstouifyko")
///             .mqName("Z1-2BCdNY4JO--84")
///             .nodePort(34375)
///             .port(19791)
///             .resourceGroupName("rgiotoperationsmq")
///             .serviceName("euxa")
///             .serviceType("clusterIp")
///             .tags(Map.ofEntries(
///             ))
///             .tls(TlsCertMethodArgs.builder()
///                 .automatic(AutomaticCertMethodArgs.builder()
///                     .duration("rv")
///                     .issuerRef(CertManagerIssuerRefArgs.builder()
///                         .group("wxydv")
///                         .kind("birgjwuxfjcvyqe")
///                         .name("krmdlovyynymtvgffaveker")
///                         .build())
///                     .privateKey(CertManagerPrivateKeyArgs.builder()
///                         .algorithm("wwewfsddymjefuhxzqybwvay")
///                         .rotationPolicy("jxmpyvfneckopjiakjtous")
///                         .size(63427)
///                         .build())
///                     .renewBefore("dexxoqqkgyofhkbk")
///                     .san(SanForCertArgs.builder()
///                         .dns("nknzptgqgjvbkgzv")
///                         .ip("jpdkemham")
///                         .build())
///                     .secretName("hquvygbuueerkspqqktviya")
///                     .secretNamespace("aevwndhcnfxitdjykp")
///                     .build())
///                 .keyVault(KeyVaultCertificatePropertiesArgs.builder()
///                     .vault(KeyVaultConnectionPropertiesArgs.builder()
///                         .credentials(KeyVaultCredentialsPropertiesArgs.builder()
///                             .servicePrincipalLocalSecretName("wuimjwpbhoglbsxxa")
///                             .build())
///                         .directoryId("eyjniptiykzcgbzok")
///                         .name("lxmwfan")
///                         .build())
///                     .vaultCaChainSecret(KeyVaultSecretObjectArgs.builder()
///                         .name("bmectskddmpjxnsogwooexj")
///                         .version("unjfbf")
///                         .build())
///                     .vaultCert(KeyVaultSecretObjectArgs.builder()
///                         .name("bmectskddmpjxnsogwooexj")
///                         .version("unjfbf")
///                         .build())
///                     .build())
///                 .manual(ManualCertMethodArgs.builder()
///                     .secretName("fezcl")
///                     .secretNamespace("ozhayajoooingoczovfusqyilin")
///                     .build())
///                 .build())
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
/// const brokerListener = new azure_native.iotoperationsmq.BrokerListener("brokerListener", {
///     authenticationEnabled: true,
///     authorizationEnabled: true,
///     brokerName: "HGF6WIy6oHv756MjW0JRLILF",
///     brokerRef: "ikuszpfycikq",
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     listenerName: "XGEP",
///     location: "dppbdcpstouifyko",
///     mqName: "Z1-2BCdNY4JO--84",
///     nodePort: 34375,
///     port: 19791,
///     resourceGroupName: "rgiotoperationsmq",
///     serviceName: "euxa",
///     serviceType: azure_native.iotoperationsmq.ServiceType.ClusterIp,
///     tags: {},
///     tls: {
///         automatic: {
///             duration: "rv",
///             issuerRef: {
///                 group: "wxydv",
///                 kind: "birgjwuxfjcvyqe",
///                 name: "krmdlovyynymtvgffaveker",
///             },
///             privateKey: {
///                 algorithm: "wwewfsddymjefuhxzqybwvay",
///                 rotationPolicy: "jxmpyvfneckopjiakjtous",
///                 size: 63427,
///             },
///             renewBefore: "dexxoqqkgyofhkbk",
///             san: {
///                 dns: ["nknzptgqgjvbkgzv"],
///                 ip: ["jpdkemham"],
///             },
///             secretName: "hquvygbuueerkspqqktviya",
///             secretNamespace: "aevwndhcnfxitdjykp",
///         },
///         keyVault: {
///             vault: {
///                 credentials: {
///                     servicePrincipalLocalSecretName: "wuimjwpbhoglbsxxa",
///                 },
///                 directoryId: "eyjniptiykzcgbzok",
///                 name: "lxmwfan",
///             },
///             vaultCaChainSecret: {
///                 name: "bmectskddmpjxnsogwooexj",
///                 version: "unjfbf",
///             },
///             vaultCert: {
///                 name: "bmectskddmpjxnsogwooexj",
///                 version: "unjfbf",
///             },
///         },
///         manual: {
///             secretName: "fezcl",
///             secretNamespace: "ozhayajoooingoczovfusqyilin",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// broker_listener = azure_native.iotoperationsmq.BrokerListener("brokerListener",
///     authentication_enabled=True,
///     authorization_enabled=True,
///     broker_name="HGF6WIy6oHv756MjW0JRLILF",
///     broker_ref="ikuszpfycikq",
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     listener_name="XGEP",
///     location="dppbdcpstouifyko",
///     mq_name="Z1-2BCdNY4JO--84",
///     node_port=34375,
///     port=19791,
///     resource_group_name="rgiotoperationsmq",
///     service_name="euxa",
///     service_type=azure_native.iotoperationsmq.ServiceType.CLUSTER_IP,
///     tags={},
///     tls={
///         "automatic": {
///             "duration": "rv",
///             "issuer_ref": {
///                 "group": "wxydv",
///                 "kind": "birgjwuxfjcvyqe",
///                 "name": "krmdlovyynymtvgffaveker",
///             },
///             "private_key": {
///                 "algorithm": "wwewfsddymjefuhxzqybwvay",
///                 "rotation_policy": "jxmpyvfneckopjiakjtous",
///                 "size": 63427,
///             },
///             "renew_before": "dexxoqqkgyofhkbk",
///             "san": {
///                 "dns": ["nknzptgqgjvbkgzv"],
///                 "ip": ["jpdkemham"],
///             },
///             "secret_name": "hquvygbuueerkspqqktviya",
///             "secret_namespace": "aevwndhcnfxitdjykp",
///         },
///         "key_vault": {
///             "vault": {
///                 "credentials": {
///                     "service_principal_local_secret_name": "wuimjwpbhoglbsxxa",
///                 },
///                 "directory_id": "eyjniptiykzcgbzok",
///                 "name": "lxmwfan",
///             },
///             "vault_ca_chain_secret": {
///                 "name": "bmectskddmpjxnsogwooexj",
///                 "version": "unjfbf",
///             },
///             "vault_cert": {
///                 "name": "bmectskddmpjxnsogwooexj",
///                 "version": "unjfbf",
///             },
///         },
///         "manual": {
///             "secret_name": "fezcl",
///             "secret_namespace": "ozhayajoooingoczovfusqyilin",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   brokerListener:
///     type: azure-native:iotoperationsmq:BrokerListener
///     properties:
///       authenticationEnabled: true
///       authorizationEnabled: true
///       brokerName: HGF6WIy6oHv756MjW0JRLILF
///       brokerRef: ikuszpfycikq
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       listenerName: XGEP
///       location: dppbdcpstouifyko
///       mqName: Z1-2BCdNY4JO--84
///       nodePort: 34375
///       port: 19791
///       resourceGroupName: rgiotoperationsmq
///       serviceName: euxa
///       serviceType: clusterIp
///       tags: {}
///       tls:
///         automatic:
///           duration: rv
///           issuerRef:
///             group: wxydv
///             kind: birgjwuxfjcvyqe
///             name: krmdlovyynymtvgffaveker
///           privateKey:
///             algorithm: wwewfsddymjefuhxzqybwvay
///             rotationPolicy: jxmpyvfneckopjiakjtous
///             size: 63427
///           renewBefore: dexxoqqkgyofhkbk
///           san:
///             dns:
///               - nknzptgqgjvbkgzv
///             ip:
///               - jpdkemham
///           secretName: hquvygbuueerkspqqktviya
///           secretNamespace: aevwndhcnfxitdjykp
///         keyVault:
///           vault:
///             credentials:
///               servicePrincipalLocalSecretName: wuimjwpbhoglbsxxa
///             directoryId: eyjniptiykzcgbzok
///             name: lxmwfan
///           vaultCaChainSecret:
///             name: bmectskddmpjxnsogwooexj
///             version: unjfbf
///           vaultCert:
///             name: bmectskddmpjxnsogwooexj
///             version: unjfbf
///         manual:
///           secretName: fezcl
///           secretNamespace: ozhayajoooingoczovfusqyilin
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
/// $ pulumi import azure-native:iotoperationsmq:BrokerListener ukqwzeflpmangzptkaengwiedlsb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/broker/{brokerName}/listener/{listenerName}
/// ```
class BrokerListener extends pulumi.CustomResource {
  /// The flag for enabling Authentication rules on Listener Port.
  late final pulumi.Output<bool?> authenticationEnabled;
  /// The flag for enabling Authorization policies on Listener Port. false - AllowAll, true - Use Authorization resource rules if present.
  late final pulumi.Output<bool?> authorizationEnabled;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The k8s cr/resource reference of mq/broker.
  late final pulumi.Output<String> brokerRef;
  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The node port to use on the Host node.
  late final pulumi.Output<int?> nodePort;
  /// The port to start Listening for connections on.
  late final pulumi.Output<int> port;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// The service name to expose Listener port on.
  late final pulumi.Output<String?> serviceName;
  /// The Kubernetes Service type to deploy for Listener.
  late final pulumi.Output<String?> serviceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Defines configuration of a TLS server certificate. NOTE Enum - Only one TLS Cert method is supported
  late final pulumi.Output<TlsCertMethodResponse?> tls;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BrokerListener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrokerListener]. {@macro pulumi_iotoperationsmq_broker_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrokerListener(
    String name, {
    BrokerListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperationsmq:BrokerListener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationEnabled = registerOutput<bool?>('authenticationEnabled');
    authorizationEnabled = registerOutput<bool?>('authorizationEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    brokerRef = registerOutput<String>('brokerRef');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodePort = registerOutput<int?>('nodePort');
    port = registerOutput<int>('port');
    provisioningState = registerOutput<String>('provisioningState');
    serviceName = registerOutput<String?>('serviceName');
    serviceType = registerOutput<String?>('serviceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tls = registerOutput<TlsCertMethodResponse?>('tls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TlsCertMethodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [BrokerListener] resource.
  BrokerListener.reference(String urn)
    : super(
        'azure-native:iotoperationsmq:BrokerListener',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authenticationEnabled = registerOutput<bool?>('authenticationEnabled');
    authorizationEnabled = registerOutput<bool?>('authorizationEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    brokerRef = registerOutput<String>('brokerRef');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodePort = registerOutput<int?>('nodePort');
    port = registerOutput<int>('port');
    provisioningState = registerOutput<String>('provisioningState');
    serviceName = registerOutput<String?>('serviceName');
    serviceType = registerOutput<String?>('serviceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tls = registerOutput<TlsCertMethodResponse?>('tls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TlsCertMethodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
