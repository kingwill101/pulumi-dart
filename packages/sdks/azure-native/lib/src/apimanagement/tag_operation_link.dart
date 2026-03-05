import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_operation_link_args.dart';

/// Tag-operation link details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateTagOperationLink
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tagOperationLink = new AzureNative.ApiManagement.TagOperationLink("tagOperationLink", new()
///     {
///         OperationId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api/operations/op1",
///         OperationLinkId = "link1",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         TagId = "tag1",
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
/// 		_, err := apimanagement.NewTagOperationLink(ctx, "tagOperationLink", &apimanagement.TagOperationLinkArgs{
/// 			OperationId:       pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api/operations/op1"),
/// 			OperationLinkId:   pulumi.String("link1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			TagId:             pulumi.String("tag1"),
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
/// import com.pulumi.azurenative.apimanagement.TagOperationLink;
/// import com.pulumi.azurenative.apimanagement.TagOperationLinkArgs;
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
///         var tagOperationLink = new TagOperationLink("tagOperationLink", TagOperationLinkArgs.builder()
///             .operationId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api/operations/op1")
///             .operationLinkId("link1")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .tagId("tag1")
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
/// const tagOperationLink = new azure_native.apimanagement.TagOperationLink("tagOperationLink", {
///     operationId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api/operations/op1",
///     operationLinkId: "link1",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     tagId: "tag1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tag_operation_link = azure_native.apimanagement.TagOperationLink("tagOperationLink",
///     operation_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api/operations/op1",
///     operation_link_id="link1",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     tag_id="tag1")
///
/// ```
///
/// ```yaml
/// resources:
///   tagOperationLink:
///     type: azure-native:apimanagement:TagOperationLink
///     properties:
///       operationId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/echo-api/operations/op1
///       operationLinkId: link1
///       resourceGroupName: rg1
///       serviceName: apimService1
///       tagId: tag1
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
/// $ pulumi import azure-native:apimanagement:TagOperationLink link1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/tags/{tagId}/operationLinks/{operationLinkId}
/// ```
class TagOperationLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Full resource Id of an API operation.
  late final pulumi.Output<String> operationId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TagOperationLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagOperationLink]. {@macro pulumi_apimanagement_tag_operation_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagOperationLink(
    String name, {
    TagOperationLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:TagOperationLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    operationId = registerOutput<String>('operationId');
    type = registerOutput<String>('type');
  }
}
