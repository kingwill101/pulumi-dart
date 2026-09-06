import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workspace_args.dart';

/// Firmware analysis workspace.
///
/// Uses Azure REST API version 2024-01-10. In version 2.x of the Azure Native provider, it used API version 2023-02-08-preview.
///
/// Other available API versions: 2023-02-08-preview, 2025-04-01-preview, 2025-08-02, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotfirmwaredefense [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Workspaces_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.IoTFirmwareDefense.Workspace("workspace", new()
///     {
///         Location = "jjwbseilitjgdrhbvvkwviqj",
///         ResourceGroupName = "rgworkspaces",
///         Tags =
///         {
///             { "key450", "rzqqumbpfsbibnpirsm" },
///         },
///         WorkspaceName = "E___-3",
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
/// 	iotfirmwaredefense "github.com/pulumi/pulumi-azure-native-sdk/iotfirmwaredefense/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotfirmwaredefense.NewWorkspace(ctx, "workspace", &iotfirmwaredefense.WorkspaceArgs{
/// 			Location:          pulumi.String("jjwbseilitjgdrhbvvkwviqj"),
/// 			ResourceGroupName: pulumi.String("rgworkspaces"),
/// 			Tags: pulumi.StringMap{
/// 				"key450": pulumi.String("rzqqumbpfsbibnpirsm"),
/// 			},
/// 			WorkspaceName: pulumi.String("E___-3"),
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
/// resource "azure-native_iotfirmwaredefense_workspace" "workspace" {
///   location            = "jjwbseilitjgdrhbvvkwviqj"
///   resource_group_name = "rgworkspaces"
///   tags = {
///     "key450" = "rzqqumbpfsbibnpirsm"
///   }
///   workspace_name = "E___-3"
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
/// import com.pulumi.azurenative.iotfirmwaredefense.Workspace;
/// import com.pulumi.azurenative.iotfirmwaredefense.WorkspaceArgs;
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
///             .location("jjwbseilitjgdrhbvvkwviqj")
///             .resourceGroupName("rgworkspaces")
///             .tags(Map.of("key450", "rzqqumbpfsbibnpirsm"))
///             .workspaceName("E___-3")
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
/// const workspace = new azure_native.iotfirmwaredefense.Workspace("workspace", {
///     location: "jjwbseilitjgdrhbvvkwviqj",
///     resourceGroupName: "rgworkspaces",
///     tags: {
///         key450: "rzqqumbpfsbibnpirsm",
///     },
///     workspaceName: "E___-3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.iotfirmwaredefense.Workspace("workspace",
///     location="jjwbseilitjgdrhbvvkwviqj",
///     resource_group_name="rgworkspaces",
///     tags={
///         "key450": "rzqqumbpfsbibnpirsm",
///     },
///     workspace_name="E___-3")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:iotfirmwaredefense:Workspace
///     properties:
///       location: jjwbseilitjgdrhbvvkwviqj
///       resourceGroupName: rgworkspaces
///       tags:
///         key450: rzqqumbpfsbibnpirsm
///       workspaceName: E___-3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Workspaces_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.IoTFirmwareDefense.Workspace("workspace", new()
///     {
///         Location = "jjwbseilitjgdrhbvvkwviqj",
///         ResourceGroupName = "rgworkspaces",
///         WorkspaceName = "E___-3",
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
/// 	iotfirmwaredefense "github.com/pulumi/pulumi-azure-native-sdk/iotfirmwaredefense/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotfirmwaredefense.NewWorkspace(ctx, "workspace", &iotfirmwaredefense.WorkspaceArgs{
/// 			Location:          pulumi.String("jjwbseilitjgdrhbvvkwviqj"),
/// 			ResourceGroupName: pulumi.String("rgworkspaces"),
/// 			WorkspaceName:     pulumi.String("E___-3"),
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
/// resource "azure-native_iotfirmwaredefense_workspace" "workspace" {
///   location            = "jjwbseilitjgdrhbvvkwviqj"
///   resource_group_name = "rgworkspaces"
///   workspace_name      = "E___-3"
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
/// import com.pulumi.azurenative.iotfirmwaredefense.Workspace;
/// import com.pulumi.azurenative.iotfirmwaredefense.WorkspaceArgs;
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
///             .location("jjwbseilitjgdrhbvvkwviqj")
///             .resourceGroupName("rgworkspaces")
///             .workspaceName("E___-3")
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
/// const workspace = new azure_native.iotfirmwaredefense.Workspace("workspace", {
///     location: "jjwbseilitjgdrhbvvkwviqj",
///     resourceGroupName: "rgworkspaces",
///     workspaceName: "E___-3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.iotfirmwaredefense.Workspace("workspace",
///     location="jjwbseilitjgdrhbvvkwviqj",
///     resource_group_name="rgworkspaces",
///     workspace_name="E___-3")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:iotfirmwaredefense:Workspace
///     properties:
///       location: jjwbseilitjgdrhbvvkwviqj
///       resourceGroupName: rgworkspaces
///       workspaceName: E___-3
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
/// $ pulumi import azure-native:iotfirmwaredefense:Workspace tbrqhnzpsatbrnhtj /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTFirmwareDefense/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_iotfirmwaredefense_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotfirmwaredefense:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Workspace] resource.
  Workspace.reference(String urn)
    : super(
        'azure-native:iotfirmwaredefense:Workspace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
