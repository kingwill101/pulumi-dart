import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_item_args.dart';

/// Content type contract details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateContentTypeContentItem
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contentItem = new AzureNative.ApiManagement.ContentItem("contentItem", new()
///     {
///         ContentItemId = "4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8",
///         ContentTypeId = "page",
///         Properties = new Dictionary<string, object?>
///         {
///             ["en_us"] = new Dictionary<string, object?>
///             {
///                 ["description"] = "Short story about the company.",
///                 ["documentId"] = "contentTypes/document/contentItems/4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8",
///                 ["keywords"] = "company, about",
///                 ["permalink"] = "/about",
///                 ["title"] = "About",
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
/// 		_, err := apimanagement.NewContentItem(ctx, "contentItem", &apimanagement.ContentItemArgs{
/// 			ContentItemId: pulumi.String("4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8"),
/// 			ContentTypeId: pulumi.String("page"),
/// 			Properties: pulumi.Any(map[string]interface{}{
/// 				"en_us": map[string]interface{}{
/// 					"description": "Short story about the company.",
/// 					"documentId":  "contentTypes/document/contentItems/4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8",
/// 					"keywords":    "company, about",
/// 					"permalink":   "/about",
/// 					"title":       "About",
/// 				},
/// 			}),
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
/// resource "azure-native_apimanagement_contentitem" "contentItem" {
///   content_item_id = "4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8"
///   content_type_id = "page"
///   properties = {
///     "en_us" = {
///       "description" = "Short story about the company."
///       "documentId"  = "contentTypes/document/contentItems/4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8"
///       "keywords"    = "company, about"
///       "permalink"   = "/about"
///       "title"       = "About"
///     }
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
/// import com.pulumi.azurenative.apimanagement.ContentItem;
/// import com.pulumi.azurenative.apimanagement.ContentItemArgs;
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
///         var contentItem = new ContentItem("contentItem", ContentItemArgs.builder()
///             .contentItemId("4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8")
///             .contentTypeId("page")
///             .properties(Map.of("en_us", Map.ofEntries(
///                 Map.entry("description", "Short story about the company."),
///                 Map.entry("documentId", "contentTypes/document/contentItems/4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8"),
///                 Map.entry("keywords", "company, about"),
///                 Map.entry("permalink", "/about"),
///                 Map.entry("title", "About")
///             )))
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
/// const contentItem = new azure_native.apimanagement.ContentItem("contentItem", {
///     contentItemId: "4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8",
///     contentTypeId: "page",
///     properties: {
///         en_us: {
///             description: "Short story about the company.",
///             documentId: "contentTypes/document/contentItems/4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8",
///             keywords: "company, about",
///             permalink: "/about",
///             title: "About",
///         },
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
/// content_item = azure_native.apimanagement.ContentItem("contentItem",
///     content_item_id="4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8",
///     content_type_id="page",
///     properties={
///         "en_us": {
///             "description": "Short story about the company.",
///             "documentId": "contentTypes/document/contentItems/4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8",
///             "keywords": "company, about",
///             "permalink": "/about",
///             "title": "About",
///         },
///     },
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   contentItem:
///     type: azure-native:apimanagement:ContentItem
///     properties:
///       contentItemId: 4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8
///       contentTypeId: page
///       properties:
///         en_us:
///           description: Short story about the company.
///           documentId: contentTypes/document/contentItems/4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8
///           keywords: company, about
///           permalink: /about
///           title: About
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
/// $ pulumi import azure-native:apimanagement:ContentItem 4e3cf6a5-574a-ba08-1f23-2e7a38faa6d8 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/contentTypes/{contentTypeId}/contentItems/{contentItemId}
/// ```
class ContentItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of the content item.
  late final pulumi.Output<dynamic> properties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ContentItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContentItem]. {@macro pulumi_apimanagement_content_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContentItem(
    String name, {
    ContentItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ContentItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ContentItem] resource.
  ContentItem.reference(String urn)
    : super(
        'azure-native:apimanagement:ContentItem',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    type = registerOutput<String>('type');
  }
}
