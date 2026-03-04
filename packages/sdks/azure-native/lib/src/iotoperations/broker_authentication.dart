import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authentication_args.dart';
import 'broker_authentication_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Instance broker authentication resource
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2024-07-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var brokerAuthentication = new AzureNative.IoTOperations.BrokerAuthentication("brokerAuthentication", new()
///     {
///         AuthenticationName = "resource-name123",
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerAuthenticationPropertiesArgs
///         {
///             AuthenticationMethods = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodsArgs
///                 {
///                     CustomSettings = new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodCustomArgs
///                     {
///                         Auth = new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorCustomAuthArgs
///                         {
///                             X509 = new AzureNative.IoTOperations.Inputs.X509ManualCertificateArgs
///                             {
///                                 SecretRef = "secret-name",
///                             },
///                         },
///                         CaCertConfigMap = "pdecudefqyolvncbus",
///                         Endpoint = "https://www.example.com",
///                         Headers =
///                         {
///                             { "key8518", "bwityjy" },
///                         },
///                     },
///                     Method = AzureNative.IoTOperations.BrokerAuthenticationMethod.Custom,
///                     ServiceAccountTokenSettings = new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodSatArgs
///                     {
///                         Audiences = new[]
///                         {
///                             "jqyhyqatuydg",
///                         },
///                     },
///                     X509Settings = new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodX509Args
///                     {
///                         AuthorizationAttributes =
///                         {
///                             { "key3384", new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodX509AttributesArgs
///                             {
///                                 Attributes =
///                                 {
///                                     { "key186", "ucpajramsz" },
///                                 },
///                                 Subject = "jpgwctfeixitptfgfnqhua",
///                             } },
///                         },
///                         TrustedClientCaCert = "vlctsqddl",
///                     },
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
/// 		_, err := iotoperations.NewBrokerAuthentication(ctx, "brokerAuthentication", &iotoperations.BrokerAuthenticationArgs{
/// 			AuthenticationName: pulumi.String("resource-name123"),
/// 			BrokerName:         pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerAuthenticationPropertiesArgs{
/// 				AuthenticationMethods: iotoperations.BrokerAuthenticatorMethodsArray{
/// 					&iotoperations.BrokerAuthenticatorMethodsArgs{
/// 						CustomSettings: &iotoperations.BrokerAuthenticatorMethodCustomArgs{
/// 							Auth: &iotoperations.BrokerAuthenticatorCustomAuthArgs{
/// 								X509: &iotoperations.X509ManualCertificateArgs{
/// 									SecretRef: pulumi.String("secret-name"),
/// 								},
/// 							},
/// 							CaCertConfigMap: pulumi.String("pdecudefqyolvncbus"),
/// 							Endpoint:        pulumi.String("https://www.example.com"),
/// 							Headers: pulumi.StringMap{
/// 								"key8518": pulumi.String("bwityjy"),
/// 							},
/// 						},
/// 						Method: pulumi.String(iotoperations.BrokerAuthenticationMethodCustom),
/// 						ServiceAccountTokenSettings: &iotoperations.BrokerAuthenticatorMethodSatArgs{
/// 							Audiences: pulumi.StringArray{
/// 								pulumi.String("jqyhyqatuydg"),
/// 							},
/// 						},
/// 						X509Settings: &iotoperations.BrokerAuthenticatorMethodX509Args{
/// 							AuthorizationAttributes: iotoperations.BrokerAuthenticatorMethodX509AttributesMap{
/// 								"key3384": &iotoperations.BrokerAuthenticatorMethodX509AttributesArgs{
/// 									Attributes: pulumi.StringMap{
/// 										"key186": pulumi.String("ucpajramsz"),
/// 									},
/// 									Subject: pulumi.String("jpgwctfeixitptfgfnqhua"),
/// 								},
/// 							},
/// 							TrustedClientCaCert: pulumi.String("vlctsqddl"),
/// 						},
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
/// import com.pulumi.azurenative.iotoperations.BrokerAuthentication;
/// import com.pulumi.azurenative.iotoperations.BrokerAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerAuthenticationPropertiesArgs;
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
///         var brokerAuthentication = new BrokerAuthentication("brokerAuthentication", BrokerAuthenticationArgs.builder()
///             .authenticationName("resource-name123")
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(BrokerAuthenticationPropertiesArgs.builder()
///                 .authenticationMethods(BrokerAuthenticatorMethodsArgs.builder()
///                     .customSettings(BrokerAuthenticatorMethodCustomArgs.builder()
///                         .auth(BrokerAuthenticatorCustomAuthArgs.builder()
///                             .x509(X509ManualCertificateArgs.builder()
///                                 .secretRef("secret-name")
///                                 .build())
///                             .build())
///                         .caCertConfigMap("pdecudefqyolvncbus")
///                         .endpoint("https://www.example.com")
///                         .headers(Map.of("key8518", "bwityjy"))
///                         .build())
///                     .method("Custom")
///                     .serviceAccountTokenSettings(BrokerAuthenticatorMethodSatArgs.builder()
///                         .audiences("jqyhyqatuydg")
///                         .build())
///                     .x509Settings(BrokerAuthenticatorMethodX509Args.builder()
///                         .authorizationAttributes(Map.of("key3384", BrokerAuthenticatorMethodX509AttributesArgs.builder()
///                             .attributes(Map.of("key186", "ucpajramsz"))
///                             .subject("jpgwctfeixitptfgfnqhua")
///                             .build()))
///                         .trustedClientCaCert("vlctsqddl")
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
/// const brokerAuthentication = new azure_native.iotoperations.BrokerAuthentication("brokerAuthentication", {
///     authenticationName: "resource-name123",
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         authenticationMethods: [{
///             customSettings: {
///                 auth: {
///                     x509: {
///                         secretRef: "secret-name",
///                     },
///                 },
///                 caCertConfigMap: "pdecudefqyolvncbus",
///                 endpoint: "https://www.example.com",
///                 headers: {
///                     key8518: "bwityjy",
///                 },
///             },
///             method: azure_native.iotoperations.BrokerAuthenticationMethod.Custom,
///             serviceAccountTokenSettings: {
///                 audiences: ["jqyhyqatuydg"],
///             },
///             x509Settings: {
///                 authorizationAttributes: {
///                     key3384: {
///                         attributes: {
///                             key186: "ucpajramsz",
///                         },
///                         subject: "jpgwctfeixitptfgfnqhua",
///                     },
///                 },
///                 trustedClientCaCert: "vlctsqddl",
///             },
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
/// broker_authentication = azure_native.iotoperations.BrokerAuthentication("brokerAuthentication",
///     authentication_name="resource-name123",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "authentication_methods": [{
///             "custom_settings": {
///                 "auth": {
///                     "x509": {
///                         "secret_ref": "secret-name",
///                     },
///                 },
///                 "ca_cert_config_map": "pdecudefqyolvncbus",
///                 "endpoint": "https://www.example.com",
///                 "headers": {
///                     "key8518": "bwityjy",
///                 },
///             },
///             "method": azure_native.iotoperations.BrokerAuthenticationMethod.CUSTOM,
///             "service_account_token_settings": {
///                 "audiences": ["jqyhyqatuydg"],
///             },
///             "x509_settings": {
///                 "authorization_attributes": {
///                     "key3384": {
///                         "attributes": {
///                             "key186": "ucpajramsz",
///                         },
///                         "subject": "jpgwctfeixitptfgfnqhua",
///                     },
///                 },
///                 "trusted_client_ca_cert": "vlctsqddl",
///             },
///         }],
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   brokerAuthentication:
///     type: azure-native:iotoperations:BrokerAuthentication
///     properties:
///       authenticationName: resource-name123
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         authenticationMethods:
///           - customSettings:
///               auth:
///                 x509:
///                   secretRef: secret-name
///               caCertConfigMap: pdecudefqyolvncbus
///               endpoint: https://www.example.com
///               headers:
///                 key8518: bwityjy
///             method: Custom
///             serviceAccountTokenSettings:
///               audiences:
///                 - jqyhyqatuydg
///             x509Settings:
///               authorizationAttributes:
///                 key3384:
///                   attributes:
///                     key186: ucpajramsz
///                   subject: jpgwctfeixitptfgfnqhua
///               trustedClientCaCert: vlctsqddl
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### BrokerAuthentication_CreateOrUpdate_Complex
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var brokerAuthentication = new AzureNative.IoTOperations.BrokerAuthentication("brokerAuthentication", new()
///     {
///         AuthenticationName = "resource-name123",
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerAuthenticationPropertiesArgs
///         {
///             AuthenticationMethods = new[]
///             {
///                 new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodsArgs
///                 {
///                     Method = AzureNative.IoTOperations.BrokerAuthenticationMethod.ServiceAccountToken,
///                     ServiceAccountTokenSettings = new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodSatArgs
///                     {
///                         Audiences = new[]
///                         {
///                             "aio-internal",
///                         },
///                     },
///                 },
///                 new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodsArgs
///                 {
///                     Method = AzureNative.IoTOperations.BrokerAuthenticationMethod.X509,
///                     X509Settings = new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodX509Args
///                     {
///                         AuthorizationAttributes =
///                         {
///                             { "intermediate", new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodX509AttributesArgs
///                             {
///                                 Attributes =
///                                 {
///                                     { "city", "seattle" },
///                                     { "foo", "bar" },
///                                 },
///                                 Subject = "CN = Contoso Intermediate CA",
///                             } },
///                             { "root", new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodX509AttributesArgs
///                             {
///                                 Attributes =
///                                 {
///                                     { "organization", "contoso" },
///                                 },
///                                 Subject = "CN = Contoso Root CA Cert, OU = Engineering, C = US",
///                             } },
///                             { "smart-fan", new AzureNative.IoTOperations.Inputs.BrokerAuthenticatorMethodX509AttributesArgs
///                             {
///                                 Attributes =
///                                 {
///                                     { "building", "17" },
///                                 },
///                                 Subject = "CN = smart-fan",
///                             } },
///                         },
///                         TrustedClientCaCert = "my-ca",
///                     },
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
/// 		_, err := iotoperations.NewBrokerAuthentication(ctx, "brokerAuthentication", &iotoperations.BrokerAuthenticationArgs{
/// 			AuthenticationName: pulumi.String("resource-name123"),
/// 			BrokerName:         pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerAuthenticationPropertiesArgs{
/// 				AuthenticationMethods: iotoperations.BrokerAuthenticatorMethodsArray{
/// 					&iotoperations.BrokerAuthenticatorMethodsArgs{
/// 						Method: pulumi.String(iotoperations.BrokerAuthenticationMethodServiceAccountToken),
/// 						ServiceAccountTokenSettings: &iotoperations.BrokerAuthenticatorMethodSatArgs{
/// 							Audiences: pulumi.StringArray{
/// 								pulumi.String("aio-internal"),
/// 							},
/// 						},
/// 					},
/// 					&iotoperations.BrokerAuthenticatorMethodsArgs{
/// 						Method: pulumi.String(iotoperations.BrokerAuthenticationMethodX509),
/// 						X509Settings: &iotoperations.BrokerAuthenticatorMethodX509Args{
/// 							AuthorizationAttributes: iotoperations.BrokerAuthenticatorMethodX509AttributesMap{
/// 								"intermediate": &iotoperations.BrokerAuthenticatorMethodX509AttributesArgs{
/// 									Attributes: pulumi.StringMap{
/// 										"city": pulumi.String("seattle"),
/// 										"foo":  pulumi.String("bar"),
/// 									},
/// 									Subject: pulumi.String("CN = Contoso Intermediate CA"),
/// 								},
/// 								"root": &iotoperations.BrokerAuthenticatorMethodX509AttributesArgs{
/// 									Attributes: pulumi.StringMap{
/// 										"organization": pulumi.String("contoso"),
/// 									},
/// 									Subject: pulumi.String("CN = Contoso Root CA Cert, OU = Engineering, C = US"),
/// 								},
/// 								"smart-fan": &iotoperations.BrokerAuthenticatorMethodX509AttributesArgs{
/// 									Attributes: pulumi.StringMap{
/// 										"building": pulumi.String("17"),
/// 									},
/// 									Subject: pulumi.String("CN = smart-fan"),
/// 								},
/// 							},
/// 							TrustedClientCaCert: pulumi.String("my-ca"),
/// 						},
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
/// import com.pulumi.azurenative.iotoperations.BrokerAuthentication;
/// import com.pulumi.azurenative.iotoperations.BrokerAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerAuthenticationPropertiesArgs;
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
///         var brokerAuthentication = new BrokerAuthentication("brokerAuthentication", BrokerAuthenticationArgs.builder()
///             .authenticationName("resource-name123")
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(BrokerAuthenticationPropertiesArgs.builder()
///                 .authenticationMethods(
///                     BrokerAuthenticatorMethodsArgs.builder()
///                         .method("ServiceAccountToken")
///                         .serviceAccountTokenSettings(BrokerAuthenticatorMethodSatArgs.builder()
///                             .audiences("aio-internal")
///                             .build())
///                         .build(),
///                     BrokerAuthenticatorMethodsArgs.builder()
///                         .method("X509")
///                         .x509Settings(BrokerAuthenticatorMethodX509Args.builder()
///                             .authorizationAttributes(Map.ofEntries(
///                                 Map.entry("intermediate", BrokerAuthenticatorMethodX509AttributesArgs.builder()
///                                     .attributes(Map.ofEntries(
///                                         Map.entry("city", "seattle"),
///                                         Map.entry("foo", "bar")
///                                     ))
///                                     .subject("CN = Contoso Intermediate CA")
///                                     .build()),
///                                 Map.entry("root", BrokerAuthenticatorMethodX509AttributesArgs.builder()
///                                     .attributes(Map.of("organization", "contoso"))
///                                     .subject("CN = Contoso Root CA Cert, OU = Engineering, C = US")
///                                     .build()),
///                                 Map.entry("smart-fan", BrokerAuthenticatorMethodX509AttributesArgs.builder()
///                                     .attributes(Map.of("building", "17"))
///                                     .subject("CN = smart-fan")
///                                     .build())
///                             ))
///                             .trustedClientCaCert("my-ca")
///                             .build())
///                         .build())
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
/// const brokerAuthentication = new azure_native.iotoperations.BrokerAuthentication("brokerAuthentication", {
///     authenticationName: "resource-name123",
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         authenticationMethods: [
///             {
///                 method: azure_native.iotoperations.BrokerAuthenticationMethod.ServiceAccountToken,
///                 serviceAccountTokenSettings: {
///                     audiences: ["aio-internal"],
///                 },
///             },
///             {
///                 method: azure_native.iotoperations.BrokerAuthenticationMethod.X509,
///                 x509Settings: {
///                     authorizationAttributes: {
///                         intermediate: {
///                             attributes: {
///                                 city: "seattle",
///                                 foo: "bar",
///                             },
///                             subject: "CN = Contoso Intermediate CA",
///                         },
///                         root: {
///                             attributes: {
///                                 organization: "contoso",
///                             },
///                             subject: "CN = Contoso Root CA Cert, OU = Engineering, C = US",
///                         },
///                         "smart-fan": {
///                             attributes: {
///                                 building: "17",
///                             },
///                             subject: "CN = smart-fan",
///                         },
///                     },
///                     trustedClientCaCert: "my-ca",
///                 },
///             },
///         ],
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
/// broker_authentication = azure_native.iotoperations.BrokerAuthentication("brokerAuthentication",
///     authentication_name="resource-name123",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "authentication_methods": [
///             {
///                 "method": azure_native.iotoperations.BrokerAuthenticationMethod.SERVICE_ACCOUNT_TOKEN,
///                 "service_account_token_settings": {
///                     "audiences": ["aio-internal"],
///                 },
///             },
///             {
///                 "method": azure_native.iotoperations.BrokerAuthenticationMethod.X509,
///                 "x509_settings": {
///                     "authorization_attributes": {
///                         "intermediate": {
///                             "attributes": {
///                                 "city": "seattle",
///                                 "foo": "bar",
///                             },
///                             "subject": "CN = Contoso Intermediate CA",
///                         },
///                         "root": {
///                             "attributes": {
///                                 "organization": "contoso",
///                             },
///                             "subject": "CN = Contoso Root CA Cert, OU = Engineering, C = US",
///                         },
///                         "smart-fan": {
///                             "attributes": {
///                                 "building": "17",
///                             },
///                             "subject": "CN = smart-fan",
///                         },
///                     },
///                     "trusted_client_ca_cert": "my-ca",
///                 },
///             },
///         ],
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   brokerAuthentication:
///     type: azure-native:iotoperations:BrokerAuthentication
///     properties:
///       authenticationName: resource-name123
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         authenticationMethods:
///           - method: ServiceAccountToken
///             serviceAccountTokenSettings:
///               audiences:
///                 - aio-internal
///           - method: X509
///             x509Settings:
///               authorizationAttributes:
///                 intermediate:
///                   attributes:
///                     city: seattle
///                     foo: bar
///                   subject: CN = Contoso Intermediate CA
///                 root:
///                   attributes:
///                     organization: contoso
///                   subject: CN = Contoso Root CA Cert, OU = Engineering, C = US
///                 smart-fan:
///                   attributes:
///                     building: '17'
///                   subject: CN = smart-fan
///               trustedClientCaCert: my-ca
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
/// $ pulumi import azure-native:iotoperations:BrokerAuthentication lwucizfvtsdpx /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/brokers/{brokerName}/authentications/{authenticationName}
/// ```
class BrokerAuthentication extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<BrokerAuthenticationPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BrokerAuthentication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrokerAuthentication]. {@macro pulumi_iotoperations_broker_authentication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrokerAuthentication(
    String name, {
    BrokerAuthenticationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:iotoperations:BrokerAuthentication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
    );
    this.name = registerOutput<String>('name');
    properties = registerOutput<BrokerAuthenticationPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
