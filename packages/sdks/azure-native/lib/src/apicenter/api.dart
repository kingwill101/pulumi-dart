import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';
import 'license_response.dart';
import 'system_data_response.dart';
import 'terms_of_service_response.dart';

/// API entity.
///
/// Uses Azure REST API version 2024-03-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Apis_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var api = new AzureNative.ApiCenter.Api("api", new()
///     {
///         ApiName = "echo-api",
///         CustomProperties = new Dictionary<string, object?>
///         {
///             ["author"] = "John Doe",
///         },
///         Description = "A simple HTTP request/response service.",
///         ExternalDocumentation = new[]
///         {
///             new AzureNative.ApiCenter.Inputs.ExternalDocumentationArgs
///             {
///                 Title = "Onboarding docs",
///                 Url = "https://docs.contoso.com",
///             },
///         },
///         Kind = AzureNative.ApiCenter.ApiKind.Rest,
///         License = new AzureNative.ApiCenter.Inputs.LicenseArgs
///         {
///             Url = "https://contoso.com/license",
///         },
///         ResourceGroupName = "contoso-resources",
///         ServiceName = "contoso",
///         TermsOfService = new AzureNative.ApiCenter.Inputs.TermsOfServiceArgs
///         {
///             Url = "https://contoso.com/terms-of-service",
///         },
///         Title = "Echo API",
///         WorkspaceName = "default",
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
/// 	apicenter "github.com/pulumi/pulumi-azure-native-sdk/apicenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apicenter.NewApi(ctx, "api", &apicenter.ApiArgs{
/// 			ApiName: pulumi.String("echo-api"),
/// 			CustomProperties: pulumi.Any(map[string]interface{}{
/// 				"author": "John Doe",
/// 			}),
/// 			Description: pulumi.String("A simple HTTP request/response service."),
/// 			ExternalDocumentation: apicenter.ExternalDocumentationArray{
/// 				&apicenter.ExternalDocumentationArgs{
/// 					Title: pulumi.String("Onboarding docs"),
/// 					Url:   pulumi.String("https://docs.contoso.com"),
/// 				},
/// 			},
/// 			Kind: pulumi.String(apicenter.ApiKindRest),
/// 			License: &apicenter.LicenseArgs{
/// 				Url: pulumi.String("https://contoso.com/license"),
/// 			},
/// 			ResourceGroupName: pulumi.String("contoso-resources"),
/// 			ServiceName:       pulumi.String("contoso"),
/// 			TermsOfService: &apicenter.TermsOfServiceArgs{
/// 				Url: pulumi.String("https://contoso.com/terms-of-service"),
/// 			},
/// 			Title:         pulumi.String("Echo API"),
/// 			WorkspaceName: pulumi.String("default"),
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
/// import com.pulumi.azurenative.apicenter.Api;
/// import com.pulumi.azurenative.apicenter.ApiArgs;
/// import com.pulumi.azurenative.apicenter.inputs.ExternalDocumentationArgs;
/// import com.pulumi.azurenative.apicenter.inputs.LicenseArgs;
/// import com.pulumi.azurenative.apicenter.inputs.TermsOfServiceArgs;
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
///         var api = new Api("api", ApiArgs.builder()
///             .apiName("echo-api")
///             .customProperties(Map.of("author", "John Doe"))
///             .description("A simple HTTP request/response service.")
///             .externalDocumentation(ExternalDocumentationArgs.builder()
///                 .title("Onboarding docs")
///                 .url("https://docs.contoso.com")
///                 .build())
///             .kind("rest")
///             .license(LicenseArgs.builder()
///                 .url("https://contoso.com/license")
///                 .build())
///             .resourceGroupName("contoso-resources")
///             .serviceName("contoso")
///             .termsOfService(TermsOfServiceArgs.builder()
///                 .url("https://contoso.com/terms-of-service")
///                 .build())
///             .title("Echo API")
///             .workspaceName("default")
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
/// const api = new azure_native.apicenter.Api("api", {
///     apiName: "echo-api",
///     customProperties: {
///         author: "John Doe",
///     },
///     description: "A simple HTTP request/response service.",
///     externalDocumentation: [{
///         title: "Onboarding docs",
///         url: "https://docs.contoso.com",
///     }],
///     kind: azure_native.apicenter.ApiKind.Rest,
///     license: {
///         url: "https://contoso.com/license",
///     },
///     resourceGroupName: "contoso-resources",
///     serviceName: "contoso",
///     termsOfService: {
///         url: "https://contoso.com/terms-of-service",
///     },
///     title: "Echo API",
///     workspaceName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api = azure_native.apicenter.Api("api",
///     api_name="echo-api",
///     custom_properties={
///         "author": "John Doe",
///     },
///     description="A simple HTTP request/response service.",
///     external_documentation=[{
///         "title": "Onboarding docs",
///         "url": "https://docs.contoso.com",
///     }],
///     kind=azure_native.apicenter.ApiKind.REST,
///     license={
///         "url": "https://contoso.com/license",
///     },
///     resource_group_name="contoso-resources",
///     service_name="contoso",
///     terms_of_service={
///         "url": "https://contoso.com/terms-of-service",
///     },
///     title="Echo API",
///     workspace_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   api:
///     type: azure-native:apicenter:Api
///     properties:
///       apiName: echo-api
///       customProperties:
///         author: John Doe
///       description: A simple HTTP request/response service.
///       externalDocumentation:
///         - title: Onboarding docs
///           url: https://docs.contoso.com
///       kind: rest
///       license:
///         url: https://contoso.com/license
///       resourceGroupName: contoso-resources
///       serviceName: contoso
///       termsOfService:
///         url: https://contoso.com/terms-of-service
///       title: Echo API
///       workspaceName: default
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
/// $ pulumi import azure-native:apicenter:Api echo-api /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiCenter/services/{serviceName}/workspaces/{workspaceName}/apis/{apiName}
/// ```
class Api extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The set of contacts
  late final pulumi.Output<List<Map<String, dynamic>>?> contacts;

  /// The custom metadata defined for API catalog entities.
  late final pulumi.Output<dynamic> customProperties;

  /// Description of the API.
  late final pulumi.Output<String?> description;

  /// The set of external documentation
  late final pulumi.Output<List<Map<String, dynamic>>?> externalDocumentation;

  /// Kind of API. For example, REST or GraphQL.
  late final pulumi.Output<String> kind;

  /// The license information for the API.
  late final pulumi.Output<LicenseResponse?> license;

  /// Current lifecycle stage of the API.
  late final pulumi.Output<String> lifecycleStage;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Short description of the API.
  late final pulumi.Output<String?> summary;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Terms of service for the API.
  late final pulumi.Output<TermsOfServiceResponse?> termsOfService;

  /// API title.
  late final pulumi.Output<String> title;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_apicenter_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(String name, {ApiArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:apicenter:Api',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contacts = registerOutput<List<Map<String, dynamic>>?>('contacts');
    customProperties = registerOutput<dynamic>('customProperties');
    description = registerOutput<String?>('description');
    externalDocumentation = registerOutput<List<Map<String, dynamic>>?>(
      'externalDocumentation',
    );
    kind = registerOutput<String>('kind');
    license = registerOutput<LicenseResponse?>(
      'license',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LicenseResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    lifecycleStage = registerOutput<String>('lifecycleStage');
    this.name = registerOutput<String>('name');
    summary = registerOutput<String?>('summary');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    termsOfService = registerOutput<TermsOfServiceResponse?>(
      'termsOfService',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TermsOfServiceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    title = registerOutput<String>('title');
    type = registerOutput<String>('type');
  }
}
