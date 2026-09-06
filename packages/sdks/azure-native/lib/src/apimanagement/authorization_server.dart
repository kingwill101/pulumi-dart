import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_server_args.dart';
import 'token_body_parameter_contract_response.dart';

/// External OAuth authorization server settings.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateAuthorizationServer
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authorizationServer = new AzureNative.ApiManagement.AuthorizationServer("authorizationServer", new()
///     {
///         AuthorizationEndpoint = "https://www.contoso.com/oauth2/auth",
///         AuthorizationMethods = new[]
///         {
///             AzureNative.ApiManagement.AuthorizationMethod.GET,
///         },
///         Authsid = "newauthServer",
///         BearerTokenSendingMethods = new[]
///         {
///             AzureNative.ApiManagement.BearerTokenSendingMethod.AuthorizationHeader,
///         },
///         ClientId = "1",
///         ClientRegistrationEndpoint = "https://www.contoso.com/apps",
///         ClientSecret = "2",
///         DefaultScope = "read write",
///         Description = "test server",
///         DisplayName = "test2",
///         GrantTypes = new[]
///         {
///             AzureNative.ApiManagement.GrantType.AuthorizationCode,
///             AzureNative.ApiManagement.GrantType.@Implicit,
///         },
///         ResourceGroupName = "rg1",
///         ResourceOwnerPassword = "pwd",
///         ResourceOwnerUsername = "un",
///         ServiceName = "apimService1",
///         SupportState = true,
///         TokenEndpoint = "https://www.contoso.com/oauth2/token",
///         UseInApiDocumentation = true,
///         UseInTestConsole = false,
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
/// 		_, err := apimanagement.NewAuthorizationServer(ctx, "authorizationServer", &apimanagement.AuthorizationServerArgs{
/// 			AuthorizationEndpoint: pulumi.String("https://www.contoso.com/oauth2/auth"),
/// 			AuthorizationMethods: apimanagement.AuthorizationMethodArray{
/// 				apimanagement.AuthorizationMethodGET,
/// 			},
/// 			Authsid: pulumi.String("newauthServer"),
/// 			BearerTokenSendingMethods: pulumi.StringArray{
/// 				pulumi.String(apimanagement.BearerTokenSendingMethodAuthorizationHeader),
/// 			},
/// 			ClientId:                   pulumi.String("1"),
/// 			ClientRegistrationEndpoint: pulumi.String("https://www.contoso.com/apps"),
/// 			ClientSecret:               pulumi.String("2"),
/// 			DefaultScope:               pulumi.String("read write"),
/// 			Description:                pulumi.String("test server"),
/// 			DisplayName:                pulumi.String("test2"),
/// 			GrantTypes: pulumi.StringArray{
/// 				pulumi.String(apimanagement.GrantTypeAuthorizationCode),
/// 				pulumi.String(apimanagement.GrantTypeImplicit),
/// 			},
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			ResourceOwnerPassword: pulumi.String("pwd"),
/// 			ResourceOwnerUsername: pulumi.String("un"),
/// 			ServiceName:           pulumi.String("apimService1"),
/// 			SupportState:          pulumi.Bool(true),
/// 			TokenEndpoint:         pulumi.String("https://www.contoso.com/oauth2/token"),
/// 			UseInApiDocumentation: pulumi.Bool(true),
/// 			UseInTestConsole:      pulumi.Bool(false),
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
/// resource "azure-native_apimanagement_authorizationserver" "authorizationServer" {
///   authorization_endpoint       = "https://www.contoso.com/oauth2/auth"
///   authorization_methods        = ["GET"]
///   authsid                      = "newauthServer"
///   bearer_token_sending_methods = ["authorizationHeader"]
///   client_id                    = "1"
///   client_registration_endpoint = "https://www.contoso.com/apps"
///   client_secret                = "2"
///   default_scope                = "read write"
///   description                  = "test server"
///   display_name                 = "test2"
///   grant_types                  = ["authorizationCode", "implicit"]
///   resource_group_name          = "rg1"
///   resource_owner_password      = "pwd"
///   resource_owner_username      = "un"
///   service_name                 = "apimService1"
///   support_state                = true
///   token_endpoint               = "https://www.contoso.com/oauth2/token"
///   use_in_api_documentation     = true
///   use_in_test_console          = false
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
/// import com.pulumi.azurenative.apimanagement.AuthorizationServer;
/// import com.pulumi.azurenative.apimanagement.AuthorizationServerArgs;
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
///         var authorizationServer = new AuthorizationServer("authorizationServer", AuthorizationServerArgs.builder()
///             .authorizationEndpoint("https://www.contoso.com/oauth2/auth")
///             .authorizationMethods("GET")
///             .authsid("newauthServer")
///             .bearerTokenSendingMethods("authorizationHeader")
///             .clientId("1")
///             .clientRegistrationEndpoint("https://www.contoso.com/apps")
///             .clientSecret("2")
///             .defaultScope("read write")
///             .description("test server")
///             .displayName("test2")
///             .grantTypes(
///                 "authorizationCode",
///                 "implicit")
///             .resourceGroupName("rg1")
///             .resourceOwnerPassword("pwd")
///             .resourceOwnerUsername("un")
///             .serviceName("apimService1")
///             .supportState(true)
///             .tokenEndpoint("https://www.contoso.com/oauth2/token")
///             .useInApiDocumentation(true)
///             .useInTestConsole(false)
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
/// const authorizationServer = new azure_native.apimanagement.AuthorizationServer("authorizationServer", {
///     authorizationEndpoint: "https://www.contoso.com/oauth2/auth",
///     authorizationMethods: [azure_native.apimanagement.AuthorizationMethod.GET],
///     authsid: "newauthServer",
///     bearerTokenSendingMethods: [azure_native.apimanagement.BearerTokenSendingMethod.AuthorizationHeader],
///     clientId: "1",
///     clientRegistrationEndpoint: "https://www.contoso.com/apps",
///     clientSecret: "2",
///     defaultScope: "read write",
///     description: "test server",
///     displayName: "test2",
///     grantTypes: [
///         azure_native.apimanagement.GrantType.AuthorizationCode,
///         azure_native.apimanagement.GrantType.Implicit,
///     ],
///     resourceGroupName: "rg1",
///     resourceOwnerPassword: "pwd",
///     resourceOwnerUsername: "un",
///     serviceName: "apimService1",
///     supportState: true,
///     tokenEndpoint: "https://www.contoso.com/oauth2/token",
///     useInApiDocumentation: true,
///     useInTestConsole: false,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// authorization_server = azure_native.apimanagement.AuthorizationServer("authorizationServer",
///     authorization_endpoint="https://www.contoso.com/oauth2/auth",
///     authorization_methods=[azure_native.apimanagement.AuthorizationMethod.GET],
///     authsid="newauthServer",
///     bearer_token_sending_methods=[azure_native.apimanagement.BearerTokenSendingMethod.AUTHORIZATION_HEADER],
///     client_id="1",
///     client_registration_endpoint="https://www.contoso.com/apps",
///     client_secret="2",
///     default_scope="read write",
///     description="test server",
///     display_name="test2",
///     grant_types=[
///         azure_native.apimanagement.GrantType.AUTHORIZATION_CODE,
///         azure_native.apimanagement.GrantType.IMPLICIT,
///     ],
///     resource_group_name="rg1",
///     resource_owner_password="pwd",
///     resource_owner_username="un",
///     service_name="apimService1",
///     support_state=True,
///     token_endpoint="https://www.contoso.com/oauth2/token",
///     use_in_api_documentation=True,
///     use_in_test_console=False)
///
/// ```
///
/// ```yaml
/// resources:
///   authorizationServer:
///     type: azure-native:apimanagement:AuthorizationServer
///     properties:
///       authorizationEndpoint: https://www.contoso.com/oauth2/auth
///       authorizationMethods:
///         - GET
///       authsid: newauthServer
///       bearerTokenSendingMethods:
///         - authorizationHeader
///       clientId: '1'
///       clientRegistrationEndpoint: https://www.contoso.com/apps
///       clientSecret: '2'
///       defaultScope: read write
///       description: test server
///       displayName: test2
///       grantTypes:
///         - authorizationCode
///         - implicit
///       resourceGroupName: rg1
///       resourceOwnerPassword: pwd
///       resourceOwnerUsername: un
///       serviceName: apimService1
///       supportState: true
///       tokenEndpoint: https://www.contoso.com/oauth2/token
///       useInApiDocumentation: true
///       useInTestConsole: false
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
/// $ pulumi import azure-native:apimanagement:AuthorizationServer newauthServer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/authorizationServers/{authsid}
/// ```
class AuthorizationServer extends pulumi.CustomResource {
  /// OAuth authorization endpoint. See http://tools.ietf.org/html/rfc6749#section-3.2.
  late final pulumi.Output<String> authorizationEndpoint;
  /// HTTP verbs supported by the authorization endpoint. GET must be always present. POST is optional.
  late final pulumi.Output<List<String>?> authorizationMethods;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the mechanism by which access token is passed to the API.
  late final pulumi.Output<List<String>?> bearerTokenSendingMethods;
  /// Method of authentication supported by the token endpoint of this authorization server. Possible values are Basic and/or Body. When Body is specified, client credentials and other parameters are passed within the request body in the application/x-www-form-urlencoded format.
  late final pulumi.Output<List<String>?> clientAuthenticationMethod;
  /// Client or app id registered with this authorization server.
  late final pulumi.Output<String> clientId;
  /// Optional reference to a page where client or app registration for this authorization server is performed. Contains absolute URL to entity being referenced.
  late final pulumi.Output<String> clientRegistrationEndpoint;
  /// Client or app secret registered with this authorization server. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  late final pulumi.Output<String?> clientSecret;
  /// Access token scope that is going to be requested by default. Can be overridden at the API level. Should be provided in the form of a string containing space-delimited values.
  late final pulumi.Output<String?> defaultScope;
  /// Description of the authorization server. Can contain HTML formatting tags.
  late final pulumi.Output<String?> description;
  /// User-friendly authorization server name.
  late final pulumi.Output<String> displayName;
  /// Form of an authorization grant, which the client uses to request the access token.
  late final pulumi.Output<List<String>> grantTypes;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner password.
  late final pulumi.Output<String?> resourceOwnerPassword;
  /// Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner username.
  late final pulumi.Output<String?> resourceOwnerUsername;
  /// If true, authorization server will include state parameter from the authorization request to its response. Client may use state parameter to raise protocol security.
  late final pulumi.Output<bool?> supportState;
  /// Additional parameters required by the token endpoint of this authorization server represented as an array of JSON objects with name and value string properties, i.e. {"name" : "name value", "value": "a value"}.
  late final pulumi.Output<List<TokenBodyParameterContractResponse>?> tokenBodyParameters;
  /// OAuth token endpoint. Contains absolute URI to entity being referenced.
  late final pulumi.Output<String?> tokenEndpoint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// If true, the authorization server will be used in the API documentation in the developer portal. False by default if no value is provided.
  late final pulumi.Output<bool?> useInApiDocumentation;
  /// If true, the authorization server may be used in the developer portal test console. True by default if no value is provided.
  late final pulumi.Output<bool?> useInTestConsole;

  /// Creates a new [AuthorizationServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationServer]. {@macro pulumi_apimanagement_authorization_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationServer(
    String name, {
    AuthorizationServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:AuthorizationServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationEndpoint = registerOutput<String>('authorizationEndpoint');
    authorizationMethods = registerOutput<List<String>?>('authorizationMethods', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bearerTokenSendingMethods = registerOutput<List<String>?>('bearerTokenSendingMethods', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientAuthenticationMethod = registerOutput<List<String>?>('clientAuthenticationMethod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientId = registerOutput<String>('clientId');
    clientRegistrationEndpoint = registerOutput<String>('clientRegistrationEndpoint');
    clientSecret = registerOutput<String?>('clientSecret');
    defaultScope = registerOutput<String?>('defaultScope');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    grantTypes = registerOutput<List<String>>('grantTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    resourceOwnerPassword = registerOutput<String?>('resourceOwnerPassword');
    resourceOwnerUsername = registerOutput<String?>('resourceOwnerUsername');
    supportState = registerOutput<bool?>('supportState');
    tokenBodyParameters = registerOutput<List<TokenBodyParameterContractResponse>?>('tokenBodyParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TokenBodyParameterContractResponse>(guardedValue, (value) => TokenBodyParameterContractResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tokenEndpoint = registerOutput<String?>('tokenEndpoint');
    type = registerOutput<String>('type');
    useInApiDocumentation = registerOutput<bool?>('useInApiDocumentation');
    useInTestConsole = registerOutput<bool?>('useInTestConsole');
  }

  /// Creates a typed reference to an existing [AuthorizationServer] resource.
  AuthorizationServer.reference(String urn)
    : super(
        'azure-native:apimanagement:AuthorizationServer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authorizationEndpoint = registerOutput<String>('authorizationEndpoint');
    authorizationMethods = registerOutput<List<String>?>('authorizationMethods', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bearerTokenSendingMethods = registerOutput<List<String>?>('bearerTokenSendingMethods', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientAuthenticationMethod = registerOutput<List<String>?>('clientAuthenticationMethod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clientId = registerOutput<String>('clientId');
    clientRegistrationEndpoint = registerOutput<String>('clientRegistrationEndpoint');
    clientSecret = registerOutput<String?>('clientSecret');
    defaultScope = registerOutput<String?>('defaultScope');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    grantTypes = registerOutput<List<String>>('grantTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    resourceOwnerPassword = registerOutput<String?>('resourceOwnerPassword');
    resourceOwnerUsername = registerOutput<String?>('resourceOwnerUsername');
    supportState = registerOutput<bool?>('supportState');
    tokenBodyParameters = registerOutput<List<TokenBodyParameterContractResponse>?>('tokenBodyParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TokenBodyParameterContractResponse>(guardedValue, (value) => TokenBodyParameterContractResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tokenEndpoint = registerOutput<String?>('tokenEndpoint');
    type = registerOutput<String>('type');
    useInApiDocumentation = registerOutput<bool?>('useInApiDocumentation');
    useInTestConsole = registerOutput<bool?>('useInTestConsole');
  }
}
