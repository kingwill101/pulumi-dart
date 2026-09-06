import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_provider_args.dart';
import 'authorization_provider_oauth2_settings_response.dart';

/// Authorization Provider contract.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateAuthorizationProviderAADAuthCode
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authorizationProvider = new AzureNative.ApiManagement.AuthorizationProvider("authorizationProvider", new()
///     {
///         AuthorizationProviderId = "aadwithauthcode",
///         DisplayName = "aadwithauthcode",
///         IdentityProvider = "aad",
///         Oauth2 = new AzureNative.ApiManagement.Inputs.AuthorizationProviderOAuth2SettingsArgs
///         {
///             GrantTypes = new AzureNative.ApiManagement.Inputs.AuthorizationProviderOAuth2GrantTypesArgs
///             {
///                 AuthorizationCode =
///                 {
///                     { "clientId", "clientsecretid" },
///                     { "clientSecret", "clientsecretvalue" },
///                     { "resourceUri", "https://graph.microsoft.com" },
///                     { "scopes", "User.Read.All Group.Read.All" },
///                 },
///             },
///             RedirectUrl = "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 		_, err := apimanagement.NewAuthorizationProvider(ctx, "authorizationProvider", &apimanagement.AuthorizationProviderArgs{
/// 			AuthorizationProviderId: pulumi.String("aadwithauthcode"),
/// 			DisplayName:             pulumi.String("aadwithauthcode"),
/// 			IdentityProvider:        pulumi.String("aad"),
/// 			Oauth2: &apimanagement.AuthorizationProviderOAuth2SettingsArgs{
/// 				GrantTypes: &apimanagement.AuthorizationProviderOAuth2GrantTypesArgs{
/// 					AuthorizationCode: pulumi.StringMap{
/// 						"clientId":     pulumi.String("clientsecretid"),
/// 						"clientSecret": pulumi.String("clientsecretvalue"),
/// 						"resourceUri":  pulumi.String("https://graph.microsoft.com"),
/// 						"scopes":       pulumi.String("User.Read.All Group.Read.All"),
/// 					},
/// 				},
/// 				RedirectUrl: pulumi.String("https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// resource "azure-native_apimanagement_authorizationprovider" "authorizationProvider" {
///   authorization_provider_id = "aadwithauthcode"
///   display_name              = "aadwithauthcode"
///   identity_provider         = "aad"
///   oauth2 = {
///     grant_types = {
///       authorization_code = {
///         "clientId"     = "clientsecretid"
///         "clientSecret" = "clientsecretvalue"
///         "resourceUri"  = "https://graph.microsoft.com"
///         "scopes"       = "User.Read.All Group.Read.All"
///       }
///     }
///     redirect_url = "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1"
///   }
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
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
/// import com.pulumi.azurenative.apimanagement.AuthorizationProvider;
/// import com.pulumi.azurenative.apimanagement.AuthorizationProviderArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthorizationProviderOAuth2SettingsArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthorizationProviderOAuth2GrantTypesArgs;
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
///         var authorizationProvider = new AuthorizationProvider("authorizationProvider", AuthorizationProviderArgs.builder()
///             .authorizationProviderId("aadwithauthcode")
///             .displayName("aadwithauthcode")
///             .identityProvider("aad")
///             .oauth2(AuthorizationProviderOAuth2SettingsArgs.builder()
///                 .grantTypes(AuthorizationProviderOAuth2GrantTypesArgs.builder()
///                     .authorizationCode(Map.ofEntries(
///                         Map.entry("clientId", "clientsecretid"),
///                         Map.entry("clientSecret", "clientsecretvalue"),
///                         Map.entry("resourceUri", "https://graph.microsoft.com"),
///                         Map.entry("scopes", "User.Read.All Group.Read.All")
///                     ))
///                     .build())
///                 .redirectUrl("https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const authorizationProvider = new azure_native.apimanagement.AuthorizationProvider("authorizationProvider", {
///     authorizationProviderId: "aadwithauthcode",
///     displayName: "aadwithauthcode",
///     identityProvider: "aad",
///     oauth2: {
///         grantTypes: {
///             authorizationCode: {
///                 clientId: "clientsecretid",
///                 clientSecret: "clientsecretvalue",
///                 resourceUri: "https://graph.microsoft.com",
///                 scopes: "User.Read.All Group.Read.All",
///             },
///         },
///         redirectUrl: "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// authorization_provider = azure_native.apimanagement.AuthorizationProvider("authorizationProvider",
///     authorization_provider_id="aadwithauthcode",
///     display_name="aadwithauthcode",
///     identity_provider="aad",
///     oauth2={
///         "grant_types": {
///             "authorization_code": {
///                 "clientId": "clientsecretid",
///                 "clientSecret": "clientsecretvalue",
///                 "resourceUri": "https://graph.microsoft.com",
///                 "scopes": "User.Read.All Group.Read.All",
///             },
///         },
///         "redirect_url": "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1",
///     },
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   authorizationProvider:
///     type: azure-native:apimanagement:AuthorizationProvider
///     properties:
///       authorizationProviderId: aadwithauthcode
///       displayName: aadwithauthcode
///       identityProvider: aad
///       oauth2:
///         grantTypes:
///           authorizationCode:
///             clientId: clientsecretid
///             clientSecret: clientsecretvalue
///             resourceUri: https://graph.microsoft.com
///             scopes: User.Read.All Group.Read.All
///         redirectUrl: https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1
///       resourceGroupName: rg1
///       serviceName: apimService1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateAuthorizationProviderAADClientCred
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authorizationProvider = new AzureNative.ApiManagement.AuthorizationProvider("authorizationProvider", new()
///     {
///         AuthorizationProviderId = "aadwithclientcred",
///         DisplayName = "aadwithclientcred",
///         IdentityProvider = "aad",
///         Oauth2 = new AzureNative.ApiManagement.Inputs.AuthorizationProviderOAuth2SettingsArgs
///         {
///             GrantTypes = new AzureNative.ApiManagement.Inputs.AuthorizationProviderOAuth2GrantTypesArgs
///             {
///                 AuthorizationCode =
///                 {
///                     { "resourceUri", "https://graph.microsoft.com" },
///                     { "scopes", "User.Read.All Group.Read.All" },
///                 },
///             },
///             RedirectUrl = "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 		_, err := apimanagement.NewAuthorizationProvider(ctx, "authorizationProvider", &apimanagement.AuthorizationProviderArgs{
/// 			AuthorizationProviderId: pulumi.String("aadwithclientcred"),
/// 			DisplayName:             pulumi.String("aadwithclientcred"),
/// 			IdentityProvider:        pulumi.String("aad"),
/// 			Oauth2: &apimanagement.AuthorizationProviderOAuth2SettingsArgs{
/// 				GrantTypes: &apimanagement.AuthorizationProviderOAuth2GrantTypesArgs{
/// 					AuthorizationCode: pulumi.StringMap{
/// 						"resourceUri": pulumi.String("https://graph.microsoft.com"),
/// 						"scopes":      pulumi.String("User.Read.All Group.Read.All"),
/// 					},
/// 				},
/// 				RedirectUrl: pulumi.String("https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// resource "azure-native_apimanagement_authorizationprovider" "authorizationProvider" {
///   authorization_provider_id = "aadwithclientcred"
///   display_name              = "aadwithclientcred"
///   identity_provider         = "aad"
///   oauth2 = {
///     grant_types = {
///       authorization_code = {
///         "resourceUri" = "https://graph.microsoft.com"
///         "scopes"      = "User.Read.All Group.Read.All"
///       }
///     }
///     redirect_url = "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1"
///   }
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
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
/// import com.pulumi.azurenative.apimanagement.AuthorizationProvider;
/// import com.pulumi.azurenative.apimanagement.AuthorizationProviderArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthorizationProviderOAuth2SettingsArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthorizationProviderOAuth2GrantTypesArgs;
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
///         var authorizationProvider = new AuthorizationProvider("authorizationProvider", AuthorizationProviderArgs.builder()
///             .authorizationProviderId("aadwithclientcred")
///             .displayName("aadwithclientcred")
///             .identityProvider("aad")
///             .oauth2(AuthorizationProviderOAuth2SettingsArgs.builder()
///                 .grantTypes(AuthorizationProviderOAuth2GrantTypesArgs.builder()
///                     .authorizationCode(Map.ofEntries(
///                         Map.entry("resourceUri", "https://graph.microsoft.com"),
///                         Map.entry("scopes", "User.Read.All Group.Read.All")
///                     ))
///                     .build())
///                 .redirectUrl("https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const authorizationProvider = new azure_native.apimanagement.AuthorizationProvider("authorizationProvider", {
///     authorizationProviderId: "aadwithclientcred",
///     displayName: "aadwithclientcred",
///     identityProvider: "aad",
///     oauth2: {
///         grantTypes: {
///             authorizationCode: {
///                 resourceUri: "https://graph.microsoft.com",
///                 scopes: "User.Read.All Group.Read.All",
///             },
///         },
///         redirectUrl: "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// authorization_provider = azure_native.apimanagement.AuthorizationProvider("authorizationProvider",
///     authorization_provider_id="aadwithclientcred",
///     display_name="aadwithclientcred",
///     identity_provider="aad",
///     oauth2={
///         "grant_types": {
///             "authorization_code": {
///                 "resourceUri": "https://graph.microsoft.com",
///                 "scopes": "User.Read.All Group.Read.All",
///             },
///         },
///         "redirect_url": "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1",
///     },
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   authorizationProvider:
///     type: azure-native:apimanagement:AuthorizationProvider
///     properties:
///       authorizationProviderId: aadwithclientcred
///       displayName: aadwithclientcred
///       identityProvider: aad
///       oauth2:
///         grantTypes:
///           authorizationCode:
///             resourceUri: https://graph.microsoft.com
///             scopes: User.Read.All Group.Read.All
///         redirectUrl: https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1
///       resourceGroupName: rg1
///       serviceName: apimService1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateAuthorizationProviderOOBGoogle
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authorizationProvider = new AzureNative.ApiManagement.AuthorizationProvider("authorizationProvider", new()
///     {
///         AuthorizationProviderId = "google",
///         DisplayName = "google",
///         IdentityProvider = "google",
///         Oauth2 = new AzureNative.ApiManagement.Inputs.AuthorizationProviderOAuth2SettingsArgs
///         {
///             GrantTypes = new AzureNative.ApiManagement.Inputs.AuthorizationProviderOAuth2GrantTypesArgs
///             {
///                 AuthorizationCode =
///                 {
///                     { "clientId", "99999999-xxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com" },
///                     { "clientSecret", "clientsecretvalue" },
///                     { "scopes", "openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email" },
///                 },
///             },
///             RedirectUrl = "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 		_, err := apimanagement.NewAuthorizationProvider(ctx, "authorizationProvider", &apimanagement.AuthorizationProviderArgs{
/// 			AuthorizationProviderId: pulumi.String("google"),
/// 			DisplayName:             pulumi.String("google"),
/// 			IdentityProvider:        pulumi.String("google"),
/// 			Oauth2: &apimanagement.AuthorizationProviderOAuth2SettingsArgs{
/// 				GrantTypes: &apimanagement.AuthorizationProviderOAuth2GrantTypesArgs{
/// 					AuthorizationCode: pulumi.StringMap{
/// 						"clientId":     pulumi.String("99999999-xxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com"),
/// 						"clientSecret": pulumi.String("clientsecretvalue"),
/// 						"scopes":       pulumi.String("openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email"),
/// 					},
/// 				},
/// 				RedirectUrl: pulumi.String("https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// resource "azure-native_apimanagement_authorizationprovider" "authorizationProvider" {
///   authorization_provider_id = "google"
///   display_name              = "google"
///   identity_provider         = "google"
///   oauth2 = {
///     grant_types = {
///       authorization_code = {
///         "clientId"     = "99999999-xxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com"
///         "clientSecret" = "clientsecretvalue"
///         "scopes"       = "openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email"
///       }
///     }
///     redirect_url = "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1"
///   }
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
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
/// import com.pulumi.azurenative.apimanagement.AuthorizationProvider;
/// import com.pulumi.azurenative.apimanagement.AuthorizationProviderArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthorizationProviderOAuth2SettingsArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.AuthorizationProviderOAuth2GrantTypesArgs;
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
///         var authorizationProvider = new AuthorizationProvider("authorizationProvider", AuthorizationProviderArgs.builder()
///             .authorizationProviderId("google")
///             .displayName("google")
///             .identityProvider("google")
///             .oauth2(AuthorizationProviderOAuth2SettingsArgs.builder()
///                 .grantTypes(AuthorizationProviderOAuth2GrantTypesArgs.builder()
///                     .authorizationCode(Map.ofEntries(
///                         Map.entry("clientId", "99999999-xxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com"),
///                         Map.entry("clientSecret", "clientsecretvalue"),
///                         Map.entry("scopes", "openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email")
///                     ))
///                     .build())
///                 .redirectUrl("https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const authorizationProvider = new azure_native.apimanagement.AuthorizationProvider("authorizationProvider", {
///     authorizationProviderId: "google",
///     displayName: "google",
///     identityProvider: "google",
///     oauth2: {
///         grantTypes: {
///             authorizationCode: {
///                 clientId: "99999999-xxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com",
///                 clientSecret: "clientsecretvalue",
///                 scopes: "openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email",
///             },
///         },
///         redirectUrl: "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// authorization_provider = azure_native.apimanagement.AuthorizationProvider("authorizationProvider",
///     authorization_provider_id="google",
///     display_name="google",
///     identity_provider="google",
///     oauth2={
///         "grant_types": {
///             "authorization_code": {
///                 "clientId": "99999999-xxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com",
///                 "clientSecret": "clientsecretvalue",
///                 "scopes": "openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email",
///             },
///         },
///         "redirect_url": "https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1",
///     },
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   authorizationProvider:
///     type: azure-native:apimanagement:AuthorizationProvider
///     properties:
///       authorizationProviderId: google
///       displayName: google
///       identityProvider: google
///       oauth2:
///         grantTypes:
///           authorizationCode:
///             clientId: 99999999-xxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com
///             clientSecret: clientsecretvalue
///             scopes: openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email
///         redirectUrl: https://authorization-manager.consent.azure-apim.net/redirect/apim/apimService1
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:AuthorizationProvider google /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/authorizationProviders/{authorizationProviderId}
/// ```
class AuthorizationProvider extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Authorization Provider name. Must be 1 to 300 characters long.
  late final pulumi.Output<String?> displayName;
  /// Identity provider name. Must be 1 to 300 characters long.
  late final pulumi.Output<String?> identityProvider;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// OAuth2 settings
  late final pulumi.Output<AuthorizationProviderOAuth2SettingsResponse?> oauth2;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AuthorizationProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationProvider]. {@macro pulumi_apimanagement_authorization_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationProvider(
    String name, {
    AuthorizationProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:AuthorizationProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    identityProvider = registerOutput<String?>('identityProvider');
    this.name = registerOutput<String>('name');
    oauth2 = registerOutput<AuthorizationProviderOAuth2SettingsResponse?>('oauth2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorizationProviderOAuth2SettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AuthorizationProvider] resource.
  AuthorizationProvider.reference(String urn)
    : super(
        'azure-native:apimanagement:AuthorizationProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    identityProvider = registerOutput<String?>('identityProvider');
    this.name = registerOutput<String>('name');
    oauth2 = registerOutput<AuthorizationProviderOAuth2SettingsResponse?>('oauth2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorizationProviderOAuth2SettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
