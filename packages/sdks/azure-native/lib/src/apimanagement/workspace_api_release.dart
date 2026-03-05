import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_api_release_args.dart';

/// ApiRelease details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceApiRelease
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceApiRelease = new AzureNative.ApiManagement.WorkspaceApiRelease("workspaceApiRelease", new()
///     {
///         ApiId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/apis/a1",
///         Notes = "yahooagain",
///         ReleaseId = "testrev",
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
/// 		_, err := apimanagement.NewWorkspaceApiRelease(ctx, "workspaceApiRelease", &apimanagement.WorkspaceApiReleaseArgs{
/// 			ApiId:             pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/apis/a1"),
/// 			Notes:             pulumi.String("yahooagain"),
/// 			ReleaseId:         pulumi.String("testrev"),
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceApiRelease;
/// import com.pulumi.azurenative.apimanagement.WorkspaceApiReleaseArgs;
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
///         var workspaceApiRelease = new WorkspaceApiRelease("workspaceApiRelease", WorkspaceApiReleaseArgs.builder()
///             .apiId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/apis/a1")
///             .notes("yahooagain")
///             .releaseId("testrev")
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
/// const workspaceApiRelease = new azure_native.apimanagement.WorkspaceApiRelease("workspaceApiRelease", {
///     apiId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/apis/a1",
///     notes: "yahooagain",
///     releaseId: "testrev",
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
/// workspace_api_release = azure_native.apimanagement.WorkspaceApiRelease("workspaceApiRelease",
///     api_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/apis/a1",
///     notes="yahooagain",
///     release_id="testrev",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceApiRelease:
///     type: azure-native:apimanagement:WorkspaceApiRelease
///     properties:
///       apiId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/workspaces/wks1/apis/a1
///       notes: yahooagain
///       releaseId: testrev
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
/// $ pulumi import azure-native:apimanagement:WorkspaceApiRelease testrev /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/apis/{apiId}/releases/{releaseId}
/// ```
class WorkspaceApiRelease extends pulumi.CustomResource {
  /// Identifier of the API the release belongs to.
  late final pulumi.Output<String?> apiId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the API was released. The date conforms to the following format: yyyy-MM-ddTHH:mm:ssZ as specified by the ISO 8601 standard.
  late final pulumi.Output<String> createdDateTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Release Notes
  late final pulumi.Output<String?> notes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The time the API release was updated.
  late final pulumi.Output<String> updatedDateTime;

  /// Creates a new [WorkspaceApiRelease].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceApiRelease]. {@macro pulumi_apimanagement_workspace_api_release_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceApiRelease(
    String name, {
    WorkspaceApiReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspaceApiRelease',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String?>('apiId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDateTime = registerOutput<String>('createdDateTime');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    type = registerOutput<String>('type');
    updatedDateTime = registerOutput<String>('updatedDateTime');
  }
}
