import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authorization_args.dart';
import 'broker_authorization_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Instance broker authorizations resource
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2024-07-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-08-15-preview, 2024-09-15-preview, 2025-04-01, 2025-07-01-preview, 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BrokerAuthorization_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var brokerAuthorization = new AzureNative.IoTOperations.BrokerAuthorization("brokerAuthorization", new()
///     {
///         AuthorizationName = "resource-name123",
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerAuthorizationPropertiesArgs
///         {
///             AuthorizationPolicies = new AzureNative.IoTOperations.Inputs.AuthorizationConfigArgs
///             {
///                 Cache = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 Rules = new[]
///                 {
///                     new AzureNative.IoTOperations.Inputs.AuthorizationRuleArgs
///                     {
///                         BrokerResources = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.BrokerResourceRuleArgs
///                             {
///                                 ClientIds = new[]
///                                 {
///                                     "nlc",
///                                 },
///                                 Method = AzureNative.IoTOperations.BrokerResourceDefinitionMethods.Connect,
///                                 Topics = new[]
///                                 {
///                                     "wvuca",
///                                 },
///                             },
///                         },
///                         Principals = new AzureNative.IoTOperations.Inputs.PrincipalDefinitionArgs
///                         {
///                             Attributes = new[]
///                             {
///
///                                 {
///                                     { "key5526", "nydhzdhbldygqcn" },
///                                 },
///                             },
///                             ClientIds = new[]
///                             {
///                                 "smopeaeddsygz",
///                             },
///                             Usernames = new[]
///                             {
///                                 "iozngyqndrteikszkbasinzdjtm",
///                             },
///                         },
///                         StateStoreResources = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.StateStoreResourceRuleArgs
///                             {
///                                 KeyType = AzureNative.IoTOperations.StateStoreResourceKeyTypes.Pattern,
///                                 Keys = new[]
///                                 {
///                                     "tkounsqtwvzyaklxjqoerpu",
///                                 },
///                                 Method = AzureNative.IoTOperations.StateStoreResourceDefinitionMethods.Read,
///                             },
///                         },
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
/// 		_, err := iotoperations.NewBrokerAuthorization(ctx, "brokerAuthorization", &iotoperations.BrokerAuthorizationArgs{
/// 			AuthorizationName: pulumi.String("resource-name123"),
/// 			BrokerName:        pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerAuthorizationPropertiesArgs{
/// 				AuthorizationPolicies: &iotoperations.AuthorizationConfigArgs{
/// 					Cache: pulumi.String(iotoperations.OperationalModeEnabled),
/// 					Rules: iotoperations.AuthorizationRuleArray{
/// 						&iotoperations.AuthorizationRuleArgs{
/// 							BrokerResources: iotoperations.BrokerResourceRuleArray{
/// 								&iotoperations.BrokerResourceRuleArgs{
/// 									ClientIds: pulumi.StringArray{
/// 										pulumi.String("nlc"),
/// 									},
/// 									Method: pulumi.String(iotoperations.BrokerResourceDefinitionMethodsConnect),
/// 									Topics: pulumi.StringArray{
/// 										pulumi.String("wvuca"),
/// 									},
/// 								},
/// 							},
/// 							Principals: &iotoperations.PrincipalDefinitionArgs{
/// 								Attributes: pulumi.StringMapArray{
/// 									pulumi.StringMap{
/// 										"key5526": pulumi.String("nydhzdhbldygqcn"),
/// 									},
/// 								},
/// 								ClientIds: pulumi.StringArray{
/// 									pulumi.String("smopeaeddsygz"),
/// 								},
/// 								Usernames: pulumi.StringArray{
/// 									pulumi.String("iozngyqndrteikszkbasinzdjtm"),
/// 								},
/// 							},
/// 							StateStoreResources: iotoperations.StateStoreResourceRuleArray{
/// 								&iotoperations.StateStoreResourceRuleArgs{
/// 									KeyType: pulumi.String(iotoperations.StateStoreResourceKeyTypesPattern),
/// 									Keys: pulumi.StringArray{
/// 										pulumi.String("tkounsqtwvzyaklxjqoerpu"),
/// 									},
/// 									Method: pulumi.String(iotoperations.StateStoreResourceDefinitionMethodsRead),
/// 								},
/// 							},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iotoperations_brokerauthorization" "brokerAuthorization" {
///   authorization_name = "resource-name123"
///   broker_name        = "resource-name123"
///   extended_location = {
///     name = "qmbrfwcpwwhggszhrdjv"
///     type = "CustomLocation"
///   }
///   instance_name = "resource-name123"
///   properties = {
///     authorization_policies = {
///       cache = "Enabled"
///       rules = [{
///         "brokerResources" = [{
///           "clientIds" = ["nlc"]
///           "method"    = "Connect"
///           "topics"    = ["wvuca"]
///         }]
///         "principals" = {
///           "attributes" = [{
///             "key5526" = "nydhzdhbldygqcn"
///           }]
///           "clientIds" = ["smopeaeddsygz"]
///           "usernames" = ["iozngyqndrteikszkbasinzdjtm"]
///         }
///         "stateStoreResources" = [{
///           "keyType" = "Pattern"
///           "keys"    = ["tkounsqtwvzyaklxjqoerpu"]
///           "method"  = "Read"
///         }]
///       }]
///     }
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
/// import com.pulumi.azurenative.iotoperations.BrokerAuthorization;
/// import com.pulumi.azurenative.iotoperations.BrokerAuthorizationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerAuthorizationPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AuthorizationConfigArgs;
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
///         var brokerAuthorization = new BrokerAuthorization("brokerAuthorization", BrokerAuthorizationArgs.builder()
///             .authorizationName("resource-name123")
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(BrokerAuthorizationPropertiesArgs.builder()
///                 .authorizationPolicies(AuthorizationConfigArgs.builder()
///                     .cache("Enabled")
///                     .rules(AuthorizationRuleArgs.builder()
///                         .brokerResources(BrokerResourceRuleArgs.builder()
///                             .clientIds("nlc")
///                             .method("Connect")
///                             .topics("wvuca")
///                             .build())
///                         .principals(PrincipalDefinitionArgs.builder()
///                             .attributes(Map.of("key5526", "nydhzdhbldygqcn"))
///                             .clientIds("smopeaeddsygz")
///                             .usernames("iozngyqndrteikszkbasinzdjtm")
///                             .build())
///                         .stateStoreResources(StateStoreResourceRuleArgs.builder()
///                             .keyType("Pattern")
///                             .keys("tkounsqtwvzyaklxjqoerpu")
///                             .method("Read")
///                             .build())
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
/// const brokerAuthorization = new azure_native.iotoperations.BrokerAuthorization("brokerAuthorization", {
///     authorizationName: "resource-name123",
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         authorizationPolicies: {
///             cache: azure_native.iotoperations.OperationalMode.Enabled,
///             rules: [{
///                 brokerResources: [{
///                     clientIds: ["nlc"],
///                     method: azure_native.iotoperations.BrokerResourceDefinitionMethods.Connect,
///                     topics: ["wvuca"],
///                 }],
///                 principals: {
///                     attributes: [{
///                         key5526: "nydhzdhbldygqcn",
///                     }],
///                     clientIds: ["smopeaeddsygz"],
///                     usernames: ["iozngyqndrteikszkbasinzdjtm"],
///                 },
///                 stateStoreResources: [{
///                     keyType: azure_native.iotoperations.StateStoreResourceKeyTypes.Pattern,
///                     keys: ["tkounsqtwvzyaklxjqoerpu"],
///                     method: azure_native.iotoperations.StateStoreResourceDefinitionMethods.Read,
///                 }],
///             }],
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
/// broker_authorization = azure_native.iotoperations.BrokerAuthorization("brokerAuthorization",
///     authorization_name="resource-name123",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "authorization_policies": {
///             "cache": azure_native.iotoperations.OperationalMode.ENABLED,
///             "rules": [{
///                 "broker_resources": [{
///                     "client_ids": ["nlc"],
///                     "method": azure_native.iotoperations.BrokerResourceDefinitionMethods.CONNECT,
///                     "topics": ["wvuca"],
///                 }],
///                 "principals": {
///                     "attributes": [{
///                         "key5526": "nydhzdhbldygqcn",
///                     }],
///                     "client_ids": ["smopeaeddsygz"],
///                     "usernames": ["iozngyqndrteikszkbasinzdjtm"],
///                 },
///                 "state_store_resources": [{
///                     "key_type": azure_native.iotoperations.StateStoreResourceKeyTypes.PATTERN,
///                     "keys": ["tkounsqtwvzyaklxjqoerpu"],
///                     "method": azure_native.iotoperations.StateStoreResourceDefinitionMethods.READ,
///                 }],
///             }],
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   brokerAuthorization:
///     type: azure-native:iotoperations:BrokerAuthorization
///     properties:
///       authorizationName: resource-name123
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         authorizationPolicies:
///           cache: Enabled
///           rules:
///             - brokerResources:
///                 - clientIds:
///                     - nlc
///                   method: Connect
///                   topics:
///                     - wvuca
///               principals:
///                 attributes:
///                   - key5526: nydhzdhbldygqcn
///                 clientIds:
///                   - smopeaeddsygz
///                 usernames:
///                   - iozngyqndrteikszkbasinzdjtm
///               stateStoreResources:
///                 - keyType: Pattern
///                   keys:
///                     - tkounsqtwvzyaklxjqoerpu
///                   method: Read
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### BrokerAuthorization_CreateOrUpdate_Complex
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var brokerAuthorization = new AzureNative.IoTOperations.BrokerAuthorization("brokerAuthorization", new()
///     {
///         AuthorizationName = "resource-name123",
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerAuthorizationPropertiesArgs
///         {
///             AuthorizationPolicies = new AzureNative.IoTOperations.Inputs.AuthorizationConfigArgs
///             {
///                 Cache = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 Rules = new[]
///                 {
///                     new AzureNative.IoTOperations.Inputs.AuthorizationRuleArgs
///                     {
///                         BrokerResources = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.BrokerResourceRuleArgs
///                             {
///                                 ClientIds = new[]
///                                 {
///                                     "{principal.attributes.building}*",
///                                 },
///                                 Method = AzureNative.IoTOperations.BrokerResourceDefinitionMethods.Connect,
///                             },
///                             new AzureNative.IoTOperations.Inputs.BrokerResourceRuleArgs
///                             {
///                                 Method = AzureNative.IoTOperations.BrokerResourceDefinitionMethods.Publish,
///                                 Topics = new[]
///                                 {
///                                     "sensors/{principal.attributes.building}/{principal.clientId}/telemetry/*",
///                                 },
///                             },
///                             new AzureNative.IoTOperations.Inputs.BrokerResourceRuleArgs
///                             {
///                                 Method = AzureNative.IoTOperations.BrokerResourceDefinitionMethods.Subscribe,
///                                 Topics = new[]
///                                 {
///                                     "commands/{principal.attributes.organization}",
///                                 },
///                             },
///                         },
///                         Principals = new AzureNative.IoTOperations.Inputs.PrincipalDefinitionArgs
///                         {
///                             Attributes = new[]
///                             {
///
///                                 {
///                                     { "building", "17" },
///                                     { "organization", "contoso" },
///                                 },
///                             },
///                             Usernames = new[]
///                             {
///                                 "temperature-sensor",
///                                 "humidity-sensor",
///                             },
///                         },
///                         StateStoreResources = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.StateStoreResourceRuleArgs
///                             {
///                                 KeyType = AzureNative.IoTOperations.StateStoreResourceKeyTypes.Pattern,
///                                 Keys = new[]
///                                 {
///                                     "myreadkey",
///                                     "myotherkey?",
///                                     "mynumerickeysuffix[0-9]",
///                                     "clients:{principal.clientId}:*",
///                                 },
///                                 Method = AzureNative.IoTOperations.StateStoreResourceDefinitionMethods.Read,
///                             },
///                             new AzureNative.IoTOperations.Inputs.StateStoreResourceRuleArgs
///                             {
///                                 KeyType = AzureNative.IoTOperations.StateStoreResourceKeyTypes.Binary,
///                                 Keys = new[]
///                                 {
///                                     "MTE2IDEwMSAxMTUgMTE2",
///                                 },
///                                 Method = AzureNative.IoTOperations.StateStoreResourceDefinitionMethods.ReadWrite,
///                             },
///                         },
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
/// 		_, err := iotoperations.NewBrokerAuthorization(ctx, "brokerAuthorization", &iotoperations.BrokerAuthorizationArgs{
/// 			AuthorizationName: pulumi.String("resource-name123"),
/// 			BrokerName:        pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerAuthorizationPropertiesArgs{
/// 				AuthorizationPolicies: &iotoperations.AuthorizationConfigArgs{
/// 					Cache: pulumi.String(iotoperations.OperationalModeEnabled),
/// 					Rules: iotoperations.AuthorizationRuleArray{
/// 						&iotoperations.AuthorizationRuleArgs{
/// 							BrokerResources: iotoperations.BrokerResourceRuleArray{
/// 								&iotoperations.BrokerResourceRuleArgs{
/// 									ClientIds: pulumi.StringArray{
/// 										pulumi.String("{principal.attributes.building}*"),
/// 									},
/// 									Method: pulumi.String(iotoperations.BrokerResourceDefinitionMethodsConnect),
/// 								},
/// 								&iotoperations.BrokerResourceRuleArgs{
/// 									Method: pulumi.String(iotoperations.BrokerResourceDefinitionMethodsPublish),
/// 									Topics: pulumi.StringArray{
/// 										pulumi.String("sensors/{principal.attributes.building}/{principal.clientId}/telemetry/*"),
/// 									},
/// 								},
/// 								&iotoperations.BrokerResourceRuleArgs{
/// 									Method: pulumi.String(iotoperations.BrokerResourceDefinitionMethodsSubscribe),
/// 									Topics: pulumi.StringArray{
/// 										pulumi.String("commands/{principal.attributes.organization}"),
/// 									},
/// 								},
/// 							},
/// 							Principals: &iotoperations.PrincipalDefinitionArgs{
/// 								Attributes: pulumi.StringMapArray{
/// 									pulumi.StringMap{
/// 										"building":     pulumi.String("17"),
/// 										"organization": pulumi.String("contoso"),
/// 									},
/// 								},
/// 								Usernames: pulumi.StringArray{
/// 									pulumi.String("temperature-sensor"),
/// 									pulumi.String("humidity-sensor"),
/// 								},
/// 							},
/// 							StateStoreResources: iotoperations.StateStoreResourceRuleArray{
/// 								&iotoperations.StateStoreResourceRuleArgs{
/// 									KeyType: pulumi.String(iotoperations.StateStoreResourceKeyTypesPattern),
/// 									Keys: pulumi.StringArray{
/// 										pulumi.String("myreadkey"),
/// 										pulumi.String("myotherkey?"),
/// 										pulumi.String("mynumerickeysuffix[0-9]"),
/// 										pulumi.String("clients:{principal.clientId}:*"),
/// 									},
/// 									Method: pulumi.String(iotoperations.StateStoreResourceDefinitionMethodsRead),
/// 								},
/// 								&iotoperations.StateStoreResourceRuleArgs{
/// 									KeyType: pulumi.String(iotoperations.StateStoreResourceKeyTypesBinary),
/// 									Keys: pulumi.StringArray{
/// 										pulumi.String("MTE2IDEwMSAxMTUgMTE2"),
/// 									},
/// 									Method: pulumi.String(iotoperations.StateStoreResourceDefinitionMethodsReadWrite),
/// 								},
/// 							},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iotoperations_brokerauthorization" "brokerAuthorization" {
///   authorization_name = "resource-name123"
///   broker_name        = "resource-name123"
///   extended_location = {
///     name = "qmbrfwcpwwhggszhrdjv"
///     type = "CustomLocation"
///   }
///   instance_name = "resource-name123"
///   properties = {
///     authorization_policies = {
///       cache = "Enabled"
///       rules = [{
///         "brokerResources" = [{
///           "clientIds" = ["{principal.attributes.building}*"]
///           "method"    = "Connect"
///           }, {
///           "method" = "Publish"
///           "topics" = ["sensors/{principal.attributes.building}/{principal.clientId}/telemetry/*"]
///           }, {
///           "method" = "Subscribe"
///           "topics" = ["commands/{principal.attributes.organization}"]
///         }]
///         "principals" = {
///           "attributes" = [{
///             "building"     = "17"
///             "organization" = "contoso"
///           }]
///           "usernames" = ["temperature-sensor", "humidity-sensor"]
///         }
///         "stateStoreResources" = [{
///           "keyType" = "Pattern"
///           "keys"    = ["myreadkey", "myotherkey?", "mynumerickeysuffix[0-9]", "clients:{principal.clientId}:*"]
///           "method"  = "Read"
///           }, {
///           "keyType" = "Binary"
///           "keys"    = ["MTE2IDEwMSAxMTUgMTE2"]
///           "method"  = "ReadWrite"
///         }]
///       }]
///     }
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
/// import com.pulumi.azurenative.iotoperations.BrokerAuthorization;
/// import com.pulumi.azurenative.iotoperations.BrokerAuthorizationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerAuthorizationPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AuthorizationConfigArgs;
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
///         var brokerAuthorization = new BrokerAuthorization("brokerAuthorization", BrokerAuthorizationArgs.builder()
///             .authorizationName("resource-name123")
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(BrokerAuthorizationPropertiesArgs.builder()
///                 .authorizationPolicies(AuthorizationConfigArgs.builder()
///                     .cache("Enabled")
///                     .rules(AuthorizationRuleArgs.builder()
///                         .brokerResources(
///                             BrokerResourceRuleArgs.builder()
///                                 .clientIds("{principal.attributes.building}*")
///                                 .method("Connect")
///                                 .build(),
///                             BrokerResourceRuleArgs.builder()
///                                 .method("Publish")
///                                 .topics("sensors/{principal.attributes.building}/{principal.clientId}/telemetry/*")
///                                 .build(),
///                             BrokerResourceRuleArgs.builder()
///                                 .method("Subscribe")
///                                 .topics("commands/{principal.attributes.organization}")
///                                 .build())
///                         .principals(PrincipalDefinitionArgs.builder()
///                             .attributes(Map.ofEntries(
///                                 Map.entry("building", "17"),
///                                 Map.entry("organization", "contoso")
///                             ))
///                             .usernames(
///                                 "temperature-sensor",
///                                 "humidity-sensor")
///                             .build())
///                         .stateStoreResources(
///                             StateStoreResourceRuleArgs.builder()
///                                 .keyType("Pattern")
///                                 .keys(
///                                     "myreadkey",
///                                     "myotherkey?",
///                                     "mynumerickeysuffix[0-9]",
///                                     "clients:{principal.clientId}:*")
///                                 .method("Read")
///                                 .build(),
///                             StateStoreResourceRuleArgs.builder()
///                                 .keyType("Binary")
///                                 .keys("MTE2IDEwMSAxMTUgMTE2")
///                                 .method("ReadWrite")
///                                 .build())
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
/// const brokerAuthorization = new azure_native.iotoperations.BrokerAuthorization("brokerAuthorization", {
///     authorizationName: "resource-name123",
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         authorizationPolicies: {
///             cache: azure_native.iotoperations.OperationalMode.Enabled,
///             rules: [{
///                 brokerResources: [
///                     {
///                         clientIds: ["{principal.attributes.building}*"],
///                         method: azure_native.iotoperations.BrokerResourceDefinitionMethods.Connect,
///                     },
///                     {
///                         method: azure_native.iotoperations.BrokerResourceDefinitionMethods.Publish,
///                         topics: ["sensors/{principal.attributes.building}/{principal.clientId}/telemetry/*"],
///                     },
///                     {
///                         method: azure_native.iotoperations.BrokerResourceDefinitionMethods.Subscribe,
///                         topics: ["commands/{principal.attributes.organization}"],
///                     },
///                 ],
///                 principals: {
///                     attributes: [{
///                         building: "17",
///                         organization: "contoso",
///                     }],
///                     usernames: [
///                         "temperature-sensor",
///                         "humidity-sensor",
///                     ],
///                 },
///                 stateStoreResources: [
///                     {
///                         keyType: azure_native.iotoperations.StateStoreResourceKeyTypes.Pattern,
///                         keys: [
///                             "myreadkey",
///                             "myotherkey?",
///                             "mynumerickeysuffix[0-9]",
///                             "clients:{principal.clientId}:*",
///                         ],
///                         method: azure_native.iotoperations.StateStoreResourceDefinitionMethods.Read,
///                     },
///                     {
///                         keyType: azure_native.iotoperations.StateStoreResourceKeyTypes.Binary,
///                         keys: ["MTE2IDEwMSAxMTUgMTE2"],
///                         method: azure_native.iotoperations.StateStoreResourceDefinitionMethods.ReadWrite,
///                     },
///                 ],
///             }],
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
/// broker_authorization = azure_native.iotoperations.BrokerAuthorization("brokerAuthorization",
///     authorization_name="resource-name123",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "authorization_policies": {
///             "cache": azure_native.iotoperations.OperationalMode.ENABLED,
///             "rules": [{
///                 "broker_resources": [
///                     {
///                         "client_ids": ["{principal.attributes.building}*"],
///                         "method": azure_native.iotoperations.BrokerResourceDefinitionMethods.CONNECT,
///                     },
///                     {
///                         "method": azure_native.iotoperations.BrokerResourceDefinitionMethods.PUBLISH,
///                         "topics": ["sensors/{principal.attributes.building}/{principal.clientId}/telemetry/*"],
///                     },
///                     {
///                         "method": azure_native.iotoperations.BrokerResourceDefinitionMethods.SUBSCRIBE,
///                         "topics": ["commands/{principal.attributes.organization}"],
///                     },
///                 ],
///                 "principals": {
///                     "attributes": [{
///                         "building": "17",
///                         "organization": "contoso",
///                     }],
///                     "usernames": [
///                         "temperature-sensor",
///                         "humidity-sensor",
///                     ],
///                 },
///                 "state_store_resources": [
///                     {
///                         "key_type": azure_native.iotoperations.StateStoreResourceKeyTypes.PATTERN,
///                         "keys": [
///                             "myreadkey",
///                             "myotherkey?",
///                             "mynumerickeysuffix[0-9]",
///                             "clients:{principal.clientId}:*",
///                         ],
///                         "method": azure_native.iotoperations.StateStoreResourceDefinitionMethods.READ,
///                     },
///                     {
///                         "key_type": azure_native.iotoperations.StateStoreResourceKeyTypes.BINARY,
///                         "keys": ["MTE2IDEwMSAxMTUgMTE2"],
///                         "method": azure_native.iotoperations.StateStoreResourceDefinitionMethods.READ_WRITE,
///                     },
///                 ],
///             }],
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   brokerAuthorization:
///     type: azure-native:iotoperations:BrokerAuthorization
///     properties:
///       authorizationName: resource-name123
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         authorizationPolicies:
///           cache: Enabled
///           rules:
///             - brokerResources:
///                 - clientIds:
///                     - '{principal.attributes.building}*'
///                   method: Connect
///                 - method: Publish
///                   topics:
///                     - sensors/{principal.attributes.building}/{principal.clientId}/telemetry/*
///                 - method: Subscribe
///                   topics:
///                     - commands/{principal.attributes.organization}
///               principals:
///                 attributes:
///                   - building: '17'
///                     organization: contoso
///                 usernames:
///                   - temperature-sensor
///                   - humidity-sensor
///               stateStoreResources:
///                 - keyType: Pattern
///                   keys:
///                     - myreadkey
///                     - myotherkey?
///                     - mynumerickeysuffix[0-9]
///                     - clients:{principal.clientId}:*
///                   method: Read
///                 - keyType: Binary
///                   keys:
///                     - MTE2IDEwMSAxMTUgMTE2
///                   method: ReadWrite
///       resourceGroupName: rgiotoperations
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### BrokerAuthorization_CreateOrUpdate_Simple
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var brokerAuthorization = new AzureNative.IoTOperations.BrokerAuthorization("brokerAuthorization", new()
///     {
///         AuthorizationName = "resource-name123",
///         BrokerName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "qmbrfwcpwwhggszhrdjv",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         Properties = new AzureNative.IoTOperations.Inputs.BrokerAuthorizationPropertiesArgs
///         {
///             AuthorizationPolicies = new AzureNative.IoTOperations.Inputs.AuthorizationConfigArgs
///             {
///                 Cache = AzureNative.IoTOperations.OperationalMode.Enabled,
///                 Rules = new[]
///                 {
///                     new AzureNative.IoTOperations.Inputs.AuthorizationRuleArgs
///                     {
///                         BrokerResources = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.BrokerResourceRuleArgs
///                             {
///                                 Method = AzureNative.IoTOperations.BrokerResourceDefinitionMethods.Connect,
///                             },
///                             new AzureNative.IoTOperations.Inputs.BrokerResourceRuleArgs
///                             {
///                                 Method = AzureNative.IoTOperations.BrokerResourceDefinitionMethods.Subscribe,
///                                 Topics = new[]
///                                 {
///                                     "topic",
///                                     "topic/with/wildcard/#",
///                                 },
///                             },
///                         },
///                         Principals = new AzureNative.IoTOperations.Inputs.PrincipalDefinitionArgs
///                         {
///                             Attributes = new[]
///                             {
///
///                                 {
///                                     { "floor", "floor1" },
///                                     { "site", "site1" },
///                                 },
///                             },
///                             ClientIds = new[]
///                             {
///                                 "my-client-id",
///                             },
///                         },
///                         StateStoreResources = new[]
///                         {
///                             new AzureNative.IoTOperations.Inputs.StateStoreResourceRuleArgs
///                             {
///                                 KeyType = AzureNative.IoTOperations.StateStoreResourceKeyTypes.Pattern,
///                                 Keys = new[]
///                                 {
///                                     "*",
///                                 },
///                                 Method = AzureNative.IoTOperations.StateStoreResourceDefinitionMethods.ReadWrite,
///                             },
///                         },
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
/// 		_, err := iotoperations.NewBrokerAuthorization(ctx, "brokerAuthorization", &iotoperations.BrokerAuthorizationArgs{
/// 			AuthorizationName: pulumi.String("resource-name123"),
/// 			BrokerName:        pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("qmbrfwcpwwhggszhrdjv"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-name123"),
/// 			Properties: &iotoperations.BrokerAuthorizationPropertiesArgs{
/// 				AuthorizationPolicies: &iotoperations.AuthorizationConfigArgs{
/// 					Cache: pulumi.String(iotoperations.OperationalModeEnabled),
/// 					Rules: iotoperations.AuthorizationRuleArray{
/// 						&iotoperations.AuthorizationRuleArgs{
/// 							BrokerResources: iotoperations.BrokerResourceRuleArray{
/// 								&iotoperations.BrokerResourceRuleArgs{
/// 									Method: pulumi.String(iotoperations.BrokerResourceDefinitionMethodsConnect),
/// 								},
/// 								&iotoperations.BrokerResourceRuleArgs{
/// 									Method: pulumi.String(iotoperations.BrokerResourceDefinitionMethodsSubscribe),
/// 									Topics: pulumi.StringArray{
/// 										pulumi.String("topic"),
/// 										pulumi.String("topic/with/wildcard/#"),
/// 									},
/// 								},
/// 							},
/// 							Principals: &iotoperations.PrincipalDefinitionArgs{
/// 								Attributes: pulumi.StringMapArray{
/// 									pulumi.StringMap{
/// 										"floor": pulumi.String("floor1"),
/// 										"site":  pulumi.String("site1"),
/// 									},
/// 								},
/// 								ClientIds: pulumi.StringArray{
/// 									pulumi.String("my-client-id"),
/// 								},
/// 							},
/// 							StateStoreResources: iotoperations.StateStoreResourceRuleArray{
/// 								&iotoperations.StateStoreResourceRuleArgs{
/// 									KeyType: pulumi.String(iotoperations.StateStoreResourceKeyTypesPattern),
/// 									Keys: pulumi.StringArray{
/// 										pulumi.String("*"),
/// 									},
/// 									Method: pulumi.String(iotoperations.StateStoreResourceDefinitionMethodsReadWrite),
/// 								},
/// 							},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iotoperations_brokerauthorization" "brokerAuthorization" {
///   authorization_name = "resource-name123"
///   broker_name        = "resource-name123"
///   extended_location = {
///     name = "qmbrfwcpwwhggszhrdjv"
///     type = "CustomLocation"
///   }
///   instance_name = "resource-name123"
///   properties = {
///     authorization_policies = {
///       cache = "Enabled"
///       rules = [{
///         "brokerResources" = [{
///           "method" = "Connect"
///           }, {
///           "method" = "Subscribe"
///           "topics" = ["topic", "topic/with/wildcard/#"]
///         }]
///         "principals" = {
///           "attributes" = [{
///             "floor" = "floor1"
///             "site"  = "site1"
///           }]
///           "clientIds" = ["my-client-id"]
///         }
///         "stateStoreResources" = [{
///           "keyType" = "Pattern"
///           "keys"    = ["*"]
///           "method"  = "ReadWrite"
///         }]
///       }]
///     }
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
/// import com.pulumi.azurenative.iotoperations.BrokerAuthorization;
/// import com.pulumi.azurenative.iotoperations.BrokerAuthorizationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.BrokerAuthorizationPropertiesArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.AuthorizationConfigArgs;
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
///         var brokerAuthorization = new BrokerAuthorization("brokerAuthorization", BrokerAuthorizationArgs.builder()
///             .authorizationName("resource-name123")
///             .brokerName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("qmbrfwcpwwhggszhrdjv")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .properties(BrokerAuthorizationPropertiesArgs.builder()
///                 .authorizationPolicies(AuthorizationConfigArgs.builder()
///                     .cache("Enabled")
///                     .rules(AuthorizationRuleArgs.builder()
///                         .brokerResources(
///                             BrokerResourceRuleArgs.builder()
///                                 .method("Connect")
///                                 .build(),
///                             BrokerResourceRuleArgs.builder()
///                                 .method("Subscribe")
///                                 .topics(
///                                     "topic",
///                                     "topic/with/wildcard/#")
///                                 .build())
///                         .principals(PrincipalDefinitionArgs.builder()
///                             .attributes(Map.ofEntries(
///                                 Map.entry("floor", "floor1"),
///                                 Map.entry("site", "site1")
///                             ))
///                             .clientIds("my-client-id")
///                             .build())
///                         .stateStoreResources(StateStoreResourceRuleArgs.builder()
///                             .keyType("Pattern")
///                             .keys("*")
///                             .method("ReadWrite")
///                             .build())
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
/// const brokerAuthorization = new azure_native.iotoperations.BrokerAuthorization("brokerAuthorization", {
///     authorizationName: "resource-name123",
///     brokerName: "resource-name123",
///     extendedLocation: {
///         name: "qmbrfwcpwwhggszhrdjv",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     properties: {
///         authorizationPolicies: {
///             cache: azure_native.iotoperations.OperationalMode.Enabled,
///             rules: [{
///                 brokerResources: [
///                     {
///                         method: azure_native.iotoperations.BrokerResourceDefinitionMethods.Connect,
///                     },
///                     {
///                         method: azure_native.iotoperations.BrokerResourceDefinitionMethods.Subscribe,
///                         topics: [
///                             "topic",
///                             "topic/with/wildcard/#",
///                         ],
///                     },
///                 ],
///                 principals: {
///                     attributes: [{
///                         floor: "floor1",
///                         site: "site1",
///                     }],
///                     clientIds: ["my-client-id"],
///                 },
///                 stateStoreResources: [{
///                     keyType: azure_native.iotoperations.StateStoreResourceKeyTypes.Pattern,
///                     keys: ["*"],
///                     method: azure_native.iotoperations.StateStoreResourceDefinitionMethods.ReadWrite,
///                 }],
///             }],
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
/// broker_authorization = azure_native.iotoperations.BrokerAuthorization("brokerAuthorization",
///     authorization_name="resource-name123",
///     broker_name="resource-name123",
///     extended_location={
///         "name": "qmbrfwcpwwhggszhrdjv",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     properties={
///         "authorization_policies": {
///             "cache": azure_native.iotoperations.OperationalMode.ENABLED,
///             "rules": [{
///                 "broker_resources": [
///                     {
///                         "method": azure_native.iotoperations.BrokerResourceDefinitionMethods.CONNECT,
///                     },
///                     {
///                         "method": azure_native.iotoperations.BrokerResourceDefinitionMethods.SUBSCRIBE,
///                         "topics": [
///                             "topic",
///                             "topic/with/wildcard/#",
///                         ],
///                     },
///                 ],
///                 "principals": {
///                     "attributes": [{
///                         "floor": "floor1",
///                         "site": "site1",
///                     }],
///                     "client_ids": ["my-client-id"],
///                 },
///                 "state_store_resources": [{
///                     "key_type": azure_native.iotoperations.StateStoreResourceKeyTypes.PATTERN,
///                     "keys": ["*"],
///                     "method": azure_native.iotoperations.StateStoreResourceDefinitionMethods.READ_WRITE,
///                 }],
///             }],
///         },
///     },
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   brokerAuthorization:
///     type: azure-native:iotoperations:BrokerAuthorization
///     properties:
///       authorizationName: resource-name123
///       brokerName: resource-name123
///       extendedLocation:
///         name: qmbrfwcpwwhggszhrdjv
///         type: CustomLocation
///       instanceName: resource-name123
///       properties:
///         authorizationPolicies:
///           cache: Enabled
///           rules:
///             - brokerResources:
///                 - method: Connect
///                 - method: Subscribe
///                   topics:
///                     - topic
///                     - topic/with/wildcard/#
///               principals:
///                 attributes:
///                   - floor: floor1
///                     site: site1
///                 clientIds:
///                   - my-client-id
///               stateStoreResources:
///                 - keyType: Pattern
///                   keys:
///                     - '*'
///                   method: ReadWrite
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
/// $ pulumi import azure-native:iotoperations:BrokerAuthorization anqrqsvrjmlvzkrbuav /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/brokers/{brokerName}/authorizations/{authorizationName}
/// ```
class BrokerAuthorization extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<BrokerAuthorizationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BrokerAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrokerAuthorization]. {@macro pulumi_iotoperations_broker_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrokerAuthorization(
    String name, {
    BrokerAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperations:BrokerAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<BrokerAuthorizationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BrokerAuthorizationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
