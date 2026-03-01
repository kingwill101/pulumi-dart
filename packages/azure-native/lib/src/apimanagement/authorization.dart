import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_args.dart';
import 'authorization_error_response.dart';

/// Authorization contract.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateAuthorizationAADAuthCode
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authorization = new AzureNative.ApiManagement.Authorization("authorization", new()
///     {
///         AuthorizationId = "authz2",
///         AuthorizationProviderId = "aadwithauthcode",
///         AuthorizationType = AzureNative.ApiManagement.AuthorizationType.OAuth2,
///         OAuth2GrantType = AzureNative.ApiManagement.OAuth2GrantType.AuthorizationCode,
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
/// 		_, err := apimanagement.NewAuthorization(ctx, "authorization", &apimanagement.AuthorizationArgs{
/// 			AuthorizationId:         pulumi.String("authz2"),
/// 			AuthorizationProviderId: pulumi.String("aadwithauthcode"),
/// 			AuthorizationType:       pulumi.String(apimanagement.AuthorizationTypeOAuth2),
/// 			OAuth2GrantType:         pulumi.String(apimanagement.OAuth2GrantTypeAuthorizationCode),
/// 			ResourceGroupName:       pulumi.String("rg1"),
/// 			ServiceName:             pulumi.String("apimService1"),
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
/// import com.pulumi.azurenative.apimanagement.Authorization;
/// import com.pulumi.azurenative.apimanagement.AuthorizationArgs;
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
///         var authorization = new Authorization("authorization", AuthorizationArgs.builder()
///             .authorizationId("authz2")
///             .authorizationProviderId("aadwithauthcode")
///             .authorizationType("OAuth2")
///             .oAuth2GrantType("AuthorizationCode")
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
/// const authorization = new azure_native.apimanagement.Authorization("authorization", {
///     authorizationId: "authz2",
///     authorizationProviderId: "aadwithauthcode",
///     authorizationType: azure_native.apimanagement.AuthorizationType.OAuth2,
///     oAuth2GrantType: azure_native.apimanagement.OAuth2GrantType.AuthorizationCode,
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
/// authorization = azure_native.apimanagement.Authorization("authorization",
///     authorization_id="authz2",
///     authorization_provider_id="aadwithauthcode",
///     authorization_type=azure_native.apimanagement.AuthorizationType.O_AUTH2,
///     o_auth2_grant_type=azure_native.apimanagement.OAuth2GrantType.AUTHORIZATION_CODE,
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   authorization:
///     type: azure-native:apimanagement:Authorization
///     properties:
///       authorizationId: authz2
///       authorizationProviderId: aadwithauthcode
///       authorizationType: OAuth2
///       oAuth2GrantType: AuthorizationCode
///       resourceGroupName: rg1
///       serviceName: apimService1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateAuthorizationAADClientCred
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authorization = new AzureNative.ApiManagement.Authorization("authorization", new()
///     {
///         AuthorizationId = "authz1",
///         AuthorizationProviderId = "aadwithclientcred",
///         AuthorizationType = AzureNative.ApiManagement.AuthorizationType.OAuth2,
///         OAuth2GrantType = AzureNative.ApiManagement.OAuth2GrantType.AuthorizationCode,
///         Parameters =
///         {
///             { "clientId", "53790925-fdd3-4b80-bc7a-4c3aaf25801d" },
///             { "clientSecret", "xxxxxxxxxxxxxxx~xxxxxxxxx" },
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
/// 		_, err := apimanagement.NewAuthorization(ctx, "authorization", &apimanagement.AuthorizationArgs{
/// 			AuthorizationId:         pulumi.String("authz1"),
/// 			AuthorizationProviderId: pulumi.String("aadwithclientcred"),
/// 			AuthorizationType:       pulumi.String(apimanagement.AuthorizationTypeOAuth2),
/// 			OAuth2GrantType:         pulumi.String(apimanagement.OAuth2GrantTypeAuthorizationCode),
/// 			Parameters: pulumi.StringMap{
/// 				"clientId":     pulumi.String("53790925-fdd3-4b80-bc7a-4c3aaf25801d"),
/// 				"clientSecret": pulumi.String("xxxxxxxxxxxxxxx~xxxxxxxxx"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.Authorization;
/// import com.pulumi.azurenative.apimanagement.AuthorizationArgs;
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
///         var authorization = new Authorization("authorization", AuthorizationArgs.builder()
///             .authorizationId("authz1")
///             .authorizationProviderId("aadwithclientcred")
///             .authorizationType("OAuth2")
///             .oAuth2GrantType("AuthorizationCode")
///             .parameters(Map.ofEntries(
///                 Map.entry("clientId", "53790925-fdd3-4b80-bc7a-4c3aaf25801d"),
///                 Map.entry("clientSecret", "xxxxxxxxxxxxxxx~xxxxxxxxx")
///             ))
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
/// const authorization = new azure_native.apimanagement.Authorization("authorization", {
///     authorizationId: "authz1",
///     authorizationProviderId: "aadwithclientcred",
///     authorizationType: azure_native.apimanagement.AuthorizationType.OAuth2,
///     oAuth2GrantType: azure_native.apimanagement.OAuth2GrantType.AuthorizationCode,
///     parameters: {
///         clientId: "53790925-fdd3-4b80-bc7a-4c3aaf25801d",
///         clientSecret: "xxxxxxxxxxxxxxx~xxxxxxxxx",
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
/// authorization = azure_native.apimanagement.Authorization("authorization",
///     authorization_id="authz1",
///     authorization_provider_id="aadwithclientcred",
///     authorization_type=azure_native.apimanagement.AuthorizationType.O_AUTH2,
///     o_auth2_grant_type=azure_native.apimanagement.OAuth2GrantType.AUTHORIZATION_CODE,
///     parameters={
///         "clientId": "53790925-fdd3-4b80-bc7a-4c3aaf25801d",
///         "clientSecret": "xxxxxxxxxxxxxxx~xxxxxxxxx",
///     },
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   authorization:
///     type: azure-native:apimanagement:Authorization
///     properties:
///       authorizationId: authz1
///       authorizationProviderId: aadwithclientcred
///       authorizationType: OAuth2
///       oAuth2GrantType: AuthorizationCode
///       parameters:
///         clientId: 53790925-fdd3-4b80-bc7a-4c3aaf25801d
///         clientSecret: xxxxxxxxxxxxxxx~xxxxxxxxx
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
/// $ pulumi import azure-native:apimanagement:Authorization authz1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/authorizationProviders/{authorizationProviderId}/authorizations/{authorizationId}
/// ```
class Authorization extends pulumi.CustomResource {
  /// Authorization type options
  late final pulumi.Output<String?> authorizationType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Authorization error details.
  late final pulumi.Output<AuthorizationErrorResponse?> error;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// OAuth2 grant type options
  late final pulumi.Output<String?> oAuth2GrantType;
  /// Authorization parameters
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Status of the Authorization
  late final pulumi.Output<String?> status;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Authorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Authorization]. {@macro pulumi_apimanagement_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Authorization(
    String name, {
    AuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Authorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizationType = registerOutput<String?>('authorizationType');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.error = registerOutput<AuthorizationErrorResponse?>('error');
    this.name = registerOutput<String>('name');
    this.oAuth2GrantType = registerOutput<String?>('oAuth2GrantType');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.status = registerOutput<String?>('status');
    this.type = registerOutput<String>('type');
  }
}
