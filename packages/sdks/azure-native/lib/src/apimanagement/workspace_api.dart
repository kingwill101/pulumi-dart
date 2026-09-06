import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_contact_information_response.dart';
import 'api_license_information_response.dart';
import 'api_version_set_contract_details_response.dart';
import 'authentication_settings_contract_response.dart';
import 'subscription_key_parameter_names_contract_response.dart';
import 'workspace_api_args.dart';

/// API details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceApi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceApi = new AzureNative.ApiManagement.WorkspaceApi("workspaceApi", new()
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
///         WorkspaceId = "wks1",
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
/// 		_, err := apimanagement.NewWorkspaceApi(ctx, "workspaceApi", &apimanagement.WorkspaceApiArgs{
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
/// 			WorkspaceId: pulumi.String("wks1"),
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
/// resource "azure-native_apimanagement_workspaceapi" "workspaceApi" {
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
///   workspace_id = "wks1"
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceApi;
/// import com.pulumi.azurenative.apimanagement.WorkspaceApiArgs;
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
///         var workspaceApi = new WorkspaceApi("workspaceApi", WorkspaceApiArgs.builder()
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
///             .workspaceId("wks1")
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
/// const workspaceApi = new azure_native.apimanagement.WorkspaceApi("workspaceApi", {
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
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_api = azure_native.apimanagement.WorkspaceApi("workspaceApi",
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
///     },
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceApi:
///     type: azure-native:apimanagement:WorkspaceApi
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
///       workspaceId: wks1
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
/// $ pulumi import azure-native:apimanagement:WorkspaceApi apiid9419 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/apis/{apiId}
/// ```
class WorkspaceApi extends pulumi.CustomResource {
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

  /// Creates a new [WorkspaceApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceApi]. {@macro pulumi_apimanagement_workspace_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceApi(
    String name, {
    WorkspaceApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspaceApi',
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

  /// Creates a typed reference to an existing [WorkspaceApi] resource.
  WorkspaceApi.reference(String urn)
    : super(
        'azure-native:apimanagement:WorkspaceApi',
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
