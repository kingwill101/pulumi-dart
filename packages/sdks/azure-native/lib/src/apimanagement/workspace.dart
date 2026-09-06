import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';

/// Workspace details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.ApiManagement.Workspace("workspace", new()
///     {
///         Description = "workspace 1",
///         DisplayName = "my workspace",
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
/// 		_, err := apimanagement.NewWorkspace(ctx, "workspace", &apimanagement.WorkspaceArgs{
/// 			Description:       pulumi.String("workspace 1"),
/// 			DisplayName:       pulumi.String("my workspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_apimanagement_workspace" "workspace" {
///   description         = "workspace 1"
///   display_name        = "my workspace"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   workspace_id        = "wks1"
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
/// import com.pulumi.azurenative.apimanagement.Workspace;
/// import com.pulumi.azurenative.apimanagement.WorkspaceArgs;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .description("workspace 1")
///             .displayName("my workspace")
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
/// const workspace = new azure_native.apimanagement.Workspace("workspace", {
///     description: "workspace 1",
///     displayName: "my workspace",
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
/// workspace = azure_native.apimanagement.Workspace("workspace",
///     description="workspace 1",
///     display_name="my workspace",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:apimanagement:Workspace
///     properties:
///       description: workspace 1
///       displayName: my workspace
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
/// $ pulumi import azure-native:apimanagement:Workspace wks1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description of the workspace.
  late final pulumi.Output<String?> description;
  /// Name of the workspace.
  late final pulumi.Output<String> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_apimanagement_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Workspace] resource.
  Workspace.reference(String urn)
    : super(
        'azure-native:apimanagement:Workspace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
