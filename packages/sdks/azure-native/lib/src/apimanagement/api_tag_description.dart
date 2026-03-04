import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_tag_description_args.dart';

/// Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApiTagDescription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiTagDescription = new AzureNative.ApiManagement.ApiTagDescription("apiTagDescription", new()
///     {
///         ApiId = "5931a75ae4bbd512a88c680b",
///         Description = "Some description that will be displayed for operation's tag if the tag is assigned to operation of the API",
///         ExternalDocsDescription = "Description of the external docs resource",
///         ExternalDocsUrl = "http://some.url/additionaldoc",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         TagDescriptionId = "tagId1",
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
/// 		_, err := apimanagement.NewApiTagDescription(ctx, "apiTagDescription", &apimanagement.ApiTagDescriptionArgs{
/// 			ApiId:                   pulumi.String("5931a75ae4bbd512a88c680b"),
/// 			Description:             pulumi.String("Some description that will be displayed for operation's tag if the tag is assigned to operation of the API"),
/// 			ExternalDocsDescription: pulumi.String("Description of the external docs resource"),
/// 			ExternalDocsUrl:         pulumi.String("http://some.url/additionaldoc"),
/// 			ResourceGroupName:       pulumi.String("rg1"),
/// 			ServiceName:             pulumi.String("apimService1"),
/// 			TagDescriptionId:        pulumi.String("tagId1"),
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
/// import com.pulumi.azurenative.apimanagement.ApiTagDescription;
/// import com.pulumi.azurenative.apimanagement.ApiTagDescriptionArgs;
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
///         var apiTagDescription = new ApiTagDescription("apiTagDescription", ApiTagDescriptionArgs.builder()
///             .apiId("5931a75ae4bbd512a88c680b")
///             .description("Some description that will be displayed for operation's tag if the tag is assigned to operation of the API")
///             .externalDocsDescription("Description of the external docs resource")
///             .externalDocsUrl("http://some.url/additionaldoc")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .tagDescriptionId("tagId1")
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
/// const apiTagDescription = new azure_native.apimanagement.ApiTagDescription("apiTagDescription", {
///     apiId: "5931a75ae4bbd512a88c680b",
///     description: "Some description that will be displayed for operation's tag if the tag is assigned to operation of the API",
///     externalDocsDescription: "Description of the external docs resource",
///     externalDocsUrl: "http://some.url/additionaldoc",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     tagDescriptionId: "tagId1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_tag_description = azure_native.apimanagement.ApiTagDescription("apiTagDescription",
///     api_id="5931a75ae4bbd512a88c680b",
///     description="Some description that will be displayed for operation's tag if the tag is assigned to operation of the API",
///     external_docs_description="Description of the external docs resource",
///     external_docs_url="http://some.url/additionaldoc",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     tag_description_id="tagId1")
///
/// ```
///
/// ```yaml
/// resources:
///   apiTagDescription:
///     type: azure-native:apimanagement:ApiTagDescription
///     properties:
///       apiId: 5931a75ae4bbd512a88c680b
///       description: Some description that will be displayed for operation's tag if the tag is assigned to operation of the API
///       externalDocsDescription: Description of the external docs resource
///       externalDocsUrl: http://some.url/additionaldoc
///       resourceGroupName: rg1
///       serviceName: apimService1
///       tagDescriptionId: tagId1
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
/// $ pulumi import azure-native:apimanagement:ApiTagDescription tagId1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/tagDescriptions/{tagDescriptionId}
/// ```
class ApiTagDescription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Description of the Tag.
  late final pulumi.Output<String?> description;

  /// Tag name.
  late final pulumi.Output<String?> displayName;

  /// Description of the external resources describing the tag.
  late final pulumi.Output<String?> externalDocsDescription;

  /// Absolute URL of external resources describing the tag.
  late final pulumi.Output<String?> externalDocsUrl;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Identifier of the tag in the form of /tags/{tagId}
  late final pulumi.Output<String?> tagId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiTagDescription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiTagDescription]. {@macro pulumi_apimanagement_api_tag_description_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiTagDescription(
    String name, {
    ApiTagDescriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:ApiTagDescription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    externalDocsDescription = registerOutput<String?>(
      'externalDocsDescription',
    );
    externalDocsUrl = registerOutput<String?>('externalDocsUrl');
    this.name = registerOutput<String>('name');
    tagId = registerOutput<String?>('tagId');
    type = registerOutput<String>('type');
  }
}
