import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_workspace_args.dart';
import 'linked_workspace_props_response.dart';

/// Linked workspace.
///
/// Uses Azure REST API version 2020-05-15-preview. In version 2.x of the Azure Native provider, it used API version 2020-05-15-preview.
///
/// Other available API versions: 2020-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateLinkedWorkspace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedWorkspace = new AzureNative.MachineLearningServices.LinkedWorkspace("linkedWorkspace", new()
///     {
///         LinkName = "link-1",
///         Name = "link-1",
///         Properties = new AzureNative.MachineLearningServices.Inputs.LinkedWorkspacePropsArgs
///         {
///             LinkedWorkspaceResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/linkedWorkspace-1",
///             UserAssignedIdentityResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1",
///         },
///         ResourceGroupName = "resourceGroup-1",
///         WorkspaceName = "workspace-1",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewLinkedWorkspace(ctx, "linkedWorkspace", &machinelearningservices.LinkedWorkspaceArgs{
/// 			LinkName: pulumi.String("link-1"),
/// 			Name:     pulumi.String("link-1"),
/// 			Properties: &machinelearningservices.LinkedWorkspacePropsArgs{
/// 				LinkedWorkspaceResourceId:      pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/linkedWorkspace-1"),
/// 				UserAssignedIdentityResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroup-1"),
/// 			WorkspaceName:     pulumi.String("workspace-1"),
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
/// import com.pulumi.azurenative.machinelearningservices.LinkedWorkspace;
/// import com.pulumi.azurenative.machinelearningservices.LinkedWorkspaceArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.LinkedWorkspacePropsArgs;
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
///         var linkedWorkspace = new LinkedWorkspace("linkedWorkspace", LinkedWorkspaceArgs.builder()
///             .linkName("link-1")
///             .name("link-1")
///             .properties(LinkedWorkspacePropsArgs.builder()
///                 .linkedWorkspaceResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/linkedWorkspace-1")
///                 .userAssignedIdentityResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1")
///                 .build())
///             .resourceGroupName("resourceGroup-1")
///             .workspaceName("workspace-1")
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
/// const linkedWorkspace = new azure_native.machinelearningservices.LinkedWorkspace("linkedWorkspace", {
///     linkName: "link-1",
///     name: "link-1",
///     properties: {
///         linkedWorkspaceResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/linkedWorkspace-1",
///         userAssignedIdentityResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1",
///     },
///     resourceGroupName: "resourceGroup-1",
///     workspaceName: "workspace-1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linked_workspace = azure_native.machinelearningservices.LinkedWorkspace("linkedWorkspace",
///     link_name="link-1",
///     name="link-1",
///     properties={
///         "linked_workspace_resource_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/linkedWorkspace-1",
///         "user_assigned_identity_resource_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1",
///     },
///     resource_group_name="resourceGroup-1",
///     workspace_name="workspace-1")
///
/// ```
///
/// ```yaml
/// resources:
///   linkedWorkspace:
///     type: azure-native:machinelearningservices:LinkedWorkspace
///     properties:
///       linkName: link-1
///       name: link-1
///       properties:
///         linkedWorkspaceResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/linkedWorkspace-1
///         userAssignedIdentityResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/uai1
///       resourceGroupName: resourceGroup-1
///       workspaceName: workspace-1
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
/// $ pulumi import azure-native:machinelearningservices:LinkedWorkspace link-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/linkedWorkspaces/{linkName}
/// ```
class LinkedWorkspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Friendly name of the linked workspace.
  late final pulumi.Output<String> name;
  /// LinkedWorkspace specific properties.
  late final pulumi.Output<LinkedWorkspacePropsResponse> properties;
  /// Resource type of linked workspace.
  late final pulumi.Output<String> type;

  /// Creates a new [LinkedWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedWorkspace]. {@macro pulumi_machinelearningservices_linked_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedWorkspace(
    String name, {
    LinkedWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:LinkedWorkspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LinkedWorkspacePropsResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinkedWorkspacePropsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
