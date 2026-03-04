import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_by_workspace_args.dart';
import 'system_data_response.dart';

/// Label details
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Labels
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var labelByWorkspace = new AzureNative.Easm.LabelByWorkspace("labelByWorkspace", new()
///     {
///         LabelName = "ThisisaLabel",
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
/// 		_, err := easm.NewLabelByWorkspace(ctx, "labelByWorkspace", &easm.LabelByWorkspaceArgs{
/// 			LabelName:         pulumi.String("ThisisaLabel"),
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
/// import com.pulumi.azurenative.easm.LabelByWorkspace;
/// import com.pulumi.azurenative.easm.LabelByWorkspaceArgs;
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
///         var labelByWorkspace = new LabelByWorkspace("labelByWorkspace", LabelByWorkspaceArgs.builder()
///             .labelName("ThisisaLabel")
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
/// const labelByWorkspace = new azure_native.easm.LabelByWorkspace("labelByWorkspace", {
///     labelName: "ThisisaLabel",
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
/// label_by_workspace = azure_native.easm.LabelByWorkspace("labelByWorkspace",
///     label_name="ThisisaLabel",
///     resource_group_name="dummyrg",
///     workspace_name="ThisisaWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   labelByWorkspace:
///     type: azure-native:easm:LabelByWorkspace
///     properties:
///       labelName: ThisisaLabel
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
/// $ pulumi import azure-native:easm:LabelByWorkspace ThisisaLabel /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Easm/workspaces/{workspaceName}/labels/{labelName}
/// ```
class LabelByWorkspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Label color.
  late final pulumi.Output<String?> color;

  /// Label display name.
  late final pulumi.Output<String?> displayName;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Resource provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LabelByWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LabelByWorkspace]. {@macro pulumi_easm_label_by_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LabelByWorkspace(
    String name, {
    LabelByWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:easm:LabelByWorkspace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    color = registerOutput<String?>('color');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
