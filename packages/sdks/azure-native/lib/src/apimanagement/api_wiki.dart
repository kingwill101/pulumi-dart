import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_wiki_args.dart';
import 'wiki_documentation_contract_response.dart';

/// Wiki properties
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApiWiki
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiWiki = new AzureNative.ApiManagement.ApiWiki("apiWiki", new()
///     {
///         ApiId = "57d1f7558aa04f15146d9d8a",
///         Documents = new[]
///         {
///             new AzureNative.ApiManagement.Inputs.WikiDocumentationContractArgs
///             {
///                 DocumentationId = "docId1",
///             },
///             new AzureNative.ApiManagement.Inputs.WikiDocumentationContractArgs
///             {
///                 DocumentationId = "docId2",
///             },
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
/// 		_, err := apimanagement.NewApiWiki(ctx, "apiWiki", &apimanagement.ApiWikiArgs{
/// 			ApiId: pulumi.String("57d1f7558aa04f15146d9d8a"),
/// 			Documents: apimanagement.WikiDocumentationContractArray{
/// 				&apimanagement.WikiDocumentationContractArgs{
/// 					DocumentationId: pulumi.String("docId1"),
/// 				},
/// 				&apimanagement.WikiDocumentationContractArgs{
/// 					DocumentationId: pulumi.String("docId2"),
/// 				},
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
/// import com.pulumi.azurenative.apimanagement.ApiWiki;
/// import com.pulumi.azurenative.apimanagement.ApiWikiArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.WikiDocumentationContractArgs;
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
///         var apiWiki = new ApiWiki("apiWiki", ApiWikiArgs.builder()
///             .apiId("57d1f7558aa04f15146d9d8a")
///             .documents(
///                 WikiDocumentationContractArgs.builder()
///                     .documentationId("docId1")
///                     .build(),
///                 WikiDocumentationContractArgs.builder()
///                     .documentationId("docId2")
///                     .build())
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
/// const apiWiki = new azure_native.apimanagement.ApiWiki("apiWiki", {
///     apiId: "57d1f7558aa04f15146d9d8a",
///     documents: [
///         {
///             documentationId: "docId1",
///         },
///         {
///             documentationId: "docId2",
///         },
///     ],
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
/// api_wiki = azure_native.apimanagement.ApiWiki("apiWiki",
///     api_id="57d1f7558aa04f15146d9d8a",
///     documents=[
///         {
///             "documentation_id": "docId1",
///         },
///         {
///             "documentation_id": "docId2",
///         },
///     ],
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   apiWiki:
///     type: azure-native:apimanagement:ApiWiki
///     properties:
///       apiId: 57d1f7558aa04f15146d9d8a
///       documents:
///         - documentationId: docId1
///         - documentationId: docId2
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
/// $ pulumi import azure-native:apimanagement:ApiWiki default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/wikis/default
/// ```
class ApiWiki extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Collection wiki documents included into this wiki.
  late final pulumi.Output<List<WikiDocumentationContractResponse>?> documents;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiWiki].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiWiki]. {@macro pulumi_apimanagement_api_wiki_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiWiki(
    String name, {
    ApiWikiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ApiWiki',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.documents = registerOutput<List<WikiDocumentationContractResponse>?>('documents');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
