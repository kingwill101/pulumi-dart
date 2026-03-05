import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_contact_information_response.dart';
import 'api_license_information_response.dart';
import 'api_version_set_contract_details_response.dart';
import 'authentication_settings_contract_response.dart';
import 'product_api_args.dart';
import 'subscription_key_parameter_names_contract_response.dart';

/// API details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateProductApi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var productApi = new AzureNative.ApiManagement.ProductApi("productApi", new()
///     {
///         ApiId = "echo-api",
///         ProductId = "testproduct",
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
/// 		_, err := apimanagement.NewProductApi(ctx, "productApi", &apimanagement.ProductApiArgs{
/// 			ApiId:             pulumi.String("echo-api"),
/// 			ProductId:         pulumi.String("testproduct"),
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
/// import com.pulumi.azurenative.apimanagement.ProductApi;
/// import com.pulumi.azurenative.apimanagement.ProductApiArgs;
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
///         var productApi = new ProductApi("productApi", ProductApiArgs.builder()
///             .apiId("echo-api")
///             .productId("testproduct")
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
/// const productApi = new azure_native.apimanagement.ProductApi("productApi", {
///     apiId: "echo-api",
///     productId: "testproduct",
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
/// product_api = azure_native.apimanagement.ProductApi("productApi",
///     api_id="echo-api",
///     product_id="testproduct",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   productApi:
///     type: azure-native:apimanagement:ProductApi
///     properties:
///       apiId: echo-api
///       productId: testproduct
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
/// $ pulumi import azure-native:apimanagement:ProductApi 5931a75ae4bbd512a88c680b /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products/{productId}/apis/{apiId}
/// ```
class ProductApi extends pulumi.CustomResource {
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

  /// Creates a new [ProductApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductApi]. {@macro pulumi_apimanagement_product_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductApi(
    String name, {
    ProductApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ProductApi',
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
    protocols = registerOutput<List<String>?>('protocols');
    serviceUrl = registerOutput<String?>('serviceUrl');
    sourceApiId = registerOutput<String?>('sourceApiId');
    subscriptionKeyParameterNames = registerOutput<SubscriptionKeyParameterNamesContractResponse?>('subscriptionKeyParameterNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionKeyParameterNamesContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subscriptionRequired = registerOutput<bool?>('subscriptionRequired');
    termsOfServiceUrl = registerOutput<String?>('termsOfServiceUrl');
    type = registerOutput<String>('type');
  }
}
