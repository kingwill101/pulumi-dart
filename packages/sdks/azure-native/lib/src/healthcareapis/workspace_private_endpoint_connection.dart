import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';
import 'workspace_private_endpoint_connection_args.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2024-03-31. In version 2.x of the Azure Native provider, it used API version 2023-02-28.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkspacePrivateEndpointConnection_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspacePrivateEndpointConnection = new AzureNative.HealthcareApis.WorkspacePrivateEndpointConnection("workspacePrivateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "myConnection",
///         PrivateLinkServiceConnectionState = new AzureNative.HealthcareApis.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Auto-Approved",
///             Status = AzureNative.HealthcareApis.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "testRG",
///         WorkspaceName = "workspace1",
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
/// 	healthcareapis "github.com/pulumi/pulumi-azure-native-sdk/healthcareapis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcareapis.NewWorkspacePrivateEndpointConnection(ctx, "workspacePrivateEndpointConnection", &healthcareapis.WorkspacePrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("myConnection"),
/// 			PrivateLinkServiceConnectionState: &healthcareapis.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Auto-Approved"),
/// 				Status:      pulumi.String(healthcareapis.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("testRG"),
/// 			WorkspaceName:     pulumi.String("workspace1"),
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
/// resource "azure-native_healthcareapis_workspaceprivateendpointconnection" "workspacePrivateEndpointConnection" {
///   private_endpoint_connection_name = "myConnection"
///   private_link_service_connection_state = {
///     description = "Auto-Approved"
///     status      = "Approved"
///   }
///   resource_group_name = "testRG"
///   workspace_name      = "workspace1"
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
/// import com.pulumi.azurenative.healthcareapis.WorkspacePrivateEndpointConnection;
/// import com.pulumi.azurenative.healthcareapis.WorkspacePrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.healthcareapis.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var workspacePrivateEndpointConnection = new WorkspacePrivateEndpointConnection("workspacePrivateEndpointConnection", WorkspacePrivateEndpointConnectionArgs.builder()
///             .privateEndpointConnectionName("myConnection")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Auto-Approved")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("testRG")
///             .workspaceName("workspace1")
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
/// const workspacePrivateEndpointConnection = new azure_native.healthcareapis.WorkspacePrivateEndpointConnection("workspacePrivateEndpointConnection", {
///     privateEndpointConnectionName: "myConnection",
///     privateLinkServiceConnectionState: {
///         description: "Auto-Approved",
///         status: azure_native.healthcareapis.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "testRG",
///     workspaceName: "workspace1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_private_endpoint_connection = azure_native.healthcareapis.WorkspacePrivateEndpointConnection("workspacePrivateEndpointConnection",
///     private_endpoint_connection_name="myConnection",
///     private_link_service_connection_state={
///         "description": "Auto-Approved",
///         "status": azure_native.healthcareapis.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="testRG",
///     workspace_name="workspace1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspacePrivateEndpointConnection:
///     type: azure-native:healthcareapis:WorkspacePrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: myConnection
///       privateLinkServiceConnectionState:
///         description: Auto-Approved
///         status: Approved
///       resourceGroupName: testRG
///       workspaceName: workspace1
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
/// $ pulumi import azure-native:healthcareapis:WorkspacePrivateEndpointConnection myConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HealthcareApis/workspaces/{workspaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class WorkspacePrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspacePrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspacePrivateEndpointConnection]. {@macro pulumi_healthcareapis_workspace_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspacePrivateEndpointConnection(
    String name, {
    WorkspacePrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:healthcareapis:WorkspacePrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
