import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_product_group_link_args.dart';

/// Product-group link details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceProductGroupLink
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceProductGroupLink = new AzureNative.ApiManagement.WorkspaceProductGroupLink("workspaceProductGroupLink", new()
///     {
///         GroupId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/groups/group1",
///         GroupLinkId = "link1",
///         ProductId = "testproduct",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 		_, err := apimanagement.NewWorkspaceProductGroupLink(ctx, "workspaceProductGroupLink", &apimanagement.WorkspaceProductGroupLinkArgs{
/// 			GroupId:           pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/groups/group1"),
/// 			GroupLinkId:       pulumi.String("link1"),
/// 			ProductId:         pulumi.String("testproduct"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			WorkspaceId:       pulumi.String("wks1"),
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceProductGroupLink;
/// import com.pulumi.azurenative.apimanagement.WorkspaceProductGroupLinkArgs;
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
///         var workspaceProductGroupLink = new WorkspaceProductGroupLink("workspaceProductGroupLink", WorkspaceProductGroupLinkArgs.builder()
///             .groupId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/groups/group1")
///             .groupLinkId("link1")
///             .productId("testproduct")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const workspaceProductGroupLink = new azure_native.apimanagement.WorkspaceProductGroupLink("workspaceProductGroupLink", {
///     groupId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/groups/group1",
///     groupLinkId: "link1",
///     productId: "testproduct",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_product_group_link = azure_native.apimanagement.WorkspaceProductGroupLink("workspaceProductGroupLink",
///     group_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/groups/group1",
///     group_link_id="link1",
///     product_id="testproduct",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceProductGroupLink:
///     type: azure-native:apimanagement:WorkspaceProductGroupLink
///     properties:
///       groupId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/groups/group1
///       groupLinkId: link1
///       productId: testproduct
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:WorkspaceProductGroupLink link1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/products/{productId}/groupLinks/{groupLinkId}
/// ```
class WorkspaceProductGroupLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Full resource Id of a group.
  late final pulumi.Output<String> groupId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspaceProductGroupLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceProductGroupLink]. {@macro pulumi_apimanagement_workspace_product_group_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceProductGroupLink(
    String name, {
    WorkspaceProductGroupLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:WorkspaceProductGroupLink',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
