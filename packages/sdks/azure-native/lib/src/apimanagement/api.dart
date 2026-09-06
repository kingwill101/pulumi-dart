import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';
import 'api_contact_information_response.dart';
import 'api_license_information_response.dart';
import 'api_version_set_contract_details_response.dart';
import 'authentication_settings_contract_response.dart';
import 'subscription_key_parameter_names_contract_response.dart';

/// API details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "tempgroup",
///         AuthenticationSettings = new AzureNative.ApiManagement.Inputs.AuthenticationSettingsContractArgs
///         {
///             OAuth2 = new AzureNative.ApiManagement.Inputs.OAuth2AuthenticationSettingsContractArgs
///             {
///                 AuthorizationServerId = "authorizationServerId2283",
///                 Scope = "oauth2scope2580",
///             },
///         },
///         Description = "apidescription5200",
///         DisplayName = "apiname1463",
///         Path = "newapiPath",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Https,
///             AzureNative.ApiManagement.Protocol.Http,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "http://newechoapi.cloudapp.net/api",
///         SubscriptionKeyParameterNames = new AzureNative.ApiManagement.Inputs.SubscriptionKeyParameterNamesContractArgs
///         {
///             Header = "header4520",
///             Query = "query3037",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId: pulumi.String("tempgroup"),
/// 			AuthenticationSettings: &apimanagement.AuthenticationSettingsContractArgs{
/// 				OAuth2: &apimanagement.OAuth2AuthenticationSettingsContractArgs{
/// 					AuthorizationServerId: pulumi.String("authorizationServerId2283"),
/// 					Scope:                 pulumi.String("oauth2scope2580"),
/// 				},
/// 			},
/// 			Description: pulumi.String("apidescription5200"),
/// 			DisplayName: pulumi.String("apiname1463"),
/// 			Path:        pulumi.String("newapiPath"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolHttps),
/// 				pulumi.String(apimanagement.ProtocolHttp),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ServiceUrl:        pulumi.String("http://newechoapi.cloudapp.net/api"),
/// 			SubscriptionKeyParameterNames: &apimanagement.SubscriptionKeyParameterNamesContractArgs{
/// 				Header: pulumi.String("header4520"),
/// 				Query:  pulumi.String("query3037"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id = "tempgroup"
///   authentication_settings = {
///     o_auth2 = {
///       authorization_server_id = "authorizationServerId2283"
///       scope                   = "oauth2scope2580"
///     }
///   }
///   description         = "apidescription5200"
///   display_name        = "apiname1463"
///   path                = "newapiPath"
///   protocols           = ["https", "http"]
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   service_url         = "http://newechoapi.cloudapp.net/api"
///   subscription_key_parameter_names = {
///     header = "header4520"
///     query  = "query3037"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthenticationSettingsContractArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.OAuth2AuthenticationSettingsContractArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.SubscriptionKeyParameterNamesContractArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("tempgroup")
///             .authenticationSettings(AuthenticationSettingsContractArgs.builder()
///                 .oAuth2(OAuth2AuthenticationSettingsContractArgs.builder()
///                     .authorizationServerId("authorizationServerId2283")
///                     .scope("oauth2scope2580")
///                     .build())
///                 .build())
///             .description("apidescription5200")
///             .displayName("apiname1463")
///             .path("newapiPath")
///             .protocols(
///                 "https",
///                 "http")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("http://newechoapi.cloudapp.net/api")
///             .subscriptionKeyParameterNames(SubscriptionKeyParameterNamesContractArgs.builder()
///                 .header("header4520")
///                 .query("query3037")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "tempgroup",
///     authenticationSettings: {
///         oAuth2: {
///             authorizationServerId: "authorizationServerId2283",
///             scope: "oauth2scope2580",
///         },
///     },
///     description: "apidescription5200",
///     displayName: "apiname1463",
///     path: "newapiPath",
///     protocols: [
///         azure_native.apimanagement.Protocol.Https,
///         azure_native.apimanagement.Protocol.Http,
///     ],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "http://newechoapi.cloudapp.net/api",
///     subscriptionKeyParameterNames: {
///         header: "header4520",
///         query: "query3037",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="tempgroup",
///     authentication_settings={
///         "o_auth2": {
///             "authorization_server_id": "authorizationServerId2283",
///             "scope": "oauth2scope2580",
///         },
///     },
///     description="apidescription5200",
///     display_name="apiname1463",
///     path="newapiPath",
///     protocols=[
///         azure_native.apimanagement.Protocol.HTTPS,
///         azure_native.apimanagement.Protocol.HTTP,
///     ],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="http://newechoapi.cloudapp.net/api",
///     subscription_key_parameter_names={
///         "header": "header4520",
///         "query": "query3037",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: tempgroup
///       authenticationSettings:
///         oAuth2:
///           authorizationServerId: authorizationServerId2283
///           scope: oauth2scope2580
///       description: apidescription5200
///       displayName: apiname1463
///       path: newapiPath
///       protocols:
///         - https
///         - http
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: http://newechoapi.cloudapp.net/api
///       subscriptionKeyParameterNames:
///         header: header4520
///         query: query3037
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiClone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "echo-api2",
///         Description = "Copy of Existing Echo Api including Operations.",
///         DisplayName = "Echo API2",
///         IsCurrent = true,
///         Path = "echo2",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Http,
///             AzureNative.ApiManagement.Protocol.Https,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "http://echoapi.cloudapp.net/api",
///         SourceApiId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/58a4aeac497000007d040001",
///         SubscriptionRequired = true,
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:       pulumi.String("echo-api2"),
/// 			Description: pulumi.String("Copy of Existing Echo Api including Operations."),
/// 			DisplayName: pulumi.String("Echo API2"),
/// 			IsCurrent:   pulumi.Bool(true),
/// 			Path:        pulumi.String("echo2"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolHttp),
/// 				pulumi.String(apimanagement.ProtocolHttps),
/// 			},
/// 			ResourceGroupName:    pulumi.String("rg1"),
/// 			ServiceName:          pulumi.String("apimService1"),
/// 			ServiceUrl:           pulumi.String("http://echoapi.cloudapp.net/api"),
/// 			SourceApiId:          pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/58a4aeac497000007d040001"),
/// 			SubscriptionRequired: pulumi.Bool(true),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id                = "echo-api2"
///   description           = "Copy of Existing Echo Api including Operations."
///   display_name          = "Echo API2"
///   is_current            = true
///   path                  = "echo2"
///   protocols             = ["http", "https"]
///   resource_group_name   = "rg1"
///   service_name          = "apimService1"
///   service_url           = "http://echoapi.cloudapp.net/api"
///   source_api_id         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/58a4aeac497000007d040001"
///   subscription_required = true
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("echo-api2")
///             .description("Copy of Existing Echo Api including Operations.")
///             .displayName("Echo API2")
///             .isCurrent(true)
///             .path("echo2")
///             .protocols(
///                 "http",
///                 "https")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("http://echoapi.cloudapp.net/api")
///             .sourceApiId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/58a4aeac497000007d040001")
///             .subscriptionRequired(true)
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "echo-api2",
///     description: "Copy of Existing Echo Api including Operations.",
///     displayName: "Echo API2",
///     isCurrent: true,
///     path: "echo2",
///     protocols: [
///         azure_native.apimanagement.Protocol.Http,
///         azure_native.apimanagement.Protocol.Https,
///     ],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "http://echoapi.cloudapp.net/api",
///     sourceApiId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/58a4aeac497000007d040001",
///     subscriptionRequired: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="echo-api2",
///     description="Copy of Existing Echo Api including Operations.",
///     display_name="Echo API2",
///     is_current=True,
///     path="echo2",
///     protocols=[
///         azure_native.apimanagement.Protocol.HTTP,
///         azure_native.apimanagement.Protocol.HTTPS,
///     ],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="http://echoapi.cloudapp.net/api",
///     source_api_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/58a4aeac497000007d040001",
///     subscription_required=True)
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: echo-api2
///       description: Copy of Existing Echo Api including Operations.
///       displayName: Echo API2
///       isCurrent: true
///       path: echo2
///       protocols:
///         - http
///         - https
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: http://echoapi.cloudapp.net/api
///       sourceApiId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/58a4aeac497000007d040001
///       subscriptionRequired: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiNewVersionUsingExistingApi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "echoapiv3",
///         ApiVersion = "v4",
///         ApiVersionSetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apiVersionSets/aa9c59e6-c0cd-4258-9356-9ca7d2f0b458",
///         Description = "Create Echo API into a new Version using Existing Version Set and Copy all Operations.",
///         DisplayName = "Echo API2",
///         IsCurrent = true,
///         Path = "echo2",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Http,
///             AzureNative.ApiManagement.Protocol.Https,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "http://echoapi.cloudapp.net/api",
///         SourceApiId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echoPath",
///         SubscriptionRequired = true,
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:           pulumi.String("echoapiv3"),
/// 			ApiVersion:      pulumi.String("v4"),
/// 			ApiVersionSetId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apiVersionSets/aa9c59e6-c0cd-4258-9356-9ca7d2f0b458"),
/// 			Description:     pulumi.String("Create Echo API into a new Version using Existing Version Set and Copy all Operations."),
/// 			DisplayName:     pulumi.String("Echo API2"),
/// 			IsCurrent:       pulumi.Bool(true),
/// 			Path:            pulumi.String("echo2"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolHttp),
/// 				pulumi.String(apimanagement.ProtocolHttps),
/// 			},
/// 			ResourceGroupName:    pulumi.String("rg1"),
/// 			ServiceName:          pulumi.String("apimService1"),
/// 			ServiceUrl:           pulumi.String("http://echoapi.cloudapp.net/api"),
/// 			SourceApiId:          pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echoPath"),
/// 			SubscriptionRequired: pulumi.Bool(true),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id                = "echoapiv3"
///   api_version           = "v4"
///   api_version_set_id    = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apiVersionSets/aa9c59e6-c0cd-4258-9356-9ca7d2f0b458"
///   description           = "Create Echo API into a new Version using Existing Version Set and Copy all Operations."
///   display_name          = "Echo API2"
///   is_current            = true
///   path                  = "echo2"
///   protocols             = ["http", "https"]
///   resource_group_name   = "rg1"
///   service_name          = "apimService1"
///   service_url           = "http://echoapi.cloudapp.net/api"
///   source_api_id         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echoPath"
///   subscription_required = true
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("echoapiv3")
///             .apiVersion("v4")
///             .apiVersionSetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apiVersionSets/aa9c59e6-c0cd-4258-9356-9ca7d2f0b458")
///             .description("Create Echo API into a new Version using Existing Version Set and Copy all Operations.")
///             .displayName("Echo API2")
///             .isCurrent(true)
///             .path("echo2")
///             .protocols(
///                 "http",
///                 "https")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("http://echoapi.cloudapp.net/api")
///             .sourceApiId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echoPath")
///             .subscriptionRequired(true)
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "echoapiv3",
///     apiVersion: "v4",
///     apiVersionSetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apiVersionSets/aa9c59e6-c0cd-4258-9356-9ca7d2f0b458",
///     description: "Create Echo API into a new Version using Existing Version Set and Copy all Operations.",
///     displayName: "Echo API2",
///     isCurrent: true,
///     path: "echo2",
///     protocols: [
///         azure_native.apimanagement.Protocol.Http,
///         azure_native.apimanagement.Protocol.Https,
///     ],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "http://echoapi.cloudapp.net/api",
///     sourceApiId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echoPath",
///     subscriptionRequired: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="echoapiv3",
///     api_version="v4",
///     api_version_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apiVersionSets/aa9c59e6-c0cd-4258-9356-9ca7d2f0b458",
///     description="Create Echo API into a new Version using Existing Version Set and Copy all Operations.",
///     display_name="Echo API2",
///     is_current=True,
///     path="echo2",
///     protocols=[
///         azure_native.apimanagement.Protocol.HTTP,
///         azure_native.apimanagement.Protocol.HTTPS,
///     ],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="http://echoapi.cloudapp.net/api",
///     source_api_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echoPath",
///     subscription_required=True)
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: echoapiv3
///       apiVersion: v4
///       apiVersionSetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apiVersionSets/aa9c59e6-c0cd-4258-9356-9ca7d2f0b458
///       description: Create Echo API into a new Version using Existing Version Set and Copy all Operations.
///       displayName: Echo API2
///       isCurrent: true
///       path: echo2
///       protocols:
///         - http
///         - https
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: http://echoapi.cloudapp.net/api
///       sourceApiId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echoPath
///       subscriptionRequired: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiRevisionFromExistingApi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "echo-api;rev=3",
///         ApiRevisionDescription = "Creating a Revision of an existing API",
///         Path = "echo",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "http://echoapi.cloudapp.net/apiv3",
///         SourceApiId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:                  pulumi.String("echo-api;rev=3"),
/// 			ApiRevisionDescription: pulumi.String("Creating a Revision of an existing API"),
/// 			Path:                   pulumi.String("echo"),
/// 			ResourceGroupName:      pulumi.String("rg1"),
/// 			ServiceName:            pulumi.String("apimService1"),
/// 			ServiceUrl:             pulumi.String("http://echoapi.cloudapp.net/apiv3"),
/// 			SourceApiId:            pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id                   = "echo-api;rev=3"
///   api_revision_description = "Creating a Revision of an existing API"
///   path                     = "echo"
///   resource_group_name      = "rg1"
///   service_name             = "apimService1"
///   service_url              = "http://echoapi.cloudapp.net/apiv3"
///   source_api_id            = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("echo-api;rev=3")
///             .apiRevisionDescription("Creating a Revision of an existing API")
///             .path("echo")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("http://echoapi.cloudapp.net/apiv3")
///             .sourceApiId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "echo-api;rev=3",
///     apiRevisionDescription: "Creating a Revision of an existing API",
///     path: "echo",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "http://echoapi.cloudapp.net/apiv3",
///     sourceApiId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="echo-api;rev=3",
///     api_revision_description="Creating a Revision of an existing API",
///     path="echo",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="http://echoapi.cloudapp.net/apiv3",
///     source_api_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: echo-api;rev=3
///       apiRevisionDescription: Creating a Revision of an existing API
///       path: echo
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: http://echoapi.cloudapp.net/apiv3
///       sourceApiId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiUsingImportOverrideServiceUrl
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "apidocs",
///         Format = "swagger-link",
///         Path = "petstoreapi123",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "http://petstore.swagger.wordnik.com/api",
///         Value = "http://apimpimportviaurl.azurewebsites.net/api/apidocs/",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:             pulumi.String("apidocs"),
/// 			Format:            pulumi.String("swagger-link"),
/// 			Path:              pulumi.String("petstoreapi123"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ServiceUrl:        pulumi.String("http://petstore.swagger.wordnik.com/api"),
/// 			Value:             pulumi.String("http://apimpimportviaurl.azurewebsites.net/api/apidocs/"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "apidocs"
///   format              = "swagger-link"
///   path                = "petstoreapi123"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   service_url         = "http://petstore.swagger.wordnik.com/api"
///   value               = "http://apimpimportviaurl.azurewebsites.net/api/apidocs/"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("apidocs")
///             .format("swagger-link")
///             .path("petstoreapi123")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("http://petstore.swagger.wordnik.com/api")
///             .value("http://apimpimportviaurl.azurewebsites.net/api/apidocs/")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "apidocs",
///     format: "swagger-link",
///     path: "petstoreapi123",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "http://petstore.swagger.wordnik.com/api",
///     value: "http://apimpimportviaurl.azurewebsites.net/api/apidocs/",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="apidocs",
///     format="swagger-link",
///     path="petstoreapi123",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="http://petstore.swagger.wordnik.com/api",
///     value="http://apimpimportviaurl.azurewebsites.net/api/apidocs/")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: apidocs
///       format: swagger-link
///       path: petstoreapi123
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: http://petstore.swagger.wordnik.com/api
///       value: http://apimpimportviaurl.azurewebsites.net/api/apidocs/
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiUsingOai3Import
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "petstore",
///         Format = AzureNative.ApiManagement.ContentFormat.Openapi_link,
///         Path = "petstore",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:             pulumi.String("petstore"),
/// 			Format:            pulumi.String(apimanagement.ContentFormat_Openapi_Link),
/// 			Path:              pulumi.String("petstore"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value:             pulumi.String("https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "petstore"
///   format              = "openapi-link"
///   path                = "petstore"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   value               = "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("petstore")
///             .format("openapi-link")
///             .path("petstore")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "petstore",
///     format: azure_native.apimanagement.ContentFormat.Openapi_link,
///     path: "petstore",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="petstore",
///     format=azure_native.apimanagement.ContentFormat.OPENAPI_LINK,
///     path="petstore",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: petstore
///       format: openapi-link
///       path: petstore
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiUsingOai3ImportWithTranslateRequiredQueryParametersConduct
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "petstore",
///         Format = AzureNative.ApiManagement.ContentFormat.Openapi_link,
///         Path = "petstore",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         TranslateRequiredQueryParametersConduct = AzureNative.ApiManagement.TranslateRequiredQueryParametersConduct.Template,
///         Value = "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:                                   pulumi.String("petstore"),
/// 			Format:                                  pulumi.String(apimanagement.ContentFormat_Openapi_Link),
/// 			Path:                                    pulumi.String("petstore"),
/// 			ResourceGroupName:                       pulumi.String("rg1"),
/// 			ServiceName:                             pulumi.String("apimService1"),
/// 			TranslateRequiredQueryParametersConduct: pulumi.String(apimanagement.TranslateRequiredQueryParametersConductTemplate),
/// 			Value:                                   pulumi.String("https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id                                      = "petstore"
///   format                                      = "openapi-link"
///   path                                        = "petstore"
///   resource_group_name                         = "rg1"
///   service_name                                = "apimService1"
///   translate_required_query_parameters_conduct = "template"
///   value                                       = "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("petstore")
///             .format("openapi-link")
///             .path("petstore")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .translateRequiredQueryParametersConduct("template")
///             .value("https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "petstore",
///     format: azure_native.apimanagement.ContentFormat.Openapi_link,
///     path: "petstore",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     translateRequiredQueryParametersConduct: azure_native.apimanagement.TranslateRequiredQueryParametersConduct.Template,
///     value: "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="petstore",
///     format=azure_native.apimanagement.ContentFormat.OPENAPI_LINK,
///     path="petstore",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     translate_required_query_parameters_conduct=azure_native.apimanagement.TranslateRequiredQueryParametersConduct.TEMPLATE,
///     value="https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: petstore
///       format: openapi-link
///       path: petstore
///       resourceGroupName: rg1
///       serviceName: apimService1
///       translateRequiredQueryParametersConduct: template
///       value: https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v3.0/petstore.yaml
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiUsingSwaggerImport
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "petstore",
///         Format = AzureNative.ApiManagement.ContentFormat.Swagger_link_json,
///         Path = "petstore",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = "http://petstore.swagger.io/v2/swagger.json",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:             pulumi.String("petstore"),
/// 			Format:            pulumi.String(apimanagement.ContentFormat_Swagger_Link_Json),
/// 			Path:              pulumi.String("petstore"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value:             pulumi.String("http://petstore.swagger.io/v2/swagger.json"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "petstore"
///   format              = "swagger-link-json"
///   path                = "petstore"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   value               = "http://petstore.swagger.io/v2/swagger.json"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("petstore")
///             .format("swagger-link-json")
///             .path("petstore")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("http://petstore.swagger.io/v2/swagger.json")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "petstore",
///     format: azure_native.apimanagement.ContentFormat.Swagger_link_json,
///     path: "petstore",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: "http://petstore.swagger.io/v2/swagger.json",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="petstore",
///     format=azure_native.apimanagement.ContentFormat.SWAGGER_LINK_JSON,
///     path="petstore",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="http://petstore.swagger.io/v2/swagger.json")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: petstore
///       format: swagger-link-json
///       path: petstore
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: http://petstore.swagger.io/v2/swagger.json
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiUsingWadlImport
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "petstore",
///         Format = AzureNative.ApiManagement.ContentFormat.Wadl_link_json,
///         Path = "collector",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = "https://developer.cisco.com/media/wae-release-6-2-api-reference/wae-collector-rest-api/application.wadl",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:             pulumi.String("petstore"),
/// 			Format:            pulumi.String(apimanagement.ContentFormat_Wadl_Link_Json),
/// 			Path:              pulumi.String("collector"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value:             pulumi.String("https://developer.cisco.com/media/wae-release-6-2-api-reference/wae-collector-rest-api/application.wadl"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "petstore"
///   format              = "wadl-link-json"
///   path                = "collector"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   value               = "https://developer.cisco.com/media/wae-release-6-2-api-reference/wae-collector-rest-api/application.wadl"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("petstore")
///             .format("wadl-link-json")
///             .path("collector")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("https://developer.cisco.com/media/wae-release-6-2-api-reference/wae-collector-rest-api/application.wadl")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "petstore",
///     format: azure_native.apimanagement.ContentFormat.Wadl_link_json,
///     path: "collector",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: "https://developer.cisco.com/media/wae-release-6-2-api-reference/wae-collector-rest-api/application.wadl",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="petstore",
///     format=azure_native.apimanagement.ContentFormat.WADL_LINK_JSON,
///     path="collector",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="https://developer.cisco.com/media/wae-release-6-2-api-reference/wae-collector-rest-api/application.wadl")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: petstore
///       format: wadl-link-json
///       path: collector
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: https://developer.cisco.com/media/wae-release-6-2-api-reference/wae-collector-rest-api/application.wadl
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiWithMultipleAuthServers
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "tempgroup",
///         AuthenticationSettings = new AzureNative.ApiManagement.Inputs.AuthenticationSettingsContractArgs
///         {
///             OAuth2AuthenticationSettings = new[]
///             {
///                 new AzureNative.ApiManagement.Inputs.OAuth2AuthenticationSettingsContractArgs
///                 {
///                     AuthorizationServerId = "authorizationServerId2283",
///                     Scope = "oauth2scope2580",
///                 },
///                 new AzureNative.ApiManagement.Inputs.OAuth2AuthenticationSettingsContractArgs
///                 {
///                     AuthorizationServerId = "authorizationServerId2284",
///                     Scope = "oauth2scope2581",
///                 },
///             },
///         },
///         Description = "apidescription5200",
///         DisplayName = "apiname1463",
///         Path = "newapiPath",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Https,
///             AzureNative.ApiManagement.Protocol.Http,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "http://newechoapi.cloudapp.net/api",
///         SubscriptionKeyParameterNames = new AzureNative.ApiManagement.Inputs.SubscriptionKeyParameterNamesContractArgs
///         {
///             Header = "header4520",
///             Query = "query3037",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId: pulumi.String("tempgroup"),
/// 			AuthenticationSettings: &apimanagement.AuthenticationSettingsContractArgs{
/// 				OAuth2AuthenticationSettings: apimanagement.OAuth2AuthenticationSettingsContractArray{
/// 					&apimanagement.OAuth2AuthenticationSettingsContractArgs{
/// 						AuthorizationServerId: pulumi.String("authorizationServerId2283"),
/// 						Scope:                 pulumi.String("oauth2scope2580"),
/// 					},
/// 					&apimanagement.OAuth2AuthenticationSettingsContractArgs{
/// 						AuthorizationServerId: pulumi.String("authorizationServerId2284"),
/// 						Scope:                 pulumi.String("oauth2scope2581"),
/// 					},
/// 				},
/// 			},
/// 			Description: pulumi.String("apidescription5200"),
/// 			DisplayName: pulumi.String("apiname1463"),
/// 			Path:        pulumi.String("newapiPath"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolHttps),
/// 				pulumi.String(apimanagement.ProtocolHttp),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ServiceUrl:        pulumi.String("http://newechoapi.cloudapp.net/api"),
/// 			SubscriptionKeyParameterNames: &apimanagement.SubscriptionKeyParameterNamesContractArgs{
/// 				Header: pulumi.String("header4520"),
/// 				Query:  pulumi.String("query3037"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id = "tempgroup"
///   authentication_settings = {
///     o_auth2_authentication_settings = [{
///       "authorizationServerId" = "authorizationServerId2283"
///       "scope"                 = "oauth2scope2580"
///       }, {
///       "authorizationServerId" = "authorizationServerId2284"
///       "scope"                 = "oauth2scope2581"
///     }]
///   }
///   description         = "apidescription5200"
///   display_name        = "apiname1463"
///   path                = "newapiPath"
///   protocols           = ["https", "http"]
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   service_url         = "http://newechoapi.cloudapp.net/api"
///   subscription_key_parameter_names = {
///     header = "header4520"
///     query  = "query3037"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthenticationSettingsContractArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.SubscriptionKeyParameterNamesContractArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("tempgroup")
///             .authenticationSettings(AuthenticationSettingsContractArgs.builder()
///                 .oAuth2AuthenticationSettings(
///                     OAuth2AuthenticationSettingsContractArgs.builder()
///                         .authorizationServerId("authorizationServerId2283")
///                         .scope("oauth2scope2580")
///                         .build(),
///                     OAuth2AuthenticationSettingsContractArgs.builder()
///                         .authorizationServerId("authorizationServerId2284")
///                         .scope("oauth2scope2581")
///                         .build())
///                 .build())
///             .description("apidescription5200")
///             .displayName("apiname1463")
///             .path("newapiPath")
///             .protocols(
///                 "https",
///                 "http")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("http://newechoapi.cloudapp.net/api")
///             .subscriptionKeyParameterNames(SubscriptionKeyParameterNamesContractArgs.builder()
///                 .header("header4520")
///                 .query("query3037")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "tempgroup",
///     authenticationSettings: {
///         oAuth2AuthenticationSettings: [
///             {
///                 authorizationServerId: "authorizationServerId2283",
///                 scope: "oauth2scope2580",
///             },
///             {
///                 authorizationServerId: "authorizationServerId2284",
///                 scope: "oauth2scope2581",
///             },
///         ],
///     },
///     description: "apidescription5200",
///     displayName: "apiname1463",
///     path: "newapiPath",
///     protocols: [
///         azure_native.apimanagement.Protocol.Https,
///         azure_native.apimanagement.Protocol.Http,
///     ],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "http://newechoapi.cloudapp.net/api",
///     subscriptionKeyParameterNames: {
///         header: "header4520",
///         query: "query3037",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="tempgroup",
///     authentication_settings={
///         "o_auth2_authentication_settings": [
///             {
///                 "authorization_server_id": "authorizationServerId2283",
///                 "scope": "oauth2scope2580",
///             },
///             {
///                 "authorization_server_id": "authorizationServerId2284",
///                 "scope": "oauth2scope2581",
///             },
///         ],
///     },
///     description="apidescription5200",
///     display_name="apiname1463",
///     path="newapiPath",
///     protocols=[
///         azure_native.apimanagement.Protocol.HTTPS,
///         azure_native.apimanagement.Protocol.HTTP,
///     ],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="http://newechoapi.cloudapp.net/api",
///     subscription_key_parameter_names={
///         "header": "header4520",
///         "query": "query3037",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: tempgroup
///       authenticationSettings:
///         oAuth2AuthenticationSettings:
///           - authorizationServerId: authorizationServerId2283
///             scope: oauth2scope2580
///           - authorizationServerId: authorizationServerId2284
///             scope: oauth2scope2581
///       description: apidescription5200
///       displayName: apiname1463
///       path: newapiPath
///       protocols:
///         - https
///         - http
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: http://newechoapi.cloudapp.net/api
///       subscriptionKeyParameterNames:
///         header: header4520
///         query: query3037
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiWithMultipleOpenIdConnectProviders
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "tempgroup",
///         AuthenticationSettings = new AzureNative.ApiManagement.Inputs.AuthenticationSettingsContractArgs
///         {
///             OpenidAuthenticationSettings = new[]
///             {
///                 new AzureNative.ApiManagement.Inputs.OpenIdAuthenticationSettingsContractArgs
///                 {
///                     BearerTokenSendingMethods = new[]
///                     {
///                         AzureNative.ApiManagement.BearerTokenSendingMethods.AuthorizationHeader,
///                     },
///                     OpenidProviderId = "openidProviderId2283",
///                 },
///                 new AzureNative.ApiManagement.Inputs.OpenIdAuthenticationSettingsContractArgs
///                 {
///                     BearerTokenSendingMethods = new[]
///                     {
///                         AzureNative.ApiManagement.BearerTokenSendingMethods.AuthorizationHeader,
///                     },
///                     OpenidProviderId = "openidProviderId2284",
///                 },
///             },
///         },
///         Description = "apidescription5200",
///         DisplayName = "apiname1463",
///         Path = "newapiPath",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Https,
///             AzureNative.ApiManagement.Protocol.Http,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "http://newechoapi.cloudapp.net/api",
///         SubscriptionKeyParameterNames = new AzureNative.ApiManagement.Inputs.SubscriptionKeyParameterNamesContractArgs
///         {
///             Header = "header4520",
///             Query = "query3037",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId: pulumi.String("tempgroup"),
/// 			AuthenticationSettings: &apimanagement.AuthenticationSettingsContractArgs{
/// 				OpenidAuthenticationSettings: apimanagement.OpenIdAuthenticationSettingsContractArray{
/// 					&apimanagement.OpenIdAuthenticationSettingsContractArgs{
/// 						BearerTokenSendingMethods: pulumi.StringArray{
/// 							pulumi.String(apimanagement.BearerTokenSendingMethodsAuthorizationHeader),
/// 						},
/// 						OpenidProviderId: pulumi.String("openidProviderId2283"),
/// 					},
/// 					&apimanagement.OpenIdAuthenticationSettingsContractArgs{
/// 						BearerTokenSendingMethods: pulumi.StringArray{
/// 							pulumi.String(apimanagement.BearerTokenSendingMethodsAuthorizationHeader),
/// 						},
/// 						OpenidProviderId: pulumi.String("openidProviderId2284"),
/// 					},
/// 				},
/// 			},
/// 			Description: pulumi.String("apidescription5200"),
/// 			DisplayName: pulumi.String("apiname1463"),
/// 			Path:        pulumi.String("newapiPath"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolHttps),
/// 				pulumi.String(apimanagement.ProtocolHttp),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ServiceUrl:        pulumi.String("http://newechoapi.cloudapp.net/api"),
/// 			SubscriptionKeyParameterNames: &apimanagement.SubscriptionKeyParameterNamesContractArgs{
/// 				Header: pulumi.String("header4520"),
/// 				Query:  pulumi.String("query3037"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id = "tempgroup"
///   authentication_settings = {
///     openid_authentication_settings = [{
///       "bearerTokenSendingMethods" = ["authorizationHeader"]
///       "openidProviderId"          = "openidProviderId2283"
///       }, {
///       "bearerTokenSendingMethods" = ["authorizationHeader"]
///       "openidProviderId"          = "openidProviderId2284"
///     }]
///   }
///   description         = "apidescription5200"
///   display_name        = "apiname1463"
///   path                = "newapiPath"
///   protocols           = ["https", "http"]
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   service_url         = "http://newechoapi.cloudapp.net/api"
///   subscription_key_parameter_names = {
///     header = "header4520"
///     query  = "query3037"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthenticationSettingsContractArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.SubscriptionKeyParameterNamesContractArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("tempgroup")
///             .authenticationSettings(AuthenticationSettingsContractArgs.builder()
///                 .openidAuthenticationSettings(
///                     OpenIdAuthenticationSettingsContractArgs.builder()
///                         .bearerTokenSendingMethods("authorizationHeader")
///                         .openidProviderId("openidProviderId2283")
///                         .build(),
///                     OpenIdAuthenticationSettingsContractArgs.builder()
///                         .bearerTokenSendingMethods("authorizationHeader")
///                         .openidProviderId("openidProviderId2284")
///                         .build())
///                 .build())
///             .description("apidescription5200")
///             .displayName("apiname1463")
///             .path("newapiPath")
///             .protocols(
///                 "https",
///                 "http")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("http://newechoapi.cloudapp.net/api")
///             .subscriptionKeyParameterNames(SubscriptionKeyParameterNamesContractArgs.builder()
///                 .header("header4520")
///                 .query("query3037")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "tempgroup",
///     authenticationSettings: {
///         openidAuthenticationSettings: [
///             {
///                 bearerTokenSendingMethods: [azure_native.apimanagement.BearerTokenSendingMethods.AuthorizationHeader],
///                 openidProviderId: "openidProviderId2283",
///             },
///             {
///                 bearerTokenSendingMethods: [azure_native.apimanagement.BearerTokenSendingMethods.AuthorizationHeader],
///                 openidProviderId: "openidProviderId2284",
///             },
///         ],
///     },
///     description: "apidescription5200",
///     displayName: "apiname1463",
///     path: "newapiPath",
///     protocols: [
///         azure_native.apimanagement.Protocol.Https,
///         azure_native.apimanagement.Protocol.Http,
///     ],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "http://newechoapi.cloudapp.net/api",
///     subscriptionKeyParameterNames: {
///         header: "header4520",
///         query: "query3037",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="tempgroup",
///     authentication_settings={
///         "openid_authentication_settings": [
///             {
///                 "bearer_token_sending_methods": [azure_native.apimanagement.BearerTokenSendingMethods.AUTHORIZATION_HEADER],
///                 "openid_provider_id": "openidProviderId2283",
///             },
///             {
///                 "bearer_token_sending_methods": [azure_native.apimanagement.BearerTokenSendingMethods.AUTHORIZATION_HEADER],
///                 "openid_provider_id": "openidProviderId2284",
///             },
///         ],
///     },
///     description="apidescription5200",
///     display_name="apiname1463",
///     path="newapiPath",
///     protocols=[
///         azure_native.apimanagement.Protocol.HTTPS,
///         azure_native.apimanagement.Protocol.HTTP,
///     ],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="http://newechoapi.cloudapp.net/api",
///     subscription_key_parameter_names={
///         "header": "header4520",
///         "query": "query3037",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: tempgroup
///       authenticationSettings:
///         openidAuthenticationSettings:
///           - bearerTokenSendingMethods:
///               - authorizationHeader
///             openidProviderId: openidProviderId2283
///           - bearerTokenSendingMethods:
///               - authorizationHeader
///             openidProviderId: openidProviderId2284
///       description: apidescription5200
///       displayName: apiname1463
///       path: newapiPath
///       protocols:
///         - https
///         - http
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: http://newechoapi.cloudapp.net/api
///       subscriptionKeyParameterNames:
///         header: header4520
///         query: query3037
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateApiWithOpenIdConnect
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "tempgroup",
///         AuthenticationSettings = new AzureNative.ApiManagement.Inputs.AuthenticationSettingsContractArgs
///         {
///             Openid = new AzureNative.ApiManagement.Inputs.OpenIdAuthenticationSettingsContractArgs
///             {
///                 BearerTokenSendingMethods = new[]
///                 {
///                     AzureNative.ApiManagement.BearerTokenSendingMethods.AuthorizationHeader,
///                 },
///                 OpenidProviderId = "testopenid",
///             },
///         },
///         Description = "This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.",
///         DisplayName = "Swagger Petstore",
///         Path = "petstore",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Https,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "http://petstore.swagger.io/v2",
///         SubscriptionKeyParameterNames = new AzureNative.ApiManagement.Inputs.SubscriptionKeyParameterNamesContractArgs
///         {
///             Header = "Ocp-Apim-Subscription-Key",
///             Query = "subscription-key",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId: pulumi.String("tempgroup"),
/// 			AuthenticationSettings: &apimanagement.AuthenticationSettingsContractArgs{
/// 				Openid: &apimanagement.OpenIdAuthenticationSettingsContractArgs{
/// 					BearerTokenSendingMethods: pulumi.StringArray{
/// 						pulumi.String(apimanagement.BearerTokenSendingMethodsAuthorizationHeader),
/// 					},
/// 					OpenidProviderId: pulumi.String("testopenid"),
/// 				},
/// 			},
/// 			Description: pulumi.String("This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters."),
/// 			DisplayName: pulumi.String("Swagger Petstore"),
/// 			Path:        pulumi.String("petstore"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolHttps),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ServiceUrl:        pulumi.String("http://petstore.swagger.io/v2"),
/// 			SubscriptionKeyParameterNames: &apimanagement.SubscriptionKeyParameterNamesContractArgs{
/// 				Header: pulumi.String("Ocp-Apim-Subscription-Key"),
/// 				Query:  pulumi.String("subscription-key"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id = "tempgroup"
///   authentication_settings = {
///     openid = {
///       bearer_token_sending_methods = ["authorizationHeader"]
///       openid_provider_id           = "testopenid"
///     }
///   }
///   description         = "This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters."
///   display_name        = "Swagger Petstore"
///   path                = "petstore"
///   protocols           = ["https"]
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   service_url         = "http://petstore.swagger.io/v2"
///   subscription_key_parameter_names = {
///     header = "Ocp-Apim-Subscription-Key"
///     query  = "subscription-key"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthenticationSettingsContractArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.OpenIdAuthenticationSettingsContractArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.SubscriptionKeyParameterNamesContractArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("tempgroup")
///             .authenticationSettings(AuthenticationSettingsContractArgs.builder()
///                 .openid(OpenIdAuthenticationSettingsContractArgs.builder()
///                     .bearerTokenSendingMethods("authorizationHeader")
///                     .openidProviderId("testopenid")
///                     .build())
///                 .build())
///             .description("This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.")
///             .displayName("Swagger Petstore")
///             .path("petstore")
///             .protocols("https")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("http://petstore.swagger.io/v2")
///             .subscriptionKeyParameterNames(SubscriptionKeyParameterNamesContractArgs.builder()
///                 .header("Ocp-Apim-Subscription-Key")
///                 .query("subscription-key")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "tempgroup",
///     authenticationSettings: {
///         openid: {
///             bearerTokenSendingMethods: [azure_native.apimanagement.BearerTokenSendingMethods.AuthorizationHeader],
///             openidProviderId: "testopenid",
///         },
///     },
///     description: "This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.",
///     displayName: "Swagger Petstore",
///     path: "petstore",
///     protocols: [azure_native.apimanagement.Protocol.Https],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "http://petstore.swagger.io/v2",
///     subscriptionKeyParameterNames: {
///         header: "Ocp-Apim-Subscription-Key",
///         query: "subscription-key",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="tempgroup",
///     authentication_settings={
///         "openid": {
///             "bearer_token_sending_methods": [azure_native.apimanagement.BearerTokenSendingMethods.AUTHORIZATION_HEADER],
///             "openid_provider_id": "testopenid",
///         },
///     },
///     description="This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.",
///     display_name="Swagger Petstore",
///     path="petstore",
///     protocols=[azure_native.apimanagement.Protocol.HTTPS],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="http://petstore.swagger.io/v2",
///     subscription_key_parameter_names={
///         "header": "Ocp-Apim-Subscription-Key",
///         "query": "subscription-key",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: tempgroup
///       authenticationSettings:
///         openid:
///           bearerTokenSendingMethods:
///             - authorizationHeader
///           openidProviderId: testopenid
///       description: 'This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.'
///       displayName: Swagger Petstore
///       path: petstore
///       protocols:
///         - https
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: http://petstore.swagger.io/v2
///       subscriptionKeyParameterNames:
///         header: Ocp-Apim-Subscription-Key
///         query: subscription-key
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateGraphQLApi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "tempgroup",
///         ApiType = AzureNative.ApiManagement.ApiType.Graphql,
///         Description = "apidescription5200",
///         DisplayName = "apiname1463",
///         Path = "graphql-api",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Http,
///             AzureNative.ApiManagement.Protocol.Https,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "https://api.spacex.land/graphql",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:       pulumi.String("tempgroup"),
/// 			ApiType:     pulumi.String(apimanagement.ApiTypeGraphql),
/// 			Description: pulumi.String("apidescription5200"),
/// 			DisplayName: pulumi.String("apiname1463"),
/// 			Path:        pulumi.String("graphql-api"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolHttp),
/// 				pulumi.String(apimanagement.ProtocolHttps),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ServiceUrl:        pulumi.String("https://api.spacex.land/graphql"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "tempgroup"
///   api_type            = "graphql"
///   description         = "apidescription5200"
///   display_name        = "apiname1463"
///   path                = "graphql-api"
///   protocols           = ["http", "https"]
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   service_url         = "https://api.spacex.land/graphql"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("tempgroup")
///             .apiType("graphql")
///             .description("apidescription5200")
///             .displayName("apiname1463")
///             .path("graphql-api")
///             .protocols(
///                 "http",
///                 "https")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("https://api.spacex.land/graphql")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "tempgroup",
///     apiType: azure_native.apimanagement.ApiType.Graphql,
///     description: "apidescription5200",
///     displayName: "apiname1463",
///     path: "graphql-api",
///     protocols: [
///         azure_native.apimanagement.Protocol.Http,
///         azure_native.apimanagement.Protocol.Https,
///     ],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "https://api.spacex.land/graphql",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="tempgroup",
///     api_type=azure_native.apimanagement.ApiType.GRAPHQL,
///     description="apidescription5200",
///     display_name="apiname1463",
///     path="graphql-api",
///     protocols=[
///         azure_native.apimanagement.Protocol.HTTP,
///         azure_native.apimanagement.Protocol.HTTPS,
///     ],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="https://api.spacex.land/graphql")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: tempgroup
///       apiType: graphql
///       description: apidescription5200
///       displayName: apiname1463
///       path: graphql-api
///       protocols:
///         - http
///         - https
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: https://api.spacex.land/graphql
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateGrpcApi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "tempgroup",
///         ApiType = AzureNative.ApiManagement.ApiType.Grpc,
///         Description = "apidescription5200",
///         DisplayName = "apiname1463",
///         Format = AzureNative.ApiManagement.ContentFormat.Grpc_link,
///         Path = "grpc-api",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Https,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "https://your-api-hostname/samples",
///         Value = "https://raw.githubusercontent.com/kedacore/keda/main/pkg/scalers/externalscaler/externalscaler.proto",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:       pulumi.String("tempgroup"),
/// 			ApiType:     pulumi.String(apimanagement.ApiTypeGrpc),
/// 			Description: pulumi.String("apidescription5200"),
/// 			DisplayName: pulumi.String("apiname1463"),
/// 			Format:      pulumi.String(apimanagement.ContentFormat_Grpc_Link),
/// 			Path:        pulumi.String("grpc-api"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolHttps),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ServiceUrl:        pulumi.String("https://your-api-hostname/samples"),
/// 			Value:             pulumi.String("https://raw.githubusercontent.com/kedacore/keda/main/pkg/scalers/externalscaler/externalscaler.proto"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "tempgroup"
///   api_type            = "grpc"
///   description         = "apidescription5200"
///   display_name        = "apiname1463"
///   format              = "grpc-link"
///   path                = "grpc-api"
///   protocols           = ["https"]
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   service_url         = "https://your-api-hostname/samples"
///   value               = "https://raw.githubusercontent.com/kedacore/keda/main/pkg/scalers/externalscaler/externalscaler.proto"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("tempgroup")
///             .apiType("grpc")
///             .description("apidescription5200")
///             .displayName("apiname1463")
///             .format("grpc-link")
///             .path("grpc-api")
///             .protocols("https")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("https://your-api-hostname/samples")
///             .value("https://raw.githubusercontent.com/kedacore/keda/main/pkg/scalers/externalscaler/externalscaler.proto")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "tempgroup",
///     apiType: azure_native.apimanagement.ApiType.Grpc,
///     description: "apidescription5200",
///     displayName: "apiname1463",
///     format: azure_native.apimanagement.ContentFormat.Grpc_link,
///     path: "grpc-api",
///     protocols: [azure_native.apimanagement.Protocol.Https],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "https://your-api-hostname/samples",
///     value: "https://raw.githubusercontent.com/kedacore/keda/main/pkg/scalers/externalscaler/externalscaler.proto",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="tempgroup",
///     api_type=azure_native.apimanagement.ApiType.GRPC,
///     description="apidescription5200",
///     display_name="apiname1463",
///     format=azure_native.apimanagement.ContentFormat.GRPC_LINK,
///     path="grpc-api",
///     protocols=[azure_native.apimanagement.Protocol.HTTPS],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="https://your-api-hostname/samples",
///     value="https://raw.githubusercontent.com/kedacore/keda/main/pkg/scalers/externalscaler/externalscaler.proto")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: tempgroup
///       apiType: grpc
///       description: apidescription5200
///       displayName: apiname1463
///       format: grpc-link
///       path: grpc-api
///       protocols:
///         - https
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: https://your-api-hostname/samples
///       value: https://raw.githubusercontent.com/kedacore/keda/main/pkg/scalers/externalscaler/externalscaler.proto
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateODataApi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "tempgroup",
///         ApiType = AzureNative.ApiManagement.ApiType.Odata,
///         Description = "apidescription5200",
///         DisplayName = "apiname1463",
///         Format = AzureNative.ApiManagement.ContentFormat.Odata_link,
///         Path = "odata-api",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Http,
///             AzureNative.ApiManagement.Protocol.Https,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "https://services.odata.org/TripPinWebApiService",
///         Value = "https://services.odata.org/TripPinWebApiService/$metadata",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:       pulumi.String("tempgroup"),
/// 			ApiType:     pulumi.String(apimanagement.ApiTypeOdata),
/// 			Description: pulumi.String("apidescription5200"),
/// 			DisplayName: pulumi.String("apiname1463"),
/// 			Format:      pulumi.String(apimanagement.ContentFormat_Odata_Link),
/// 			Path:        pulumi.String("odata-api"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolHttp),
/// 				pulumi.String(apimanagement.ProtocolHttps),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ServiceUrl:        pulumi.String("https://services.odata.org/TripPinWebApiService"),
/// 			Value:             pulumi.String("https://services.odata.org/TripPinWebApiService/$metadata"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "tempgroup"
///   api_type            = "odata"
///   description         = "apidescription5200"
///   display_name        = "apiname1463"
///   format              = "odata-link"
///   path                = "odata-api"
///   protocols           = ["http", "https"]
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   service_url         = "https://services.odata.org/TripPinWebApiService"
///   value               = "https://services.odata.org/TripPinWebApiService/$metadata"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("tempgroup")
///             .apiType("odata")
///             .description("apidescription5200")
///             .displayName("apiname1463")
///             .format("odata-link")
///             .path("odata-api")
///             .protocols(
///                 "http",
///                 "https")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("https://services.odata.org/TripPinWebApiService")
///             .value("https://services.odata.org/TripPinWebApiService/$metadata")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "tempgroup",
///     apiType: azure_native.apimanagement.ApiType.Odata,
///     description: "apidescription5200",
///     displayName: "apiname1463",
///     format: azure_native.apimanagement.ContentFormat.Odata_link,
///     path: "odata-api",
///     protocols: [
///         azure_native.apimanagement.Protocol.Http,
///         azure_native.apimanagement.Protocol.Https,
///     ],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "https://services.odata.org/TripPinWebApiService",
///     value: "https://services.odata.org/TripPinWebApiService/$metadata",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="tempgroup",
///     api_type=azure_native.apimanagement.ApiType.ODATA,
///     description="apidescription5200",
///     display_name="apiname1463",
///     format=azure_native.apimanagement.ContentFormat.ODATA_LINK,
///     path="odata-api",
///     protocols=[
///         azure_native.apimanagement.Protocol.HTTP,
///         azure_native.apimanagement.Protocol.HTTPS,
///     ],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="https://services.odata.org/TripPinWebApiService",
///     value="https://services.odata.org/TripPinWebApiService/$metadata")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: tempgroup
///       apiType: odata
///       description: apidescription5200
///       displayName: apiname1463
///       format: odata-link
///       path: odata-api
///       protocols:
///         - http
///         - https
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: https://services.odata.org/TripPinWebApiService
///       value: https://services.odata.org/TripPinWebApiService/$metadata
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateSoapPassThroughApiUsingWsdlImport
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "soapApi",
///         Format = AzureNative.ApiManagement.ContentFormat.Wsdl_link,
///         Path = "currency",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         SoapApiType = AzureNative.ApiManagement.SoapApiType.SoapPassThrough,
///         Value = "http://www.webservicex.net/CurrencyConvertor.asmx?WSDL",
///         WsdlSelector = new AzureNative.ApiManagement.Inputs.ApiCreateOrUpdatePropertiesWsdlSelectorArgs
///         {
///             WsdlEndpointName = "CurrencyConvertorSoap",
///             WsdlServiceName = "CurrencyConvertor",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:             pulumi.String("soapApi"),
/// 			Format:            pulumi.String(apimanagement.ContentFormat_Wsdl_Link),
/// 			Path:              pulumi.String("currency"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			SoapApiType:       pulumi.String(apimanagement.SoapApiTypeSoapPassThrough),
/// 			Value:             pulumi.String("http://www.webservicex.net/CurrencyConvertor.asmx?WSDL"),
/// 			WsdlSelector: &apimanagement.ApiCreateOrUpdatePropertiesWsdlSelectorArgs{
/// 				WsdlEndpointName: pulumi.String("CurrencyConvertorSoap"),
/// 				WsdlServiceName:  pulumi.String("CurrencyConvertor"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "soapApi"
///   format              = "wsdl-link"
///   path                = "currency"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   soap_api_type       = "soap"
///   value               = "http://www.webservicex.net/CurrencyConvertor.asmx?WSDL"
///   wsdl_selector = {
///     wsdl_endpoint_name = "CurrencyConvertorSoap"
///     wsdl_service_name  = "CurrencyConvertor"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiCreateOrUpdatePropertiesWsdlSelectorArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("soapApi")
///             .format("wsdl-link")
///             .path("currency")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .soapApiType("soap")
///             .value("http://www.webservicex.net/CurrencyConvertor.asmx?WSDL")
///             .wsdlSelector(ApiCreateOrUpdatePropertiesWsdlSelectorArgs.builder()
///                 .wsdlEndpointName("CurrencyConvertorSoap")
///                 .wsdlServiceName("CurrencyConvertor")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "soapApi",
///     format: azure_native.apimanagement.ContentFormat.Wsdl_link,
///     path: "currency",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     soapApiType: azure_native.apimanagement.SoapApiType.SoapPassThrough,
///     value: "http://www.webservicex.net/CurrencyConvertor.asmx?WSDL",
///     wsdlSelector: {
///         wsdlEndpointName: "CurrencyConvertorSoap",
///         wsdlServiceName: "CurrencyConvertor",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="soapApi",
///     format=azure_native.apimanagement.ContentFormat.WSDL_LINK,
///     path="currency",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     soap_api_type=azure_native.apimanagement.SoapApiType.SOAP_PASS_THROUGH,
///     value="http://www.webservicex.net/CurrencyConvertor.asmx?WSDL",
///     wsdl_selector={
///         "wsdl_endpoint_name": "CurrencyConvertorSoap",
///         "wsdl_service_name": "CurrencyConvertor",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: soapApi
///       format: wsdl-link
///       path: currency
///       resourceGroupName: rg1
///       serviceName: apimService1
///       soapApiType: soap
///       value: http://www.webservicex.net/CurrencyConvertor.asmx?WSDL
///       wsdlSelector:
///         wsdlEndpointName: CurrencyConvertorSoap
///         wsdlServiceName: CurrencyConvertor
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateSoapToRestApiUsingWsdlImport
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "soapApi",
///         Format = AzureNative.ApiManagement.ContentFormat.Wsdl_link,
///         Path = "currency",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = "http://www.webservicex.net/CurrencyConvertor.asmx?WSDL",
///         WsdlSelector = new AzureNative.ApiManagement.Inputs.ApiCreateOrUpdatePropertiesWsdlSelectorArgs
///         {
///             WsdlEndpointName = "CurrencyConvertorSoap",
///             WsdlServiceName = "CurrencyConvertor",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:             pulumi.String("soapApi"),
/// 			Format:            pulumi.String(apimanagement.ContentFormat_Wsdl_Link),
/// 			Path:              pulumi.String("currency"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value:             pulumi.String("http://www.webservicex.net/CurrencyConvertor.asmx?WSDL"),
/// 			WsdlSelector: &apimanagement.ApiCreateOrUpdatePropertiesWsdlSelectorArgs{
/// 				WsdlEndpointName: pulumi.String("CurrencyConvertorSoap"),
/// 				WsdlServiceName:  pulumi.String("CurrencyConvertor"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "soapApi"
///   format              = "wsdl-link"
///   path                = "currency"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   value               = "http://www.webservicex.net/CurrencyConvertor.asmx?WSDL"
///   wsdl_selector = {
///     wsdl_endpoint_name = "CurrencyConvertorSoap"
///     wsdl_service_name  = "CurrencyConvertor"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiCreateOrUpdatePropertiesWsdlSelectorArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("soapApi")
///             .format("wsdl-link")
///             .path("currency")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("http://www.webservicex.net/CurrencyConvertor.asmx?WSDL")
///             .wsdlSelector(ApiCreateOrUpdatePropertiesWsdlSelectorArgs.builder()
///                 .wsdlEndpointName("CurrencyConvertorSoap")
///                 .wsdlServiceName("CurrencyConvertor")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "soapApi",
///     format: azure_native.apimanagement.ContentFormat.Wsdl_link,
///     path: "currency",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: "http://www.webservicex.net/CurrencyConvertor.asmx?WSDL",
///     wsdlSelector: {
///         wsdlEndpointName: "CurrencyConvertorSoap",
///         wsdlServiceName: "CurrencyConvertor",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="soapApi",
///     format=azure_native.apimanagement.ContentFormat.WSDL_LINK,
///     path="currency",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="http://www.webservicex.net/CurrencyConvertor.asmx?WSDL",
///     wsdl_selector={
///         "wsdl_endpoint_name": "CurrencyConvertorSoap",
///         "wsdl_service_name": "CurrencyConvertor",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: soapApi
///       format: wsdl-link
///       path: currency
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: http://www.webservicex.net/CurrencyConvertor.asmx?WSDL
///       wsdlSelector:
///         wsdlEndpointName: CurrencyConvertorSoap
///         wsdlServiceName: CurrencyConvertor
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateWebSocketApi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiManagement.Api("api", new()
///     {
///         ApiId = "tempgroup",
///         ApiType = AzureNative.ApiManagement.ApiType.Websocket,
///         Description = "apidescription5200",
///         DisplayName = "apiname1463",
///         Path = "newapiPath",
///         Protocols = new[]
///         {
///             AzureNative.ApiManagement.Protocol.Wss,
///             AzureNative.ApiManagement.Protocol.Ws,
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ServiceUrl = "wss://echo.websocket.org",
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
/// 		_, err := apimanagement.NewApi(ctx, "api", &apimanagement.ApiArgs{
/// 			ApiId:       pulumi.String("tempgroup"),
/// 			ApiType:     pulumi.String(apimanagement.ApiTypeWebsocket),
/// 			Description: pulumi.String("apidescription5200"),
/// 			DisplayName: pulumi.String("apiname1463"),
/// 			Path:        pulumi.String("newapiPath"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(apimanagement.ProtocolWss),
/// 				pulumi.String(apimanagement.ProtocolWs),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ServiceUrl:        pulumi.String("wss://echo.websocket.org"),
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
/// resource "azure-native_apimanagement_api" "api" {
///   api_id              = "tempgroup"
///   api_type            = "websocket"
///   description         = "apidescription5200"
///   display_name        = "apiname1463"
///   path                = "newapiPath"
///   protocols           = ["wss", "ws"]
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   service_url         = "wss://echo.websocket.org"
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
/// import com.pulumi.azurenative.apimanagement.Api;
/// import com.pulumi.azurenative.apimanagement.ApiArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiId("tempgroup")
///             .apiType("websocket")
///             .description("apidescription5200")
///             .displayName("apiname1463")
///             .path("newapiPath")
///             .protocols(
///                 "wss",
///                 "ws")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .serviceUrl("wss://echo.websocket.org")
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
/// const api = new azure_native.apimanagement.Api("api", {
///     apiId: "tempgroup",
///     apiType: azure_native.apimanagement.ApiType.Websocket,
///     description: "apidescription5200",
///     displayName: "apiname1463",
///     path: "newapiPath",
///     protocols: [
///         azure_native.apimanagement.Protocol.Wss,
///         azure_native.apimanagement.Protocol.Ws,
///     ],
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     serviceUrl: "wss://echo.websocket.org",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apimanagement.Api("api",
///     api_id="tempgroup",
///     api_type=azure_native.apimanagement.ApiType.WEBSOCKET,
///     description="apidescription5200",
///     display_name="apiname1463",
///     path="newapiPath",
///     protocols=[
///         azure_native.apimanagement.Protocol.WSS,
///         azure_native.apimanagement.Protocol.WS,
///     ],
///     resource_group_name="rg1",
///     service_name="apimService1",
///     service_url="wss://echo.websocket.org")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apimanagement:Api
///     properties:
///       apiId: tempgroup
///       apiType: websocket
///       description: apidescription5200
///       displayName: apiname1463
///       path: newapiPath
///       protocols:
///         - wss
///         - ws
///       resourceGroupName: rg1
///       serviceName: apimService1
///       serviceUrl: wss://echo.websocket.org
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
/// $ pulumi import azure-native:apimanagement:Api apiid9419 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}
/// ```
class Api extends pulumi.CustomResource {
  /// Describes the revision of the API. If no value is provided, default revision 1 is created
  late final pulumi.Output<String?> apiRevision;
  /// Description of the API Revision.
  late final pulumi.Output<String?> apiRevisionDescription;
  /// Type of API.
  late final pulumi.Output<String?> apiType;
  /// Indicates the version identifier of the API if the API is versioned
  late final pulumi.Output<String?> apiVersion;
  /// Description of the API Version.
  late final pulumi.Output<String?> apiVersionDescription;
  /// Version set details
  late final pulumi.Output<ApiVersionSetContractDetailsResponse?> apiVersionSet;
  /// A resource identifier for the related ApiVersionSet.
  late final pulumi.Output<String?> apiVersionSetId;
  /// Collection of authentication settings included into this API.
  late final pulumi.Output<AuthenticationSettingsContractResponse?> authenticationSettings;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Contact information for the API.
  late final pulumi.Output<ApiContactInformationResponse?> contact;
  /// Description of the API. May include HTML formatting tags.
  late final pulumi.Output<String?> description;
  /// API name. Must be 1 to 300 characters long.
  late final pulumi.Output<String?> displayName;
  /// Indicates if API revision is current api revision.
  late final pulumi.Output<bool?> isCurrent;
  /// Indicates if API revision is accessible via the gateway.
  late final pulumi.Output<bool> isOnline;
  /// License information for the API.
  late final pulumi.Output<ApiLicenseInformationResponse?> license;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Relative URL uniquely identifying this API and all of its resource paths within the API Management service instance. It is appended to the API endpoint base URL specified during the service instance creation to form a public URL for this API.
  late final pulumi.Output<String> path;
  /// Describes on which protocols the operations in this API can be invoked.
  late final pulumi.Output<List<String>?> protocols;
  /// The provisioning state
  late final pulumi.Output<String> provisioningState;
  /// Absolute URL of the backend service implementing this API. Cannot be more than 2000 characters long.
  late final pulumi.Output<String?> serviceUrl;
  /// API identifier of the source API.
  late final pulumi.Output<String?> sourceApiId;
  /// Protocols over which API is made available.
  late final pulumi.Output<SubscriptionKeyParameterNamesContractResponse?> subscriptionKeyParameterNames;
  /// Specifies whether an API or Product subscription is required for accessing the API.
  late final pulumi.Output<bool?> subscriptionRequired;
  /// A URL to the Terms of Service for the API. MUST be in the format of a URL.
  late final pulumi.Output<String?> termsOfServiceUrl;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_apimanagement_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(
    String name, {
    ApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Api',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiRevision = registerOutput<String?>('apiRevision');
    apiRevisionDescription = registerOutput<String?>('apiRevisionDescription');
    apiType = registerOutput<String?>('apiType');
    apiVersion = registerOutput<String?>('apiVersion');
    apiVersionDescription = registerOutput<String?>('apiVersionDescription');
    apiVersionSet = registerOutput<ApiVersionSetContractDetailsResponse?>('apiVersionSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiVersionSetContractDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiVersionSetId = registerOutput<String?>('apiVersionSetId');
    authenticationSettings = registerOutput<AuthenticationSettingsContractResponse?>('authenticationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthenticationSettingsContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contact = registerOutput<ApiContactInformationResponse?>('contact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiContactInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    isCurrent = registerOutput<bool?>('isCurrent');
    isOnline = registerOutput<bool>('isOnline');
    license = registerOutput<ApiLicenseInformationResponse?>('license', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiLicenseInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    protocols = registerOutput<List<String>?>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisioningState = registerOutput<String>('provisioningState');
    serviceUrl = registerOutput<String?>('serviceUrl');
    sourceApiId = registerOutput<String?>('sourceApiId');
    subscriptionKeyParameterNames = registerOutput<SubscriptionKeyParameterNamesContractResponse?>('subscriptionKeyParameterNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionKeyParameterNamesContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subscriptionRequired = registerOutput<bool?>('subscriptionRequired');
    termsOfServiceUrl = registerOutput<String?>('termsOfServiceUrl');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Api] resource.
  Api.reference(String urn)
    : super(
        'azure-native:apimanagement:Api',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiRevision = registerOutput<String?>('apiRevision');
    apiRevisionDescription = registerOutput<String?>('apiRevisionDescription');
    apiType = registerOutput<String?>('apiType');
    apiVersion = registerOutput<String?>('apiVersion');
    apiVersionDescription = registerOutput<String?>('apiVersionDescription');
    apiVersionSet = registerOutput<ApiVersionSetContractDetailsResponse?>('apiVersionSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiVersionSetContractDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiVersionSetId = registerOutput<String?>('apiVersionSetId');
    authenticationSettings = registerOutput<AuthenticationSettingsContractResponse?>('authenticationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthenticationSettingsContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contact = registerOutput<ApiContactInformationResponse?>('contact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiContactInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    isCurrent = registerOutput<bool?>('isCurrent');
    isOnline = registerOutput<bool>('isOnline');
    license = registerOutput<ApiLicenseInformationResponse?>('license', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiLicenseInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    protocols = registerOutput<List<String>?>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisioningState = registerOutput<String>('provisioningState');
    serviceUrl = registerOutput<String?>('serviceUrl');
    sourceApiId = registerOutput<String?>('sourceApiId');
    subscriptionKeyParameterNames = registerOutput<SubscriptionKeyParameterNamesContractResponse?>('subscriptionKeyParameterNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionKeyParameterNamesContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subscriptionRequired = registerOutput<bool?>('subscriptionRequired');
    termsOfServiceUrl = registerOutput<String?>('termsOfServiceUrl');
    type = registerOutput<String>('type');
  }
}
