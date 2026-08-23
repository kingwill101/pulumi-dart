import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadauth_type_workspace_connection_properties_response.dart';
import 'system_data_response.dart';
import 'workspace_connection_args.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateWorkspaceConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceConnection = new AzureNative.MachineLearningServices.WorkspaceConnection("workspaceConnection", new()
///     {
///         ConnectionName = "connection-1",
///         Properties = new AzureNative.MachineLearningServices.Inputs.NoneAuthTypeWorkspaceConnectionPropertiesArgs
///         {
///             AuthType = "None",
///             Category = AzureNative.MachineLearningServices.ConnectionCategory.ContainerRegistry,
///             ExpiryTime = "2024-03-15T14:30:00Z",
///             Target = "www.facebook.com",
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
/// 		_, err := machinelearningservices.NewWorkspaceConnection(ctx, "workspaceConnection", &machinelearningservices.WorkspaceConnectionArgs{
/// 			ConnectionName: pulumi.String("connection-1"),
/// 			Properties: &machinelearningservices.NoneAuthTypeWorkspaceConnectionPropertiesArgs{
/// 				AuthType:   pulumi.String("None"),
/// 				Category:   pulumi.String(machinelearningservices.ConnectionCategoryContainerRegistry),
/// 				ExpiryTime: pulumi.String("2024-03-15T14:30:00Z"),
/// 				Target:     pulumi.String("www.facebook.com"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_machinelearningservices_workspaceconnection" "workspaceConnection" {
///   connection_name = "connection-1"
///   properties = {
///     "authType"   = "None"
///     "category"   = "ContainerRegistry"
///     "expiryTime" = "2024-03-15T14:30:00Z"
///     "target"     = "www.facebook.com"
///   }
///   resource_group_name = "resourceGroup-1"
///   workspace_name      = "workspace-1"
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
/// import com.pulumi.azurenative.machinelearningservices.WorkspaceConnection;
/// import com.pulumi.azurenative.machinelearningservices.WorkspaceConnectionArgs;
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
///         var workspaceConnection = new WorkspaceConnection("workspaceConnection", WorkspaceConnectionArgs.builder()
///             .connectionName("connection-1")
///             .properties(NoneAuthTypeWorkspaceConnectionPropertiesArgs.builder()
///                 .authType("None")
///                 .category("ContainerRegistry")
///                 .expiryTime("2024-03-15T14:30:00Z")
///                 .target("www.facebook.com")
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
/// const workspaceConnection = new azure_native.machinelearningservices.WorkspaceConnection("workspaceConnection", {
///     connectionName: "connection-1",
///     properties: {
///         authType: "None",
///         category: azure_native.machinelearningservices.ConnectionCategory.ContainerRegistry,
///         expiryTime: "2024-03-15T14:30:00Z",
///         target: "www.facebook.com",
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
/// workspace_connection = azure_native.machinelearningservices.WorkspaceConnection("workspaceConnection",
///     connection_name="connection-1",
///     properties={
///         "auth_type": "None",
///         "category": azure_native.machinelearningservices.ConnectionCategory.CONTAINER_REGISTRY,
///         "expiry_time": "2024-03-15T14:30:00Z",
///         "target": "www.facebook.com",
///     },
///     resource_group_name="resourceGroup-1",
///     workspace_name="workspace-1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceConnection:
///     type: azure-native:machinelearningservices:WorkspaceConnection
///     properties:
///       connectionName: connection-1
///       properties:
///         authType: None
///         category: ContainerRegistry
///         expiryTime: 2024-03-15T14:30:00Z
///         target: www.facebook.com
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
/// $ pulumi import azure-native:machinelearningservices:WorkspaceConnection connection-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/connections/{connectionName}
/// ```
class WorkspaceConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<AADAuthTypeWorkspaceConnectionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspaceConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceConnection]. {@macro pulumi_machinelearningservices_workspace_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceConnection(
    String name, {
    WorkspaceConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:WorkspaceConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AADAuthTypeWorkspaceConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AADAuthTypeWorkspaceConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
