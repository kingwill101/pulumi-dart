import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_management_service_args.dart';
import 'api_management_service_identity_response.dart';
import 'api_management_service_sku_properties_response.dart';
import 'api_version_constraint_response.dart';
import 'system_data_response.dart';
import 'virtual_network_configuration_response.dart';

/// A single API Management service resource in List or Get response.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateMultiRegionServiceWithCustomHostname
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         AdditionalLocations = new[]
///         {
///             new AzureNative.ApiManagement.Inputs.AdditionalLocationArgs
///             {
///                 DisableGateway = true,
///                 Location = "East US",
///                 Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///                 {
///                     Capacity = 1,
///                     Name = AzureNative.ApiManagement.SkuType.Premium,
///                 },
///             },
///         },
///         ApiVersionConstraint = new AzureNative.ApiManagement.Inputs.ApiVersionConstraintArgs
///         {
///             MinApiVersion = "2019-01-01",
///         },
///         HostnameConfigurations = new[]
///         {
///             new AzureNative.ApiManagement.Inputs.HostnameConfigurationArgs
///             {
///                 CertificatePassword = "Password",
///                 DefaultSslBinding = true,
///                 EncodedCertificate = "****** Base 64 Encoded Certificate ************",
///                 HostName = "gateway1.msitesting.net",
///                 Type = AzureNative.ApiManagement.HostnameType.Proxy,
///             },
///             new AzureNative.ApiManagement.Inputs.HostnameConfigurationArgs
///             {
///                 CertificatePassword = "Password",
///                 EncodedCertificate = "****** Base 64 Encoded Certificate ************",
///                 HostName = "mgmt.msitesting.net",
///                 Type = AzureNative.ApiManagement.HostnameType.Management,
///             },
///             new AzureNative.ApiManagement.Inputs.HostnameConfigurationArgs
///             {
///                 CertificatePassword = "Password",
///                 EncodedCertificate = "****** Base 64 Encoded Certificate ************",
///                 HostName = "portal1.msitesting.net",
///                 Type = AzureNative.ApiManagement.HostnameType.Portal,
///             },
///         },
///         Location = "West US",
///         PublisherEmail = "apim@autorestsdk.com",
///         PublisherName = "autorestsdk",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.ApiManagement.SkuType.Premium,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///             { "tag3", "value3" },
///         },
///         VirtualNetworkType = AzureNative.ApiManagement.VirtualNetworkType.None,
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			AdditionalLocations: apimanagement.AdditionalLocationArray{
/// 				&apimanagement.AdditionalLocationArgs{
/// 					DisableGateway: pulumi.Bool(true),
/// 					Location:       pulumi.String("East US"),
/// 					Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 						Capacity: pulumi.Int(1),
/// 						Name:     pulumi.String(apimanagement.SkuTypePremium),
/// 					},
/// 				},
/// 			},
/// 			ApiVersionConstraint: &apimanagement.ApiVersionConstraintArgs{
/// 				MinApiVersion: pulumi.String("2019-01-01"),
/// 			},
/// 			HostnameConfigurations: apimanagement.HostnameConfigurationArray{
/// 				&apimanagement.HostnameConfigurationArgs{
/// 					CertificatePassword: pulumi.String("Password"),
/// 					DefaultSslBinding:   pulumi.Bool(true),
/// 					EncodedCertificate:  pulumi.String("****** Base 64 Encoded Certificate ************"),
/// 					HostName:            pulumi.String("gateway1.msitesting.net"),
/// 					Type:                pulumi.String(apimanagement.HostnameTypeProxy),
/// 				},
/// 				&apimanagement.HostnameConfigurationArgs{
/// 					CertificatePassword: pulumi.String("Password"),
/// 					EncodedCertificate:  pulumi.String("****** Base 64 Encoded Certificate ************"),
/// 					HostName:            pulumi.String("mgmt.msitesting.net"),
/// 					Type:                pulumi.String(apimanagement.HostnameTypeManagement),
/// 				},
/// 				&apimanagement.HostnameConfigurationArgs{
/// 					CertificatePassword: pulumi.String("Password"),
/// 					EncodedCertificate:  pulumi.String("****** Base 64 Encoded Certificate ************"),
/// 					HostName:            pulumi.String("portal1.msitesting.net"),
/// 					Type:                pulumi.String(apimanagement.HostnameTypePortal),
/// 				},
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			PublisherEmail:    pulumi.String("apim@autorestsdk.com"),
/// 			PublisherName:     pulumi.String("autorestsdk"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(apimanagement.SkuTypePremium),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 				"tag3": pulumi.String("value3"),
/// 			},
/// 			VirtualNetworkType: pulumi.String(apimanagement.VirtualNetworkTypeNone),
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
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AdditionalLocationArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiVersionConstraintArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.HostnameConfigurationArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .additionalLocations(AdditionalLocationArgs.builder()
///                 .disableGateway(true)
///                 .location("East US")
///                 .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                     .capacity(1)
///                     .name("Premium")
///                     .build())
///                 .build())
///             .apiVersionConstraint(ApiVersionConstraintArgs.builder()
///                 .minApiVersion("2019-01-01")
///                 .build())
///             .hostnameConfigurations(
///                 HostnameConfigurationArgs.builder()
///                     .certificatePassword("Password")
///                     .defaultSslBinding(true)
///                     .encodedCertificate("****** Base 64 Encoded Certificate ************")
///                     .hostName("gateway1.msitesting.net")
///                     .type("Proxy")
///                     .build(),
///                 HostnameConfigurationArgs.builder()
///                     .certificatePassword("Password")
///                     .encodedCertificate("****** Base 64 Encoded Certificate ************")
///                     .hostName("mgmt.msitesting.net")
///                     .type("Management")
///                     .build(),
///                 HostnameConfigurationArgs.builder()
///                     .certificatePassword("Password")
///                     .encodedCertificate("****** Base 64 Encoded Certificate ************")
///                     .hostName("portal1.msitesting.net")
///                     .type("Portal")
///                     .build())
///             .location("West US")
///             .publisherEmail("apim@autorestsdk.com")
///             .publisherName("autorestsdk")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(1)
///                 .name("Premium")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2"),
///                 Map.entry("tag3", "value3")
///             ))
///             .virtualNetworkType("None")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     additionalLocations: [{
///         disableGateway: true,
///         location: "East US",
///         sku: {
///             capacity: 1,
///             name: azure_native.apimanagement.SkuType.Premium,
///         },
///     }],
///     apiVersionConstraint: {
///         minApiVersion: "2019-01-01",
///     },
///     hostnameConfigurations: [
///         {
///             certificatePassword: "Password",
///             defaultSslBinding: true,
///             encodedCertificate: "****** Base 64 Encoded Certificate ************",
///             hostName: "gateway1.msitesting.net",
///             type: azure_native.apimanagement.HostnameType.Proxy,
///         },
///         {
///             certificatePassword: "Password",
///             encodedCertificate: "****** Base 64 Encoded Certificate ************",
///             hostName: "mgmt.msitesting.net",
///             type: azure_native.apimanagement.HostnameType.Management,
///         },
///         {
///             certificatePassword: "Password",
///             encodedCertificate: "****** Base 64 Encoded Certificate ************",
///             hostName: "portal1.msitesting.net",
///             type: azure_native.apimanagement.HostnameType.Portal,
///         },
///     ],
///     location: "West US",
///     publisherEmail: "apim@autorestsdk.com",
///     publisherName: "autorestsdk",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     sku: {
///         capacity: 1,
///         name: azure_native.apimanagement.SkuType.Premium,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///         tag3: "value3",
///     },
///     virtualNetworkType: azure_native.apimanagement.VirtualNetworkType.None,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     additional_locations=[{
///         "disable_gateway": True,
///         "location": "East US",
///         "sku": {
///             "capacity": 1,
///             "name": azure_native.apimanagement.SkuType.PREMIUM,
///         },
///     }],
///     api_version_constraint={
///         "min_api_version": "2019-01-01",
///     },
///     hostname_configurations=[
///         {
///             "certificate_password": "Password",
///             "default_ssl_binding": True,
///             "encoded_certificate": "****** Base 64 Encoded Certificate ************",
///             "host_name": "gateway1.msitesting.net",
///             "type": azure_native.apimanagement.HostnameType.PROXY,
///         },
///         {
///             "certificate_password": "Password",
///             "encoded_certificate": "****** Base 64 Encoded Certificate ************",
///             "host_name": "mgmt.msitesting.net",
///             "type": azure_native.apimanagement.HostnameType.MANAGEMENT,
///         },
///         {
///             "certificate_password": "Password",
///             "encoded_certificate": "****** Base 64 Encoded Certificate ************",
///             "host_name": "portal1.msitesting.net",
///             "type": azure_native.apimanagement.HostnameType.PORTAL,
///         },
///     ],
///     location="West US",
///     publisher_email="apim@autorestsdk.com",
///     publisher_name="autorestsdk",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     sku={
///         "capacity": 1,
///         "name": azure_native.apimanagement.SkuType.PREMIUM,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///         "tag3": "value3",
///     },
///     virtual_network_type=azure_native.apimanagement.VirtualNetworkType.NONE)
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       additionalLocations:
///         - disableGateway: true
///           location: East US
///           sku:
///             capacity: 1
///             name: Premium
///       apiVersionConstraint:
///         minApiVersion: 2019-01-01
///       hostnameConfigurations:
///         - certificatePassword: Password
///           defaultSslBinding: true
///           encodedCertificate: '****** Base 64 Encoded Certificate ************'
///           hostName: gateway1.msitesting.net
///           type: Proxy
///         - certificatePassword: Password
///           encodedCertificate: '****** Base 64 Encoded Certificate ************'
///           hostName: mgmt.msitesting.net
///           type: Management
///         - certificatePassword: Password
///           encodedCertificate: '****** Base 64 Encoded Certificate ************'
///           hostName: portal1.msitesting.net
///           type: Portal
///       location: West US
///       publisherEmail: apim@autorestsdk.com
///       publisherName: autorestsdk
///       resourceGroupName: rg1
///       serviceName: apimService1
///       sku:
///         capacity: 1
///         name: Premium
///       tags:
///         tag1: value1
///         tag2: value2
///         tag3: value3
///       virtualNetworkType: None
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateService
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         Location = "South Central US",
///         PublisherEmail = "foo@contoso.com",
///         PublisherName = "foo",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.ApiManagement.SkuType.Developer,
///         },
///         Tags =
///         {
///             { "Name", "Contoso" },
///             { "Test", "User" },
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			Location:          pulumi.String("South Central US"),
/// 			PublisherEmail:    pulumi.String("foo@contoso.com"),
/// 			PublisherName:     pulumi.String("foo"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(apimanagement.SkuTypeDeveloper),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Contoso"),
/// 				"Test": pulumi.String("User"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .location("South Central US")
///             .publisherEmail("foo@contoso.com")
///             .publisherName("foo")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(1)
///                 .name("Developer")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "Contoso"),
///                 Map.entry("Test", "User")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     location: "South Central US",
///     publisherEmail: "foo@contoso.com",
///     publisherName: "foo",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     sku: {
///         capacity: 1,
///         name: azure_native.apimanagement.SkuType.Developer,
///     },
///     tags: {
///         Name: "Contoso",
///         Test: "User",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     location="South Central US",
///     publisher_email="foo@contoso.com",
///     publisher_name="foo",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     sku={
///         "capacity": 1,
///         "name": azure_native.apimanagement.SkuType.DEVELOPER,
///     },
///     tags={
///         "Name": "Contoso",
///         "Test": "User",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       location: South Central US
///       publisherEmail: foo@contoso.com
///       publisherName: foo
///       resourceGroupName: rg1
///       serviceName: apimService1
///       sku:
///         capacity: 1
///         name: Developer
///       tags:
///         Name: Contoso
///         Test: User
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateServiceHavingMsi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         Identity = new AzureNative.ApiManagement.Inputs.ApiManagementServiceIdentityArgs
///         {
///             Type = AzureNative.ApiManagement.ApimIdentityType.SystemAssigned,
///         },
///         Location = "West US",
///         PublisherEmail = "apim@autorestsdk.com",
///         PublisherName = "autorestsdk",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 0,
///             Name = AzureNative.ApiManagement.SkuType.Consumption,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///             { "tag3", "value3" },
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			Identity: &apimanagement.ApiManagementServiceIdentityArgs{
/// 				Type: pulumi.String(apimanagement.ApimIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			PublisherEmail:    pulumi.String("apim@autorestsdk.com"),
/// 			PublisherName:     pulumi.String("autorestsdk"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(0),
/// 				Name:     pulumi.String(apimanagement.SkuTypeConsumption),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 				"tag3": pulumi.String("value3"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceIdentityArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .identity(ApiManagementServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US")
///             .publisherEmail("apim@autorestsdk.com")
///             .publisherName("autorestsdk")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(0)
///                 .name("Consumption")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2"),
///                 Map.entry("tag3", "value3")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     identity: {
///         type: azure_native.apimanagement.ApimIdentityType.SystemAssigned,
///     },
///     location: "West US",
///     publisherEmail: "apim@autorestsdk.com",
///     publisherName: "autorestsdk",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     sku: {
///         capacity: 0,
///         name: azure_native.apimanagement.SkuType.Consumption,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///         tag3: "value3",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     identity={
///         "type": azure_native.apimanagement.ApimIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="West US",
///     publisher_email="apim@autorestsdk.com",
///     publisher_name="autorestsdk",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     sku={
///         "capacity": 0,
///         "name": azure_native.apimanagement.SkuType.CONSUMPTION,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///         "tag3": "value3",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       identity:
///         type: SystemAssigned
///       location: West US
///       publisherEmail: apim@autorestsdk.com
///       publisherName: autorestsdk
///       resourceGroupName: rg1
///       serviceName: apimService1
///       sku:
///         capacity: 0
///         name: Consumption
///       tags:
///         tag1: value1
///         tag2: value2
///         tag3: value3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateServiceInVnetWithPublicIP
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         Location = "East US 2 EUAP",
///         PublicIpAddressId = "/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/publicIPAddresses/apimazvnet",
///         PublisherEmail = "apim@autorestsdk.com",
///         PublisherName = "autorestsdk",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 2,
///             Name = AzureNative.ApiManagement.SkuType.Premium,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///             { "tag3", "value3" },
///         },
///         VirtualNetworkConfiguration = new AzureNative.ApiManagement.Inputs.VirtualNetworkConfigurationArgs
///         {
///             SubnetResourceId = "/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/virtualNetworks/apimcus/subnets/tenant",
///         },
///         VirtualNetworkType = AzureNative.ApiManagement.VirtualNetworkType.External,
///         Zones = new[]
///         {
///             "1",
///             "2",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			Location:          pulumi.String("East US 2 EUAP"),
/// 			PublicIpAddressId: pulumi.String("/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/publicIPAddresses/apimazvnet"),
/// 			PublisherEmail:    pulumi.String("apim@autorestsdk.com"),
/// 			PublisherName:     pulumi.String("autorestsdk"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String(apimanagement.SkuTypePremium),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 				"tag3": pulumi.String("value3"),
/// 			},
/// 			VirtualNetworkConfiguration: &apimanagement.VirtualNetworkConfigurationArgs{
/// 				SubnetResourceId: pulumi.String("/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/virtualNetworks/apimcus/subnets/tenant"),
/// 			},
/// 			VirtualNetworkType: pulumi.String(apimanagement.VirtualNetworkTypeExternal),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.VirtualNetworkConfigurationArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .location("East US 2 EUAP")
///             .publicIpAddressId("/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/publicIPAddresses/apimazvnet")
///             .publisherEmail("apim@autorestsdk.com")
///             .publisherName("autorestsdk")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(2)
///                 .name("Premium")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2"),
///                 Map.entry("tag3", "value3")
///             ))
///             .virtualNetworkConfiguration(VirtualNetworkConfigurationArgs.builder()
///                 .subnetResourceId("/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/virtualNetworks/apimcus/subnets/tenant")
///                 .build())
///             .virtualNetworkType("External")
///             .zones(
///                 "1",
///                 "2")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     location: "East US 2 EUAP",
///     publicIpAddressId: "/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/publicIPAddresses/apimazvnet",
///     publisherEmail: "apim@autorestsdk.com",
///     publisherName: "autorestsdk",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     sku: {
///         capacity: 2,
///         name: azure_native.apimanagement.SkuType.Premium,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///         tag3: "value3",
///     },
///     virtualNetworkConfiguration: {
///         subnetResourceId: "/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/virtualNetworks/apimcus/subnets/tenant",
///     },
///     virtualNetworkType: azure_native.apimanagement.VirtualNetworkType.External,
///     zones: [
///         "1",
///         "2",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     location="East US 2 EUAP",
///     public_ip_address_id="/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/publicIPAddresses/apimazvnet",
///     publisher_email="apim@autorestsdk.com",
///     publisher_name="autorestsdk",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     sku={
///         "capacity": 2,
///         "name": azure_native.apimanagement.SkuType.PREMIUM,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///         "tag3": "value3",
///     },
///     virtual_network_configuration={
///         "subnet_resource_id": "/subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/virtualNetworks/apimcus/subnets/tenant",
///     },
///     virtual_network_type=azure_native.apimanagement.VirtualNetworkType.EXTERNAL,
///     zones=[
///         "1",
///         "2",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       location: East US 2 EUAP
///       publicIpAddressId: /subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/publicIPAddresses/apimazvnet
///       publisherEmail: apim@autorestsdk.com
///       publisherName: autorestsdk
///       resourceGroupName: rg1
///       serviceName: apimService1
///       sku:
///         capacity: 2
///         name: Premium
///       tags:
///         tag1: value1
///         tag2: value2
///         tag3: value3
///       virtualNetworkConfiguration:
///         subnetResourceId: /subscriptions/subid/resourceGroups/rgName/providers/Microsoft.Network/virtualNetworks/apimcus/subnets/tenant
///       virtualNetworkType: External
///       zones:
///         - '1'
///         - '2'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateServiceInZones
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         Location = "North europe",
///         PublisherEmail = "apim@autorestsdk.com",
///         PublisherName = "autorestsdk",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 2,
///             Name = AzureNative.ApiManagement.SkuType.Premium,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///             { "tag3", "value3" },
///         },
///         Zones = new[]
///         {
///             "1",
///             "2",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			Location:          pulumi.String("North europe"),
/// 			PublisherEmail:    pulumi.String("apim@autorestsdk.com"),
/// 			PublisherName:     pulumi.String("autorestsdk"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String(apimanagement.SkuTypePremium),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 				"tag3": pulumi.String("value3"),
/// 			},
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .location("North europe")
///             .publisherEmail("apim@autorestsdk.com")
///             .publisherName("autorestsdk")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(2)
///                 .name("Premium")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2"),
///                 Map.entry("tag3", "value3")
///             ))
///             .zones(
///                 "1",
///                 "2")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     location: "North europe",
///     publisherEmail: "apim@autorestsdk.com",
///     publisherName: "autorestsdk",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     sku: {
///         capacity: 2,
///         name: azure_native.apimanagement.SkuType.Premium,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///         tag3: "value3",
///     },
///     zones: [
///         "1",
///         "2",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     location="North europe",
///     publisher_email="apim@autorestsdk.com",
///     publisher_name="autorestsdk",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     sku={
///         "capacity": 2,
///         "name": azure_native.apimanagement.SkuType.PREMIUM,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///         "tag3": "value3",
///     },
///     zones=[
///         "1",
///         "2",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       location: North europe
///       publisherEmail: apim@autorestsdk.com
///       publisherName: autorestsdk
///       resourceGroupName: rg1
///       serviceName: apimService1
///       sku:
///         capacity: 2
///         name: Premium
///       tags:
///         tag1: value1
///         tag2: value2
///         tag3: value3
///       zones:
///         - '1'
///         - '2'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateServiceWithCustomHostnameKeyVault
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         ApiVersionConstraint = new AzureNative.ApiManagement.Inputs.ApiVersionConstraintArgs
///         {
///             MinApiVersion = "2019-01-01",
///         },
///         HostnameConfigurations = new[]
///         {
///             new AzureNative.ApiManagement.Inputs.HostnameConfigurationArgs
///             {
///                 DefaultSslBinding = true,
///                 HostName = "gateway1.msitesting.net",
///                 IdentityClientId = "329419bc-adec-4dce-9568-25a6d486e468",
///                 KeyVaultId = "https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert",
///                 Type = AzureNative.ApiManagement.HostnameType.Proxy,
///             },
///             new AzureNative.ApiManagement.Inputs.HostnameConfigurationArgs
///             {
///                 HostName = "mgmt.msitesting.net",
///                 IdentityClientId = "329419bc-adec-4dce-9568-25a6d486e468",
///                 KeyVaultId = "https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert",
///                 Type = AzureNative.ApiManagement.HostnameType.Management,
///             },
///             new AzureNative.ApiManagement.Inputs.HostnameConfigurationArgs
///             {
///                 HostName = "portal1.msitesting.net",
///                 IdentityClientId = "329419bc-adec-4dce-9568-25a6d486e468",
///                 KeyVaultId = "https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert",
///                 Type = AzureNative.ApiManagement.HostnameType.Portal,
///             },
///         },
///         Identity = new AzureNative.ApiManagement.Inputs.ApiManagementServiceIdentityArgs
///         {
///             Type = AzureNative.ApiManagement.ApimIdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/id1", null },
///             },
///         },
///         Location = "North Europe",
///         PublisherEmail = "apim@autorestsdk.com",
///         PublisherName = "autorestsdk",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.ApiManagement.SkuType.Premium,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///             { "tag3", "value3" },
///         },
///         VirtualNetworkType = AzureNative.ApiManagement.VirtualNetworkType.None,
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			ApiVersionConstraint: &apimanagement.ApiVersionConstraintArgs{
/// 				MinApiVersion: pulumi.String("2019-01-01"),
/// 			},
/// 			HostnameConfigurations: apimanagement.HostnameConfigurationArray{
/// 				&apimanagement.HostnameConfigurationArgs{
/// 					DefaultSslBinding: pulumi.Bool(true),
/// 					HostName:          pulumi.String("gateway1.msitesting.net"),
/// 					IdentityClientId:  pulumi.String("329419bc-adec-4dce-9568-25a6d486e468"),
/// 					KeyVaultId:        pulumi.String("https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert"),
/// 					Type:              pulumi.String(apimanagement.HostnameTypeProxy),
/// 				},
/// 				&apimanagement.HostnameConfigurationArgs{
/// 					HostName:         pulumi.String("mgmt.msitesting.net"),
/// 					IdentityClientId: pulumi.String("329419bc-adec-4dce-9568-25a6d486e468"),
/// 					KeyVaultId:       pulumi.String("https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert"),
/// 					Type:             pulumi.String(apimanagement.HostnameTypeManagement),
/// 				},
/// 				&apimanagement.HostnameConfigurationArgs{
/// 					HostName:         pulumi.String("portal1.msitesting.net"),
/// 					IdentityClientId: pulumi.String("329419bc-adec-4dce-9568-25a6d486e468"),
/// 					KeyVaultId:       pulumi.String("https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert"),
/// 					Type:             pulumi.String(apimanagement.HostnameTypePortal),
/// 				},
/// 			},
/// 			Identity: &apimanagement.ApiManagementServiceIdentityArgs{
/// 				Type: pulumi.String(apimanagement.ApimIdentityTypeUserAssigned),
/// 				UserAssignedIdentities: apimanagement.UserIdentityPropertiesMap{
/// 					"/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/id1": &apimanagement.UserIdentityPropertiesArgs{},
/// 				},
/// 			},
/// 			Location:          pulumi.String("North Europe"),
/// 			PublisherEmail:    pulumi.String("apim@autorestsdk.com"),
/// 			PublisherName:     pulumi.String("autorestsdk"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(apimanagement.SkuTypePremium),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 				"tag3": pulumi.String("value3"),
/// 			},
/// 			VirtualNetworkType: pulumi.String(apimanagement.VirtualNetworkTypeNone),
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
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiVersionConstraintArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.HostnameConfigurationArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceIdentityArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .apiVersionConstraint(ApiVersionConstraintArgs.builder()
///                 .minApiVersion("2019-01-01")
///                 .build())
///             .hostnameConfigurations(
///                 HostnameConfigurationArgs.builder()
///                     .defaultSslBinding(true)
///                     .hostName("gateway1.msitesting.net")
///                     .identityClientId("329419bc-adec-4dce-9568-25a6d486e468")
///                     .keyVaultId("https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert")
///                     .type("Proxy")
///                     .build(),
///                 HostnameConfigurationArgs.builder()
///                     .hostName("mgmt.msitesting.net")
///                     .identityClientId("329419bc-adec-4dce-9568-25a6d486e468")
///                     .keyVaultId("https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert")
///                     .type("Management")
///                     .build(),
///                 HostnameConfigurationArgs.builder()
///                     .hostName("portal1.msitesting.net")
///                     .identityClientId("329419bc-adec-4dce-9568-25a6d486e468")
///                     .keyVaultId("https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert")
///                     .type("Portal")
///                     .build())
///             .identity(ApiManagementServiceIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.of("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/id1", UserIdentityPropertiesArgs.builder()
///                     .build()))
///                 .build())
///             .location("North Europe")
///             .publisherEmail("apim@autorestsdk.com")
///             .publisherName("autorestsdk")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(1)
///                 .name("Premium")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2"),
///                 Map.entry("tag3", "value3")
///             ))
///             .virtualNetworkType("None")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     apiVersionConstraint: {
///         minApiVersion: "2019-01-01",
///     },
///     hostnameConfigurations: [
///         {
///             defaultSslBinding: true,
///             hostName: "gateway1.msitesting.net",
///             identityClientId: "329419bc-adec-4dce-9568-25a6d486e468",
///             keyVaultId: "https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert",
///             type: azure_native.apimanagement.HostnameType.Proxy,
///         },
///         {
///             hostName: "mgmt.msitesting.net",
///             identityClientId: "329419bc-adec-4dce-9568-25a6d486e468",
///             keyVaultId: "https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert",
///             type: azure_native.apimanagement.HostnameType.Management,
///         },
///         {
///             hostName: "portal1.msitesting.net",
///             identityClientId: "329419bc-adec-4dce-9568-25a6d486e468",
///             keyVaultId: "https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert",
///             type: azure_native.apimanagement.HostnameType.Portal,
///         },
///     ],
///     identity: {
///         type: azure_native.apimanagement.ApimIdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/id1": {},
///         },
///     },
///     location: "North Europe",
///     publisherEmail: "apim@autorestsdk.com",
///     publisherName: "autorestsdk",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     sku: {
///         capacity: 1,
///         name: azure_native.apimanagement.SkuType.Premium,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///         tag3: "value3",
///     },
///     virtualNetworkType: azure_native.apimanagement.VirtualNetworkType.None,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     api_version_constraint={
///         "min_api_version": "2019-01-01",
///     },
///     hostname_configurations=[
///         {
///             "default_ssl_binding": True,
///             "host_name": "gateway1.msitesting.net",
///             "identity_client_id": "329419bc-adec-4dce-9568-25a6d486e468",
///             "key_vault_id": "https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert",
///             "type": azure_native.apimanagement.HostnameType.PROXY,
///         },
///         {
///             "host_name": "mgmt.msitesting.net",
///             "identity_client_id": "329419bc-adec-4dce-9568-25a6d486e468",
///             "key_vault_id": "https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert",
///             "type": azure_native.apimanagement.HostnameType.MANAGEMENT,
///         },
///         {
///             "host_name": "portal1.msitesting.net",
///             "identity_client_id": "329419bc-adec-4dce-9568-25a6d486e468",
///             "key_vault_id": "https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert",
///             "type": azure_native.apimanagement.HostnameType.PORTAL,
///         },
///     ],
///     identity={
///         "type": azure_native.apimanagement.ApimIdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/id1": {},
///         },
///     },
///     location="North Europe",
///     publisher_email="apim@autorestsdk.com",
///     publisher_name="autorestsdk",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     sku={
///         "capacity": 1,
///         "name": azure_native.apimanagement.SkuType.PREMIUM,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///         "tag3": "value3",
///     },
///     virtual_network_type=azure_native.apimanagement.VirtualNetworkType.NONE)
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       apiVersionConstraint:
///         minApiVersion: 2019-01-01
///       hostnameConfigurations:
///         - defaultSslBinding: true
///           hostName: gateway1.msitesting.net
///           identityClientId: 329419bc-adec-4dce-9568-25a6d486e468
///           keyVaultId: https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert
///           type: Proxy
///         - hostName: mgmt.msitesting.net
///           identityClientId: 329419bc-adec-4dce-9568-25a6d486e468
///           keyVaultId: https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert
///           type: Management
///         - hostName: portal1.msitesting.net
///           identityClientId: 329419bc-adec-4dce-9568-25a6d486e468
///           keyVaultId: https://rpbvtkeyvaultintegration.vault.azure.net/secrets/msitestingCert
///           type: Portal
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/id1: {}
///       location: North Europe
///       publisherEmail: apim@autorestsdk.com
///       publisherName: autorestsdk
///       resourceGroupName: rg1
///       serviceName: apimService1
///       sku:
///         capacity: 1
///         name: Premium
///       tags:
///         tag1: value1
///         tag2: value2
///         tag3: value3
///       virtualNetworkType: None
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateServiceWithNatGatewayEnabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         Location = "East US",
///         NatGatewayState = AzureNative.ApiManagement.NatGatewayState.Enabled,
///         PublisherEmail = "apim@autorestsdk.com",
///         PublisherName = "autorestsdk",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.ApiManagement.SkuType.Premium,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///             { "tag3", "value3" },
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			Location:          pulumi.String("East US"),
/// 			NatGatewayState:   pulumi.String(apimanagement.NatGatewayStateEnabled),
/// 			PublisherEmail:    pulumi.String("apim@autorestsdk.com"),
/// 			PublisherName:     pulumi.String("autorestsdk"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(apimanagement.SkuTypePremium),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 				"tag3": pulumi.String("value3"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .location("East US")
///             .natGatewayState("Enabled")
///             .publisherEmail("apim@autorestsdk.com")
///             .publisherName("autorestsdk")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(1)
///                 .name("Premium")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2"),
///                 Map.entry("tag3", "value3")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     location: "East US",
///     natGatewayState: azure_native.apimanagement.NatGatewayState.Enabled,
///     publisherEmail: "apim@autorestsdk.com",
///     publisherName: "autorestsdk",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     sku: {
///         capacity: 1,
///         name: azure_native.apimanagement.SkuType.Premium,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///         tag3: "value3",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     location="East US",
///     nat_gateway_state=azure_native.apimanagement.NatGatewayState.ENABLED,
///     publisher_email="apim@autorestsdk.com",
///     publisher_name="autorestsdk",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     sku={
///         "capacity": 1,
///         "name": azure_native.apimanagement.SkuType.PREMIUM,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///         "tag3": "value3",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       location: East US
///       natGatewayState: Enabled
///       publisherEmail: apim@autorestsdk.com
///       publisherName: autorestsdk
///       resourceGroupName: rg1
///       serviceName: apimService1
///       sku:
///         capacity: 1
///         name: Premium
///       tags:
///         tag1: value1
///         tag2: value2
///         tag3: value3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateServiceWithSystemCertificates
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         Certificates = new[]
///         {
///             new AzureNative.ApiManagement.Inputs.CertificateConfigurationArgs
///             {
///                 CertificatePassword = "Password",
///                 EncodedCertificate = "*******Base64 encoded Certificate******************",
///                 StoreName = "CertificateAuthority",
///             },
///         },
///         Location = "Central US",
///         PublisherEmail = "apim@autorestsdk.com",
///         PublisherName = "autorestsdk",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.ApiManagement.SkuType.Basic,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///             { "tag3", "value3" },
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			Certificates: apimanagement.CertificateConfigurationArray{
/// 				&apimanagement.CertificateConfigurationArgs{
/// 					CertificatePassword: pulumi.String("Password"),
/// 					EncodedCertificate:  pulumi.String("*******Base64 encoded Certificate******************"),
/// 					StoreName:           pulumi.String("CertificateAuthority"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("Central US"),
/// 			PublisherEmail:    pulumi.String("apim@autorestsdk.com"),
/// 			PublisherName:     pulumi.String("autorestsdk"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(apimanagement.SkuTypeBasic),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 				"tag3": pulumi.String("value3"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.CertificateConfigurationArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .certificates(CertificateConfigurationArgs.builder()
///                 .certificatePassword("Password")
///                 .encodedCertificate("*******Base64 encoded Certificate******************")
///                 .storeName("CertificateAuthority")
///                 .build())
///             .location("Central US")
///             .publisherEmail("apim@autorestsdk.com")
///             .publisherName("autorestsdk")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(1)
///                 .name("Basic")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2"),
///                 Map.entry("tag3", "value3")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     certificates: [{
///         certificatePassword: "Password",
///         encodedCertificate: "*******Base64 encoded Certificate******************",
///         storeName: "CertificateAuthority",
///     }],
///     location: "Central US",
///     publisherEmail: "apim@autorestsdk.com",
///     publisherName: "autorestsdk",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     sku: {
///         capacity: 1,
///         name: azure_native.apimanagement.SkuType.Basic,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///         tag3: "value3",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     certificates=[{
///         "certificate_password": "Password",
///         "encoded_certificate": "*******Base64 encoded Certificate******************",
///         "store_name": "CertificateAuthority",
///     }],
///     location="Central US",
///     publisher_email="apim@autorestsdk.com",
///     publisher_name="autorestsdk",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     sku={
///         "capacity": 1,
///         "name": azure_native.apimanagement.SkuType.BASIC,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///         "tag3": "value3",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       certificates:
///         - certificatePassword: Password
///           encodedCertificate: '*******Base64 encoded Certificate******************'
///           storeName: CertificateAuthority
///       location: Central US
///       publisherEmail: apim@autorestsdk.com
///       publisherName: autorestsdk
///       resourceGroupName: rg1
///       serviceName: apimService1
///       sku:
///         capacity: 1
///         name: Basic
///       tags:
///         tag1: value1
///         tag2: value2
///         tag3: value3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateServiceWithUserAssignedIdentity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         Identity = new AzureNative.ApiManagement.Inputs.ApiManagementServiceIdentityArgs
///         {
///             Type = AzureNative.ApiManagement.ApimIdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/apimService1", null },
///             },
///         },
///         Location = "West US",
///         PublisherEmail = "apim@autorestsdk.com",
///         PublisherName = "autorestsdk",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 0,
///             Name = AzureNative.ApiManagement.SkuType.Consumption,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///             { "tag3", "value3" },
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			Identity: &apimanagement.ApiManagementServiceIdentityArgs{
/// 				Type: pulumi.String(apimanagement.ApimIdentityTypeUserAssigned),
/// 				UserAssignedIdentities: apimanagement.UserIdentityPropertiesMap{
/// 					"/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/apimService1": &apimanagement.UserIdentityPropertiesArgs{},
/// 				},
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			PublisherEmail:    pulumi.String("apim@autorestsdk.com"),
/// 			PublisherName:     pulumi.String("autorestsdk"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(0),
/// 				Name:     pulumi.String(apimanagement.SkuTypeConsumption),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 				"tag3": pulumi.String("value3"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceIdentityArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .identity(ApiManagementServiceIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.of("/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/apimService1", UserIdentityPropertiesArgs.builder()
///                     .build()))
///                 .build())
///             .location("West US")
///             .publisherEmail("apim@autorestsdk.com")
///             .publisherName("autorestsdk")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(0)
///                 .name("Consumption")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2"),
///                 Map.entry("tag3", "value3")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     identity: {
///         type: azure_native.apimanagement.ApimIdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/apimService1": {},
///         },
///     },
///     location: "West US",
///     publisherEmail: "apim@autorestsdk.com",
///     publisherName: "autorestsdk",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     sku: {
///         capacity: 0,
///         name: azure_native.apimanagement.SkuType.Consumption,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///         tag3: "value3",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     identity={
///         "type": azure_native.apimanagement.ApimIdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/apimService1": {},
///         },
///     },
///     location="West US",
///     publisher_email="apim@autorestsdk.com",
///     publisher_name="autorestsdk",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     sku={
///         "capacity": 0,
///         "name": azure_native.apimanagement.SkuType.CONSUMPTION,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///         "tag3": "value3",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           /subscriptions/subid/resourcegroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/apimService1: {}
///       location: West US
///       publisherEmail: apim@autorestsdk.com
///       publisherName: autorestsdk
///       resourceGroupName: rg1
///       serviceName: apimService1
///       sku:
///         capacity: 0
///         name: Consumption
///       tags:
///         tag1: value1
///         tag2: value2
///         tag3: value3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementUndelete
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiManagementService = new AzureNative.ApiManagement.ApiManagementService("apiManagementService", new()
///     {
///         Location = "South Central US",
///         PublisherEmail = "foo@contoso.com",
///         PublisherName = "foo",
///         ResourceGroupName = "rg1",
///         Restore = true,
///         ServiceName = "apimService1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementServiceSkuPropertiesArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.ApiManagement.SkuType.Developer,
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiManagementService(ctx, "apiManagementService", &apimanagement.ApiManagementServiceArgs{
/// 			Location:          pulumi.String("South Central US"),
/// 			PublisherEmail:    pulumi.String("foo@contoso.com"),
/// 			PublisherName:     pulumi.String("foo"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Restore:           pulumi.Bool(true),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Sku: &apimanagement.ApiManagementServiceSkuPropertiesArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(apimanagement.SkuTypeDeveloper),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.ApiManagementService;
/// import com.pulumi.azurenative.apimanagement.ApiManagementServiceArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementServiceSkuPropertiesArgs;
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
///         var apiManagementService = new ApiManagementService("apiManagementService", ApiManagementServiceArgs.builder()
///             .location("South Central US")
///             .publisherEmail("foo@contoso.com")
///             .publisherName("foo")
///             .resourceGroupName("rg1")
///             .restore(true)
///             .serviceName("apimService1")
///             .sku(ApiManagementServiceSkuPropertiesArgs.builder()
///                 .capacity(1)
///                 .name("Developer")
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
/// const apiManagementService = new azure_native.apimanagement.ApiManagementService("apiManagementService", {
///     location: "South Central US",
///     publisherEmail: "foo@contoso.com",
///     publisherName: "foo",
///     resourceGroupName: "rg1",
///     restore: true,
///     serviceName: "apimService1",
///     sku: {
///         capacity: 1,
///         name: azure_native.apimanagement.SkuType.Developer,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_management_service = azure_native.apimanagement.ApiManagementService("apiManagementService",
///     location="South Central US",
///     publisher_email="foo@contoso.com",
///     publisher_name="foo",
///     resource_group_name="rg1",
///     restore=True,
///     service_name="apimService1",
///     sku={
///         "capacity": 1,
///         "name": azure_native.apimanagement.SkuType.DEVELOPER,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   apiManagementService:
///     type: azure-native:apimanagement:ApiManagementService
///     properties:
///       location: South Central US
///       publisherEmail: foo@contoso.com
///       publisherName: foo
///       resourceGroupName: rg1
///       restore: true
///       serviceName: apimService1
///       sku:
///         capacity: 1
///         name: Developer
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
/// $ pulumi import azure-native:apimanagement:ApiManagementService apimService1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}
/// ```
class ApiManagementService extends pulumi.CustomResource {
  /// Additional datacenter locations of the API Management service.
  late final pulumi.Output<List<Map<String, dynamic>>?> additionalLocations;
  /// Control Plane Apis version constraint for the API Management service.
  late final pulumi.Output<ApiVersionConstraintResponse?> apiVersionConstraint;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of Certificates that need to be installed in the API Management service. Max supported certificates that can be installed is 10.
  late final pulumi.Output<List<Map<String, dynamic>>?> certificates;
  /// Creation UTC date of the API Management service.The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String> createdAtUtc;
  /// Custom properties of the API Management service.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0, 1.1 and 1.2).&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` can be used to disable just TLS 1.1.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` can be used to disable TLS 1.0 on an API Management service.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11` can be used to disable just TLS 1.1 for communications with backends.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10` can be used to disable TLS 1.0 for communications with backends.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2` can be used to enable HTTP2 protocol on an API Management service.&lt;/br&gt;Not specifying any of these properties on PATCH operation will reset omitted properties' values to their defaults. For all the settings except Http2 the default value is `True` if the service was created on or before April 1, 2018 and `False` otherwise. Http2 setting's default value is `False`.&lt;/br&gt;&lt;/br&gt;You can disable any of the following ciphers by using settings `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.[cipher_name]`: TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA. For example, `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256`:`false`. The default value is `true` for them.&lt;/br&gt; Note: The following ciphers can't be disabled since they are required by internal platform components: TLS_AES_256_GCM_SHA384,TLS_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
  late final pulumi.Output<Map<String, String>?> customProperties;
  /// DEveloper Portal endpoint URL of the API Management service.
  late final pulumi.Output<String> developerPortalUrl;
  /// Property only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in master region.
  late final pulumi.Output<bool?> disableGateway;
  /// Property only meant to be used for Consumption SKU Service. This enforces a client certificate to be presented on each request to the gateway. This also enables the ability to authenticate the certificate in the policy on the gateway.
  late final pulumi.Output<bool?> enableClientCertificate;
  /// ETag of the resource.
  late final pulumi.Output<String> etag;
  /// Gateway URL of the API Management service in the Default Region.
  late final pulumi.Output<String> gatewayRegionalUrl;
  /// Gateway URL of the API Management service.
  late final pulumi.Output<String> gatewayUrl;
  /// Custom hostname configuration of the API Management service.
  late final pulumi.Output<List<Map<String, dynamic>>?> hostnameConfigurations;
  /// Managed service identity of the Api Management service.
  late final pulumi.Output<ApiManagementServiceIdentityResponse?> identity;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Management API endpoint URL of the API Management service.
  late final pulumi.Output<String> managementApiUrl;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Property can be used to enable NAT Gateway for this API Management service.
  late final pulumi.Output<String?> natGatewayState;
  /// Email address from which the notification will be sent.
  late final pulumi.Output<String?> notificationSenderEmail;
  /// Outbound public IPV4 address prefixes associated with NAT Gateway deployed service. Available only for Premium SKU on stv2 platform.
  late final pulumi.Output<List<String>> outboundPublicIPAddresses;
  /// Compute Platform Version running the service in this location.
  late final pulumi.Output<String> platformVersion;
  /// Publisher portal endpoint Url of the API Management service.
  late final pulumi.Output<String> portalUrl;
  /// List of Private Endpoint Connections of this service.
  late final pulumi.Output<List<Map<String, dynamic>>?> privateEndpointConnections;
  /// Private Static Load Balanced IP addresses of the API Management service in Primary region which is deployed in an Internal Virtual Network. Available only for Basic, Standard, Premium and Isolated SKU.
  late final pulumi.Output<List<String>> privateIPAddresses;
  /// The current provisioning state of the API Management service which can be one of the following: Created/Activating/Succeeded/Updating/Failed/Stopped/Terminating/TerminationFailed/Deleted.
  late final pulumi.Output<String> provisioningState;
  /// Public Static Load Balanced IP addresses of the API Management service in Primary region. Available only for Basic, Standard, Premium and Isolated SKU.
  late final pulumi.Output<List<String>> publicIPAddresses;
  /// Public Standard SKU IP V4 based IP address to be associated with Virtual Network deployed service in the region. Supported only for Developer and Premium SKU being deployed in Virtual Network.
  late final pulumi.Output<String?> publicIpAddressId;
  /// Whether or not public endpoint access is allowed for this API Management service.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method. Default value is 'Enabled'
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Publisher email.
  late final pulumi.Output<String> publisherEmail;
  /// Publisher name.
  late final pulumi.Output<String> publisherName;
  /// Undelete Api Management Service if it was previously soft-deleted. If this flag is specified and set to True all other properties will be ignored.
  late final pulumi.Output<bool?> restore;
  /// SCM endpoint URL of the API Management service.
  late final pulumi.Output<String> scmUrl;
  /// SKU properties of the API Management service.
  late final pulumi.Output<ApiManagementServiceSkuPropertiesResponse> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The provisioning state of the API Management service, which is targeted by the long running operation started on the service.
  late final pulumi.Output<String> targetProvisioningState;
  /// Resource type for API Management resource is set to Microsoft.ApiManagement.
  late final pulumi.Output<String> type;
  /// Virtual network configuration of the API Management service.
  late final pulumi.Output<VirtualNetworkConfigurationResponse?> virtualNetworkConfiguration;
  /// The type of VPN in which API Management service needs to be configured in. None (Default Value) means the API Management service is not part of any Virtual Network, External means the API Management deployment is set up inside a Virtual Network having an Internet Facing Endpoint, and Internal means that API Management deployment is setup inside a Virtual Network having an Intranet Facing Endpoint only.
  late final pulumi.Output<String?> virtualNetworkType;
  /// A list of availability zones denoting where the resource needs to come from.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ApiManagementService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiManagementService]. {@macro pulumi_apimanagement_api_management_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiManagementService(
    String name, {
    ApiManagementServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ApiManagementService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalLocations = registerOutput<List<Map<String, dynamic>>?>('additionalLocations');
    apiVersionConstraint = registerOutput<ApiVersionConstraintResponse?>('apiVersionConstraint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiVersionConstraintResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificates = registerOutput<List<Map<String, dynamic>>?>('certificates');
    createdAtUtc = registerOutput<String>('createdAtUtc');
    customProperties = registerOutput<Map<String, String>?>('customProperties');
    developerPortalUrl = registerOutput<String>('developerPortalUrl');
    disableGateway = registerOutput<bool?>('disableGateway');
    enableClientCertificate = registerOutput<bool?>('enableClientCertificate');
    etag = registerOutput<String>('etag');
    gatewayRegionalUrl = registerOutput<String>('gatewayRegionalUrl');
    gatewayUrl = registerOutput<String>('gatewayUrl');
    hostnameConfigurations = registerOutput<List<Map<String, dynamic>>?>('hostnameConfigurations');
    identity = registerOutput<ApiManagementServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiManagementServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managementApiUrl = registerOutput<String>('managementApiUrl');
    this.name = registerOutput<String>('name');
    natGatewayState = registerOutput<String?>('natGatewayState');
    notificationSenderEmail = registerOutput<String?>('notificationSenderEmail');
    outboundPublicIPAddresses = registerOutput<List<String>>('outboundPublicIPAddresses');
    platformVersion = registerOutput<String>('platformVersion');
    portalUrl = registerOutput<String>('portalUrl');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>?>('privateEndpointConnections');
    privateIPAddresses = registerOutput<List<String>>('privateIPAddresses');
    provisioningState = registerOutput<String>('provisioningState');
    publicIPAddresses = registerOutput<List<String>>('publicIPAddresses');
    publicIpAddressId = registerOutput<String?>('publicIpAddressId');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    publisherEmail = registerOutput<String>('publisherEmail');
    publisherName = registerOutput<String>('publisherName');
    restore = registerOutput<bool?>('restore');
    scmUrl = registerOutput<String>('scmUrl');
    sku = registerOutput<ApiManagementServiceSkuPropertiesResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiManagementServiceSkuPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    targetProvisioningState = registerOutput<String>('targetProvisioningState');
    type = registerOutput<String>('type');
    virtualNetworkConfiguration = registerOutput<VirtualNetworkConfigurationResponse?>('virtualNetworkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualNetworkType = registerOutput<String?>('virtualNetworkType');
    zones = registerOutput<List<String>?>('zones');
  }
}
