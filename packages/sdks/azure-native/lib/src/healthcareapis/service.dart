import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'services_properties_response.dart';
import 'services_resource_response_identity.dart';
import 'system_data_response.dart';

/// The description of the service.
///
/// Uses Azure REST API version 2024-03-31. In version 2.x of the Azure Native provider, it used API version 2023-02-28.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var service = new AzureNative.HealthcareApis.Service("service", new()
///     {
///         Identity = new AzureNative.HealthcareApis.Inputs.ServicesResourceIdentityArgs
///         {
///             Type = AzureNative.HealthcareApis.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Kind = AzureNative.HealthcareApis.Kind.Fhir_R4,
///         Location = "westus2",
///         Properties = new AzureNative.HealthcareApis.Inputs.ServicesPropertiesArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.HealthcareApis.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///                 },
///                 new AzureNative.HealthcareApis.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "5b307da8-43d4-492b-8b66-b0294ade872f",
///                 },
///             },
///             AuthenticationConfiguration = new AzureNative.HealthcareApis.Inputs.ServiceAuthenticationConfigurationInfoArgs
///             {
///                 Audience = "https://azurehealthcareapis.com",
///                 Authority = "https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc",
///                 SmartProxyEnabled = true,
///             },
///             CorsConfiguration = new AzureNative.HealthcareApis.Inputs.ServiceCorsConfigurationInfoArgs
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
///             CosmosDbConfiguration = new AzureNative.HealthcareApis.Inputs.ServiceCosmosDbConfigurationInfoArgs
///             {
///                 KeyVaultKeyUri = "https://my-vault.vault.azure.net/keys/my-key",
///                 OfferThroughput = 1000,
///             },
///             ExportConfiguration = new AzureNative.HealthcareApis.Inputs.ServiceExportConfigurationInfoArgs
///             {
///                 StorageAccountName = "existingStorageAccount",
///             },
///             PrivateEndpointConnections = new() { },
///             PublicNetworkAccess = AzureNative.HealthcareApis.PublicNetworkAccess.Disabled,
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
/// 	healthcareapis "github.com/pulumi/pulumi-azure-native-sdk/healthcareapis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcareapis.NewService(ctx, "service", &healthcareapis.ServiceArgs{
/// 			Identity: &healthcareapis.ServicesResourceIdentityArgs{
/// 				Type: pulumi.String(healthcareapis.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Kind:     healthcareapis.Kind_Fhir_R4,
/// 			Location: pulumi.String("westus2"),
/// 			Properties: &healthcareapis.ServicesPropertiesArgs{
/// 				AccessPolicies: healthcareapis.ServiceAccessPolicyEntryArray{
/// 					&healthcareapis.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("c487e7d1-3210-41a3-8ccc-e9372b78da47"),
/// 					},
/// 					&healthcareapis.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("5b307da8-43d4-492b-8b66-b0294ade872f"),
/// 					},
/// 				},
/// 				AuthenticationConfiguration: &healthcareapis.ServiceAuthenticationConfigurationInfoArgs{
/// 					Audience:          pulumi.String("https://azurehealthcareapis.com"),
/// 					Authority:         pulumi.String("https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc"),
/// 					SmartProxyEnabled: pulumi.Bool(true),
/// 				},
/// 				CorsConfiguration: &healthcareapis.ServiceCorsConfigurationInfoArgs{
/// 					AllowCredentials: pulumi.Bool(false),
/// 					Headers: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					MaxAge: pulumi.Int(1440),
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
/// 				CosmosDbConfiguration: &healthcareapis.ServiceCosmosDbConfigurationInfoArgs{
/// 					KeyVaultKeyUri:  pulumi.String("https://my-vault.vault.azure.net/keys/my-key"),
/// 					OfferThroughput: pulumi.Int(1000),
/// 				},
/// 				ExportConfiguration: &healthcareapis.ServiceExportConfigurationInfoArgs{
/// 					StorageAccountName: pulumi.String("existingStorageAccount"),
/// 				},
/// 				PrivateEndpointConnections: healthcareapis.PrivateEndpointConnectionTypeArray{},
/// 				PublicNetworkAccess:        pulumi.String(healthcareapis.PublicNetworkAccessDisabled),
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
/// resource "azure-native_healthcareapis_service" "service" {
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
/// import com.pulumi.azurenative.healthcareapis.Service;
/// import com.pulumi.azurenative.healthcareapis.ServiceArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServicesResourceIdentityArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServicesPropertiesArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServiceAuthenticationConfigurationInfoArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServiceCorsConfigurationInfoArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServiceCosmosDbConfigurationInfoArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServiceExportConfigurationInfoArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
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
///                     .maxAge(1440)
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
///                     .offerThroughput(1000)
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
/// const service = new azure_native.healthcareapis.Service("service", {
///     identity: {
///         type: azure_native.healthcareapis.ManagedServiceIdentityType.SystemAssigned,
///     },
///     kind: azure_native.healthcareapis.Kind.Fhir_R4,
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
///         publicNetworkAccess: azure_native.healthcareapis.PublicNetworkAccess.Disabled,
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
/// service = azure_native.healthcareapis.Service("service",
///     identity={
///         "type": azure_native.healthcareapis.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind=azure_native.healthcareapis.Kind.FHIR_R4,
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
///             "max_age": 1440,
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
///             "offer_throughput": 1000,
///         },
///         "export_configuration": {
///             "storage_account_name": "existingStorageAccount",
///         },
///         "private_endpoint_connections": [],
///         "public_network_access": azure_native.healthcareapis.PublicNetworkAccess.DISABLED,
///     },
///     resource_group_name="rg1",
///     resource_name_="service1",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:healthcareapis:Service
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
/// ### Create or Update a service with all parameters and CMK enabled in a data sovereign region
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.HealthcareApis.Service("service", new()
///     {
///         Identity = new AzureNative.HealthcareApis.Inputs.ServicesResourceIdentityArgs
///         {
///             Type = AzureNative.HealthcareApis.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Kind = AzureNative.HealthcareApis.Kind.Fhir_R4,
///         Location = "Southeast Asia",
///         Properties = new AzureNative.HealthcareApis.Inputs.ServicesPropertiesArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.HealthcareApis.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "c487e7d1-3210-41a3-8ccc-e9372b78da47",
///                 },
///                 new AzureNative.HealthcareApis.Inputs.ServiceAccessPolicyEntryArgs
///                 {
///                     ObjectId = "5b307da8-43d4-492b-8b66-b0294ade872f",
///                 },
///             },
///             AuthenticationConfiguration = new AzureNative.HealthcareApis.Inputs.ServiceAuthenticationConfigurationInfoArgs
///             {
///                 Audience = "https://azurehealthcareapis.com",
///                 Authority = "https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc",
///                 SmartProxyEnabled = true,
///             },
///             CorsConfiguration = new AzureNative.HealthcareApis.Inputs.ServiceCorsConfigurationInfoArgs
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
///             CosmosDbConfiguration = new AzureNative.HealthcareApis.Inputs.ServiceCosmosDbConfigurationInfoArgs
///             {
///                 CrossTenantCmkApplicationId = "de3fbeef-8c3a-428e-8b9f-4d229c8a85f4",
///                 KeyVaultKeyUri = "https://my-vault.vault.azure.net/keys/my-key",
///                 OfferThroughput = 1000,
///             },
///             ExportConfiguration = new AzureNative.HealthcareApis.Inputs.ServiceExportConfigurationInfoArgs
///             {
///                 StorageAccountName = "existingStorageAccount",
///             },
///             PrivateEndpointConnections = new() { },
///             PublicNetworkAccess = AzureNative.HealthcareApis.PublicNetworkAccess.Disabled,
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
/// 	healthcareapis "github.com/pulumi/pulumi-azure-native-sdk/healthcareapis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcareapis.NewService(ctx, "service", &healthcareapis.ServiceArgs{
/// 			Identity: &healthcareapis.ServicesResourceIdentityArgs{
/// 				Type: pulumi.String(healthcareapis.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Kind:     healthcareapis.Kind_Fhir_R4,
/// 			Location: pulumi.String("Southeast Asia"),
/// 			Properties: &healthcareapis.ServicesPropertiesArgs{
/// 				AccessPolicies: healthcareapis.ServiceAccessPolicyEntryArray{
/// 					&healthcareapis.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("c487e7d1-3210-41a3-8ccc-e9372b78da47"),
/// 					},
/// 					&healthcareapis.ServiceAccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("5b307da8-43d4-492b-8b66-b0294ade872f"),
/// 					},
/// 				},
/// 				AuthenticationConfiguration: &healthcareapis.ServiceAuthenticationConfigurationInfoArgs{
/// 					Audience:          pulumi.String("https://azurehealthcareapis.com"),
/// 					Authority:         pulumi.String("https://login.microsoftonline.com/abfde7b2-df0f-47e6-aabf-2462b07508dc"),
/// 					SmartProxyEnabled: pulumi.Bool(true),
/// 				},
/// 				CorsConfiguration: &healthcareapis.ServiceCorsConfigurationInfoArgs{
/// 					AllowCredentials: pulumi.Bool(false),
/// 					Headers: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					MaxAge: pulumi.Int(1440),
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
/// 				CosmosDbConfiguration: &healthcareapis.ServiceCosmosDbConfigurationInfoArgs{
/// 					CrossTenantCmkApplicationId: pulumi.String("de3fbeef-8c3a-428e-8b9f-4d229c8a85f4"),
/// 					KeyVaultKeyUri:              pulumi.String("https://my-vault.vault.azure.net/keys/my-key"),
/// 					OfferThroughput:             pulumi.Int(1000),
/// 				},
/// 				ExportConfiguration: &healthcareapis.ServiceExportConfigurationInfoArgs{
/// 					StorageAccountName: pulumi.String("existingStorageAccount"),
/// 				},
/// 				PrivateEndpointConnections: healthcareapis.PrivateEndpointConnectionTypeArray{},
/// 				PublicNetworkAccess:        pulumi.String(healthcareapis.PublicNetworkAccessDisabled),
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
/// resource "azure-native_healthcareapis_service" "service" {
///   identity = {
///     type = "SystemAssigned"
///   }
///   kind     = "fhir-R4"
///   location = "Southeast Asia"
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
///       cross_tenant_cmk_application_id = "de3fbeef-8c3a-428e-8b9f-4d229c8a85f4"
///       key_vault_key_uri               = "https://my-vault.vault.azure.net/keys/my-key"
///       offer_throughput                = 1000
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
/// import com.pulumi.azurenative.healthcareapis.Service;
/// import com.pulumi.azurenative.healthcareapis.ServiceArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServicesResourceIdentityArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServicesPropertiesArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServiceAuthenticationConfigurationInfoArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServiceCorsConfigurationInfoArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServiceCosmosDbConfigurationInfoArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServiceExportConfigurationInfoArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .identity(ServicesResourceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("fhir-R4")
///             .location("Southeast Asia")
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
///                     .maxAge(1440)
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
///                     .crossTenantCmkApplicationId("de3fbeef-8c3a-428e-8b9f-4d229c8a85f4")
///                     .keyVaultKeyUri("https://my-vault.vault.azure.net/keys/my-key")
///                     .offerThroughput(1000)
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
/// const service = new azure_native.healthcareapis.Service("service", {
///     identity: {
///         type: azure_native.healthcareapis.ManagedServiceIdentityType.SystemAssigned,
///     },
///     kind: azure_native.healthcareapis.Kind.Fhir_R4,
///     location: "Southeast Asia",
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
///             crossTenantCmkApplicationId: "de3fbeef-8c3a-428e-8b9f-4d229c8a85f4",
///             keyVaultKeyUri: "https://my-vault.vault.azure.net/keys/my-key",
///             offerThroughput: 1000,
///         },
///         exportConfiguration: {
///             storageAccountName: "existingStorageAccount",
///         },
///         privateEndpointConnections: [],
///         publicNetworkAccess: azure_native.healthcareapis.PublicNetworkAccess.Disabled,
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
/// service = azure_native.healthcareapis.Service("service",
///     identity={
///         "type": azure_native.healthcareapis.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind=azure_native.healthcareapis.Kind.FHIR_R4,
///     location="Southeast Asia",
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
///             "max_age": 1440,
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
///             "cross_tenant_cmk_application_id": "de3fbeef-8c3a-428e-8b9f-4d229c8a85f4",
///             "key_vault_key_uri": "https://my-vault.vault.azure.net/keys/my-key",
///             "offer_throughput": 1000,
///         },
///         "export_configuration": {
///             "storage_account_name": "existingStorageAccount",
///         },
///         "private_endpoint_connections": [],
///         "public_network_access": azure_native.healthcareapis.PublicNetworkAccess.DISABLED,
///     },
///     resource_group_name="rg1",
///     resource_name_="service1",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:healthcareapis:Service
///     properties:
///       identity:
///         type: SystemAssigned
///       kind: fhir-R4
///       location: Southeast Asia
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
///           crossTenantCmkApplicationId: de3fbeef-8c3a-428e-8b9f-4d229c8a85f4
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
///     var service = new AzureNative.HealthcareApis.Service("service", new()
///     {
///         Kind = AzureNative.HealthcareApis.Kind.Fhir_R4,
///         Location = "westus2",
///         Properties = new AzureNative.HealthcareApis.Inputs.ServicesPropertiesArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.HealthcareApis.Inputs.ServiceAccessPolicyEntryArgs
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
/// 	healthcareapis "github.com/pulumi/pulumi-azure-native-sdk/healthcareapis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcareapis.NewService(ctx, "service", &healthcareapis.ServiceArgs{
/// 			Kind:     healthcareapis.Kind_Fhir_R4,
/// 			Location: pulumi.String("westus2"),
/// 			Properties: &healthcareapis.ServicesPropertiesArgs{
/// 				AccessPolicies: healthcareapis.ServiceAccessPolicyEntryArray{
/// 					&healthcareapis.ServiceAccessPolicyEntryArgs{
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
/// resource "azure-native_healthcareapis_service" "service" {
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
/// import com.pulumi.azurenative.healthcareapis.Service;
/// import com.pulumi.azurenative.healthcareapis.ServiceArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.ServicesPropertiesArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
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
/// const service = new azure_native.healthcareapis.Service("service", {
///     kind: azure_native.healthcareapis.Kind.Fhir_R4,
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
/// service = azure_native.healthcareapis.Service("service",
///     kind=azure_native.healthcareapis.Kind.FHIR_R4,
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
///   service:
///     type: azure-native:healthcareapis:Service
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
/// $ pulumi import azure-native:healthcareapis:Service service2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HealthcareApis/services/{resourceName}
/// ```
class Service extends pulumi.CustomResource {
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
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_healthcareapis_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:healthcareapis:Service',
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
