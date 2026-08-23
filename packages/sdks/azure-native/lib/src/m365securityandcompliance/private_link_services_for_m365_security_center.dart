import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_services_for_m365_security_center_args.dart';
import 'services_properties_response.dart';
import 'services_resource_response_identity.dart';
import 'system_data_response.dart';

/// The description of the service.
///
/// Uses Azure REST API version 2021-03-25-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a service with all parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkServicesForM365SecurityCenter = new AzureNative.M365SecurityAndCompliance.PrivateLinkServicesForM365SecurityCenter("privateLinkServicesForM365SecurityCenter", new()
///     {
///         Identity = new AzureNative.M365SecurityAndCompliance.Inputs.ServicesResourceIdentityArgs
///         {
///             Type = AzureNative.M365SecurityAndCompliance.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Kind = AzureNative.M365SecurityAndCompliance.Kind.Fhir_R4,
///         Location = "westus2",
///         Properties = new AzureNative.M365SecurityAndCompliance.Inputs.ServicesPropertiesArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.M365SecurityAndCompliance.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///                 },
///                 new AzureNative.M365SecurityAndCompliance.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "5b307da8-43d4-492b-8b66-b0294ade872f",
///                 },
///             },
///             AuthenticationConfiguration = new AzureNative.M365SecurityAndCompliance.Inputs.ServiceAuthenticationConfigurationInfoArgs
///             {
///                 Audience = "https://azurehealthcareapis.com",
///                 Authority = "https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc",
///                 SmartProxyEnabled = true,
///             },
///             CorsConfiguration = new AzureNative.M365SecurityAndCompliance.Inputs.ServiceCorsConfigurationInfoArgs
///             {
///                 AllowCredentials = false,
///                 Headers = new[]
///                 {
///                     "*",
///                 },
///                 MaxAge = 1440,
///                 Methods = new[]
///                 {
///                     "DELETE",
///                     "GET",
///                     "OPTIONS",
///                     "PATCH",
///                     "POST",
///                     "PUT",
///                 },
///                 Origins = new[]
///                 {
///                     "*",
///                 },
///             },
///             CosmosDbConfiguration = new AzureNative.M365SecurityAndCompliance.Inputs.ServiceCosmosDbConfigurationInfoArgs
///             {
///                 KeyVaultKeyUri = "https://my-vault.vault.azure.net/keys/my-key",
///                 OfferThroughput = 1000,
///             },
///             ExportConfiguration = new AzureNative.M365SecurityAndCompliance.Inputs.ServiceExportConfigurationInfoArgs
///             {
///                 StorageAccountName = "existingStorageAccount",
///             },
///             PrivateEndpointConnections = new() { },
///             PublicNetworkAccess = AzureNative.M365SecurityAndCompliance.PublicNetworkAccess.Disabled,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "service1",
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
/// 	m365securityandcompliance "github.com/pulumi/pulumi-azure-native-sdk/m365securityandcompliance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := m365securityandcompliance.NewPrivateLinkServicesForM365SecurityCenter(ctx, "privateLinkServicesForM365SecurityCenter", &m365securityandcompliance.PrivateLinkServicesForM365SecurityCenterArgs{
/// 			Identity: &m365securityandcompliance.ServicesResourceIdentityArgs{
/// 				Type: pulumi.String(m365securityandcompliance.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Kind:     m365securityandcompliance.Kind_Fhir_R4,
/// 			Location: pulumi.String("westus2"),
/// 			Properties: &m365securityandcompliance.ServicesPropertiesArgs{
/// 				AccessPolicies: m365securityandcompliance.ServiceAccessPolicyEntryArray{
/// 					&m365securityandcompliance.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("c487e7d1-3210-41a3-8ccc-e9372b78da47"),
/// 					},
/// 					&m365securityandcompliance.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("5b307da8-43d4-492b-8b66-b0294ade872f"),
/// 					},
/// 				},
/// 				AuthenticationConfiguration: &m365securityandcompliance.ServiceAuthenticationConfigurationInfoArgs{
/// 					Audience:          pulumi.String("https://azurehealthcareapis.com"),
/// 					Authority:         pulumi.String("https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc"),
/// 					SmartProxyEnabled: pulumi.Bool(true),
/// 				},
/// 				CorsConfiguration: &m365securityandcompliance.ServiceCorsConfigurationInfoArgs{
/// 					AllowCredentials: pulumi.Bool(false),
/// 					Headers: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					MaxAge: pulumi.Float64(1440),
/// 					Methods: pulumi.StringArray{
/// 						pulumi.String("DELETE"),
/// 						pulumi.String("GET"),
/// 						pulumi.String("OPTIONS"),
/// 						pulumi.String("PATCH"),
/// 						pulumi.String("POST"),
/// 						pulumi.String("PUT"),
/// 					},
/// 					Origins: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 				CosmosDbConfiguration: &m365securityandcompliance.ServiceCosmosDbConfigurationInfoArgs{
/// 					KeyVaultKeyUri:  pulumi.String("https://my-vault.vault.azure.net/keys/my-key"),
/// 					OfferThroughput: pulumi.Float64(1000),
/// 				},
/// 				ExportConfiguration: &m365securityandcompliance.ServiceExportConfigurationInfoArgs{
/// 					StorageAccountName: pulumi.String("existingStorageAccount"),
/// 				},
/// 				PrivateEndpointConnections: m365securityandcompliance.PrivateEndpointConnectionArray{},
/// 				PublicNetworkAccess:        pulumi.String(m365securityandcompliance.PublicNetworkAccessDisabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("service1"),
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
/// resource "azure-native_m365securityandcompliance_privatelinkservicesform365securitycenter" "privateLinkServicesForM365SecurityCenter" {
///   identity = {
///     type = "SystemAssigned"
///   }
///   kind     = "fhir-R4"
///   location = "westus2"
///   properties = {
///     access_policies = [{
///       "objectId" = "c487e7d1-3210-41a3-8ccc-e9372b78da47"
///       }, {
///       "objectId" = "5b307da8-43d4-492b-8b66-b0294ade872f"
///     }]
///     authentication_configuration = {
///       audience            = "https://azurehealthcareapis.com"
///       authority           = "https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc"
///       smart_proxy_enabled = true
///     }
///     cors_configuration = {
///       allow_credentials = false
///       headers           = ["*"]
///       max_age           = 1440
///       methods           = ["DELETE", "GET", "OPTIONS", "PATCH", "POST", "PUT"]
///       origins           = ["*"]
///     }
///     cosmos_db_configuration = {
///       key_vault_key_uri = "https://my-vault.vault.azure.net/keys/my-key"
///       offer_throughput  = 1000
///     }
///     export_configuration = {
///       storage_account_name = "existingStorageAccount"
///     }
///     private_endpoint_connections = []
///     public_network_access        = "Disabled"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "service1"
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
/// import com.pulumi.azurenative.m365securityandcompliance.PrivateLinkServicesForM365SecurityCenter;
/// import com.pulumi.azurenative.m365securityandcompliance.PrivateLinkServicesForM365SecurityCenterArgs;
/// import com.pulumi.azurenative.m365securityandcompliance.inputs.ServicesResourceIdentityArgs;
/// import com.pulumi.azurenative.m365securityandcompliance.inputs.ServicesPropertiesArgs;
/// import com.pulumi.azurenative.m365securityandcompliance.inputs.ServiceAuthenticationConfigurationInfoArgs;
/// import com.pulumi.azurenative.m365securityandcompliance.inputs.ServiceCorsConfigurationInfoArgs;
/// import com.pulumi.azurenative.m365securityandcompliance.inputs.ServiceCosmosDbConfigurationInfoArgs;
/// import com.pulumi.azurenative.m365securityandcompliance.inputs.ServiceExportConfigurationInfoArgs;
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
///         var privateLinkServicesForM365SecurityCenter = new PrivateLinkServicesForM365SecurityCenter("privateLinkServicesForM365SecurityCenter", PrivateLinkServicesForM365SecurityCenterArgs.builder()
///             .identity(ServicesResourceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("fhir-R4")
///             .location("westus2")
///             .properties(ServicesPropertiesArgs.builder()
///                 .accessPolicies(
///                     ServiceAccessPolicyEntryArgs.builder()
///                         .objectId("c487e7d1-3210-41a3-8ccc-e9372b78da47")
///                         .build(),
///                     ServiceAccessPolicyEntryArgs.builder()
///                         .objectId("5b307da8-43d4-492b-8b66-b0294ade872f")
///                         .build())
///                 .authenticationConfiguration(ServiceAuthenticationConfigurationInfoArgs.builder()
///                     .audience("https://azurehealthcareapis.com")
///                     .authority("https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc")
///                     .smartProxyEnabled(true)
///                     .build())
///                 .corsConfiguration(ServiceCorsConfigurationInfoArgs.builder()
///                     .allowCredentials(false)
///                     .headers("*")
///                     .maxAge(1440.0)
///                     .methods(
///                         "DELETE",
///                         "GET",
///                         "OPTIONS",
///                         "PATCH",
///                         "POST",
///                         "PUT")
///                     .origins("*")
///                     .build())
///                 .cosmosDbConfiguration(ServiceCosmosDbConfigurationInfoArgs.builder()
///                     .keyVaultKeyUri("https://my-vault.vault.azure.net/keys/my-key")
///                     .offerThroughput(1000.0)
///                     .build())
///                 .exportConfiguration(ServiceExportConfigurationInfoArgs.builder()
///                     .storageAccountName("existingStorageAccount")
///                     .build())
///                 .privateEndpointConnections()
///                 .publicNetworkAccess("Disabled")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("service1")
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
/// const privateLinkServicesForM365SecurityCenter = new azure_native.m365securityandcompliance.PrivateLinkServicesForM365SecurityCenter("privateLinkServicesForM365SecurityCenter", {
///     identity: {
///         type: azure_native.m365securityandcompliance.ManagedServiceIdentityType.SystemAssigned,
///     },
///     kind: azure_native.m365securityandcompliance.Kind.Fhir_R4,
///     location: "westus2",
///     properties: {
///         accessPolicies: [
///             {
///                 objectId: "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///             },
///             {
///                 objectId: "5b307da8-43d4-492b-8b66-b0294ade872f",
///             },
///         ],
///         authenticationConfiguration: {
///             audience: "https://azurehealthcareapis.com",
///             authority: "https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc",
///             smartProxyEnabled: true,
///         },
///         corsConfiguration: {
///             allowCredentials: false,
///             headers: ["*"],
///             maxAge: 1440,
///             methods: [
///                 "DELETE",
///                 "GET",
///                 "OPTIONS",
///                 "PATCH",
///                 "POST",
///                 "PUT",
///             ],
///             origins: ["*"],
///         },
///         cosmosDbConfiguration: {
///             keyVaultKeyUri: "https://my-vault.vault.azure.net/keys/my-key",
///             offerThroughput: 1000,
///         },
///         exportConfiguration: {
///             storageAccountName: "existingStorageAccount",
///         },
///         privateEndpointConnections: [],
///         publicNetworkAccess: azure_native.m365securityandcompliance.PublicNetworkAccess.Disabled,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "service1",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_services_for_m365_security_center = azure_native.m365securityandcompliance.PrivateLinkServicesForM365SecurityCenter("privateLinkServicesForM365SecurityCenter",
///     identity={
///         "type": azure_native.m365securityandcompliance.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind=azure_native.m365securityandcompliance.Kind.FHIR_R4,
///     location="westus2",
///     properties={
///         "access_policies": [
///             {
///                 "object_id": "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///             },
///             {
///                 "object_id": "5b307da8-43d4-492b-8b66-b0294ade872f",
///             },
///         ],
///         "authentication_configuration": {
///             "audience": "https://azurehealthcareapis.com",
///             "authority": "https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc",
///             "smart_proxy_enabled": True,
///         },
///         "cors_configuration": {
///             "allow_credentials": False,
///             "headers": ["*"],
///             "max_age": float(1440),
///             "methods": [
///                 "DELETE",
///                 "GET",
///                 "OPTIONS",
///                 "PATCH",
///                 "POST",
///                 "PUT",
///             ],
///             "origins": ["*"],
///         },
///         "cosmos_db_configuration": {
///             "key_vault_key_uri": "https://my-vault.vault.azure.net/keys/my-key",
///             "offer_throughput": float(1000),
///         },
///         "export_configuration": {
///             "storage_account_name": "existingStorageAccount",
///         },
///         "private_endpoint_connections": [],
///         "public_network_access": azure_native.m365securityandcompliance.PublicNetworkAccess.DISABLED,
///     },
///     resource_group_name="rg1",
///     resource_name_="service1",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkServicesForM365SecurityCenter:
///     type: azure-native:m365securityandcompliance:PrivateLinkServicesForM365SecurityCenter
///     properties:
///       identity:
///         type: SystemAssigned
///       kind: fhir-R4
///       location: westus2
///       properties:
///         accessPolicies:
///           - objectId: c487e7d1-3210-41a3-8ccc-e9372b78da47
///           - objectId: 5b307da8-43d4-492b-8b66-b0294ade872f
///         authenticationConfiguration:
///           audience: https://azurehealthcareapis.com
///           authority: https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc
///           smartProxyEnabled: true
///         corsConfiguration:
///           allowCredentials: false
///           headers:
///             - '*'
///           maxAge: 1440
///           methods:
///             - DELETE
///             - GET
///             - OPTIONS
///             - PATCH
///             - POST
///             - PUT
///           origins:
///             - '*'
///         cosmosDbConfiguration:
///           keyVaultKeyUri: https://my-vault.vault.azure.net/keys/my-key
///           offerThroughput: 1000
///         exportConfiguration:
///           storageAccountName: existingStorageAccount
///         privateEndpointConnections: []
///         publicNetworkAccess: Disabled
///       resourceGroupName: rg1
///       resourceName: service1
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update a service with minimum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkServicesForM365SecurityCenter = new AzureNative.M365SecurityAndCompliance.PrivateLinkServicesForM365SecurityCenter("privateLinkServicesForM365SecurityCenter", new()
///     {
///         Kind = AzureNative.M365SecurityAndCompliance.Kind.Fhir_R4,
///         Location = "westus2",
///         Properties = new AzureNative.M365SecurityAndCompliance.Inputs.ServicesPropertiesArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.M365SecurityAndCompliance.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "service2",
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
/// 	m365securityandcompliance "github.com/pulumi/pulumi-azure-native-sdk/m365securityandcompliance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := m365securityandcompliance.NewPrivateLinkServicesForM365SecurityCenter(ctx, "privateLinkServicesForM365SecurityCenter", &m365securityandcompliance.PrivateLinkServicesForM365SecurityCenterArgs{
/// 			Kind:     m365securityandcompliance.Kind_Fhir_R4,
/// 			Location: pulumi.String("westus2"),
/// 			Properties: &m365securityandcompliance.ServicesPropertiesArgs{
/// 				AccessPolicies: m365securityandcompliance.ServiceAccessPolicyEntryArray{
/// 					&m365securityandcompliance.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("c487e7d1-3210-41a3-8ccc-e9372b78da47"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("service2"),
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
/// resource "azure-native_m365securityandcompliance_privatelinkservicesform365securitycenter" "privateLinkServicesForM365SecurityCenter" {
///   kind     = "fhir-R4"
///   location = "westus2"
///   properties = {
///     access_policies = [{
///       "objectId" = "c487e7d1-3210-41a3-8ccc-e9372b78da47"
///     }]
///   }
///   resource_group_name = "rg1"
///   resource_name       = "service2"
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
/// import com.pulumi.azurenative.m365securityandcompliance.PrivateLinkServicesForM365SecurityCenter;
/// import com.pulumi.azurenative.m365securityandcompliance.PrivateLinkServicesForM365SecurityCenterArgs;
/// import com.pulumi.azurenative.m365securityandcompliance.inputs.ServicesPropertiesArgs;
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
///         var privateLinkServicesForM365SecurityCenter = new PrivateLinkServicesForM365SecurityCenter("privateLinkServicesForM365SecurityCenter", PrivateLinkServicesForM365SecurityCenterArgs.builder()
///             .kind("fhir-R4")
///             .location("westus2")
///             .properties(ServicesPropertiesArgs.builder()
///                 .accessPolicies(ServiceAccessPolicyEntryArgs.builder()
///                     .objectId("c487e7d1-3210-41a3-8ccc-e9372b78da47")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("service2")
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
/// const privateLinkServicesForM365SecurityCenter = new azure_native.m365securityandcompliance.PrivateLinkServicesForM365SecurityCenter("privateLinkServicesForM365SecurityCenter", {
///     kind: azure_native.m365securityandcompliance.Kind.Fhir_R4,
///     location: "westus2",
///     properties: {
///         accessPolicies: [{
///             objectId: "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///         }],
///     },
///     resourceGroupName: "rg1",
///     resourceName: "service2",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_services_for_m365_security_center = azure_native.m365securityandcompliance.PrivateLinkServicesForM365SecurityCenter("privateLinkServicesForM365SecurityCenter",
///     kind=azure_native.m365securityandcompliance.Kind.FHIR_R4,
///     location="westus2",
///     properties={
///         "access_policies": [{
///             "object_id": "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///         }],
///     },
///     resource_group_name="rg1",
///     resource_name_="service2",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkServicesForM365SecurityCenter:
///     type: azure-native:m365securityandcompliance:PrivateLinkServicesForM365SecurityCenter
///     properties:
///       kind: fhir-R4
///       location: westus2
///       properties:
///         accessPolicies:
///           - objectId: c487e7d1-3210-41a3-8ccc-e9372b78da47
///       resourceGroupName: rg1
///       resourceName: service2
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
/// $ pulumi import azure-native:m365securityandcompliance:PrivateLinkServicesForM365SecurityCenter service2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.M365SecurityAndCompliance/privateLinkServicesForM365SecurityCenter/{resourceName}
/// ```
class PrivateLinkServicesForM365SecurityCenter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  late final pulumi.Output<String?> etag;
  /// Setting indicating whether the service has a managed identity associated with it.
  late final pulumi.Output<ServicesResourceResponseIdentity?> identity;
  /// The kind of the service.
  late final pulumi.Output<String> kind;
  /// The resource location.
  late final pulumi.Output<String> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The common properties of a service.
  late final pulumi.Output<ServicesPropertiesResponse> properties;
  /// Required property for system data
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkServicesForM365SecurityCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkServicesForM365SecurityCenter]. {@macro pulumi_m365securityandcompliance_private_link_services_for_m365_security_center_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkServicesForM365SecurityCenter(
    String name, {
    PrivateLinkServicesForM365SecurityCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:m365securityandcompliance:PrivateLinkServicesForM365SecurityCenter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    identity = registerOutput<ServicesResourceResponseIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicesResourceResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ServicesPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicesPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
