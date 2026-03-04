import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_by_operation_args.dart';

/// Tag Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApiOperationTag
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tagByOperation = new AzureNative.ApiManagement.TagByOperation("tagByOperation", new()
///     {
///         ApiId = "5931a75ae4bbd512a88c680b",
///         OperationId = "5931a75ae4bbd512a88c680a",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         TagId = "tagId1",
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
/// 		_, err := apimanagement.NewTagByOperation(ctx, "tagByOperation", &apimanagement.TagByOperationArgs{
/// 			ApiId:             pulumi.String("5931a75ae4bbd512a88c680b"),
/// 			OperationId:       pulumi.String("5931a75ae4bbd512a88c680a"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			TagId:             pulumi.String("tagId1"),
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
/// import com.pulumi.azurenative.apimanagement.TagByOperation;
/// import com.pulumi.azurenative.apimanagement.TagByOperationArgs;
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
///         var tagByOperation = new TagByOperation("tagByOperation", TagByOperationArgs.builder()
///             .apiId("5931a75ae4bbd512a88c680b")
///             .operationId("5931a75ae4bbd512a88c680a")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .tagId("tagId1")
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
/// const tagByOperation = new azure_native.apimanagement.TagByOperation("tagByOperation", {
///     apiId: "5931a75ae4bbd512a88c680b",
///     operationId: "5931a75ae4bbd512a88c680a",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     tagId: "tagId1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tag_by_operation = azure_native.apimanagement.TagByOperation("tagByOperation",
///     api_id="5931a75ae4bbd512a88c680b",
///     operation_id="5931a75ae4bbd512a88c680a",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     tag_id="tagId1")
///
/// ```
///
/// ```yaml
/// resources:
///   tagByOperation:
///     type: azure-native:apimanagement:TagByOperation
///     properties:
///       apiId: 5931a75ae4bbd512a88c680b
///       operationId: 5931a75ae4bbd512a88c680a
///       resourceGroupName: rg1
///       serviceName: apimService1
///       tagId: tagId1
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
/// $ pulumi import azure-native:apimanagement:TagByOperation tagId1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/operations/{operationId}/tags/{tagId}
/// ```
class TagByOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Tag name.
  late final pulumi.Output<String> displayName;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TagByOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagByOperation]. {@macro pulumi_apimanagement_tag_by_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagByOperation(
    String name, {
    TagByOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:TagByOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
