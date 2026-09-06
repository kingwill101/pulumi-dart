import 'package:pulumi/pulumi.dart' as pulumi;
import 'documentation_args.dart';

/// Markdown documentation details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateDocumentation
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var documentation = new AzureNative.ApiManagement.Documentation("documentation", new()
///     {
///         Content = "content",
///         DocumentationId = "57d1f7558aa04f15146d9d8a",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Title = "Title",
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
/// 		_, err := apimanagement.NewDocumentation(ctx, "documentation", &apimanagement.DocumentationArgs{
/// 			Content:           pulumi.String("content"),
/// 			DocumentationId:   pulumi.String("57d1f7558aa04f15146d9d8a"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Title:             pulumi.String("Title"),
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
/// resource "azure-native_apimanagement_documentation" "documentation" {
///   content             = "content"
///   documentation_id    = "57d1f7558aa04f15146d9d8a"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   title               = "Title"
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
/// import com.pulumi.azurenative.apimanagement.Documentation;
/// import com.pulumi.azurenative.apimanagement.DocumentationArgs;
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
///         var documentation = new Documentation("documentation", DocumentationArgs.builder()
///             .content("content")
///             .documentationId("57d1f7558aa04f15146d9d8a")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .title("Title")
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
/// const documentation = new azure_native.apimanagement.Documentation("documentation", {
///     content: "content",
///     documentationId: "57d1f7558aa04f15146d9d8a",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     title: "Title",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// documentation = azure_native.apimanagement.Documentation("documentation",
///     content="content",
///     documentation_id="57d1f7558aa04f15146d9d8a",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     title="Title")
///
/// ```
///
/// ```yaml
/// resources:
///   documentation:
///     type: azure-native:apimanagement:Documentation
///     properties:
///       content: content
///       documentationId: 57d1f7558aa04f15146d9d8a
///       resourceGroupName: rg1
///       serviceName: apimService1
///       title: Title
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
/// $ pulumi import azure-native:apimanagement:Documentation 57d1f7558aa04f15146d9d8a /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/documentations/{documentationId}
/// ```
class Documentation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Markdown documentation content.
  late final pulumi.Output<String?> content;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// documentation title.
  late final pulumi.Output<String?> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Documentation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Documentation]. {@macro pulumi_apimanagement_documentation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Documentation(
    String name, {
    DocumentationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Documentation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    content = registerOutput<String?>('content');
    this.name = registerOutput<String>('name');
    title = registerOutput<String?>('title');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Documentation] resource.
  Documentation.reference(String urn)
    : super(
        'azure-native:apimanagement:Documentation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    content = registerOutput<String?>('content');
    this.name = registerOutput<String>('name');
    title = registerOutput<String?>('title');
    type = registerOutput<String>('type');
  }
}
