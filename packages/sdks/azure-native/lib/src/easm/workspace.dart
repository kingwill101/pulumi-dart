import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workspace_args.dart';

/// Workspace details.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Workspaces
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Easm.Workspace("workspace", new()
///     {
///         Location = "West US",
///         ResourceGroupName = "dummyrg",
///         WorkspaceName = "ThisisaWorkspace",
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
/// 	easm "github.com/pulumi/pulumi-azure-native-sdk/easm/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := easm.NewWorkspace(ctx, "workspace", &easm.WorkspaceArgs{
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("dummyrg"),
/// 			WorkspaceName:     pulumi.String("ThisisaWorkspace"),
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
/// import com.pulumi.azurenative.easm.Workspace;
/// import com.pulumi.azurenative.easm.WorkspaceArgs;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .location("West US")
///             .resourceGroupName("dummyrg")
///             .workspaceName("ThisisaWorkspace")
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
/// const workspace = new azure_native.easm.Workspace("workspace", {
///     location: "West US",
///     resourceGroupName: "dummyrg",
///     workspaceName: "ThisisaWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.easm.Workspace("workspace",
///     location="West US",
///     resource_group_name="dummyrg",
///     workspace_name="ThisisaWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:easm:Workspace
///     properties:
///       location: West US
///       resourceGroupName: dummyrg
///       workspaceName: ThisisaWorkspace
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
/// $ pulumi import azure-native:easm:Workspace ThisisaWorkspace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Easm/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Data plane endpoint.
  late final pulumi.Output<String> dataPlaneEndpoint;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Resource provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_easm_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:easm:Workspace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataPlaneEndpoint = registerOutput<String>('dataPlaneEndpoint');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
