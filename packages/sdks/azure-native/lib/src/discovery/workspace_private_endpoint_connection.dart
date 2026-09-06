import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';
import 'workspace_private_endpoint_connection_args.dart';

/// The Private Endpoint Connection resource for Workspace.
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkspacePrivateEndpointConnections_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspacePrivateEndpointConnection = new AzureNative.Discovery.WorkspacePrivateEndpointConnection("workspacePrivateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "connection",
///         Properties = new AzureNative.Discovery.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.Discovery.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 ActionsRequired = "vgqhrxvmviabfgmafqtbej",
///                 Description = "lknyprq",
///                 Status = AzureNative.Discovery.PrivateEndpointServiceConnectionStatus.Pending,
///             },
///         },
///         ResourceGroupName = "rgdiscovery",
///         WorkspaceName = "2b2ef1dfc273d99493",
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
/// 	discovery "github.com/pulumi/pulumi-azure-native-sdk/discovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discovery.NewWorkspacePrivateEndpointConnection(ctx, "workspacePrivateEndpointConnection", &discovery.WorkspacePrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("connection"),
/// 			Properties: &discovery.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &discovery.PrivateLinkServiceConnectionStateArgs{
/// 					ActionsRequired: pulumi.String("vgqhrxvmviabfgmafqtbej"),
/// 					Description:     pulumi.String("lknyprq"),
/// 					Status:          pulumi.String(discovery.PrivateEndpointServiceConnectionStatusPending),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdiscovery"),
/// 			WorkspaceName:     pulumi.String("2b2ef1dfc273d99493"),
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
/// resource "azure-native_discovery_workspaceprivateendpointconnection" "workspacePrivateEndpointConnection" {
///   private_endpoint_connection_name = "connection"
///   properties = {
///     private_link_service_connection_state = {
///       actions_required = "vgqhrxvmviabfgmafqtbej"
///       description      = "lknyprq"
///       status           = "Pending"
///     }
///   }
///   resource_group_name = "rgdiscovery"
///   workspace_name      = "2b2ef1dfc273d99493"
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
/// import com.pulumi.azurenative.discovery.WorkspacePrivateEndpointConnection;
/// import com.pulumi.azurenative.discovery.WorkspacePrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.discovery.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.discovery.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("connection")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .actionsRequired("vgqhrxvmviabfgmafqtbej")
///                     .description("lknyprq")
///                     .status("Pending")
///                     .build())
///                 .build())
///             .resourceGroupName("rgdiscovery")
///             .workspaceName("2b2ef1dfc273d99493")
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
/// const workspacePrivateEndpointConnection = new azure_native.discovery.WorkspacePrivateEndpointConnection("workspacePrivateEndpointConnection", {
///     privateEndpointConnectionName: "connection",
///     properties: {
///         privateLinkServiceConnectionState: {
///             actionsRequired: "vgqhrxvmviabfgmafqtbej",
///             description: "lknyprq",
///             status: azure_native.discovery.PrivateEndpointServiceConnectionStatus.Pending,
///         },
///     },
///     resourceGroupName: "rgdiscovery",
///     workspaceName: "2b2ef1dfc273d99493",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_private_endpoint_connection = azure_native.discovery.WorkspacePrivateEndpointConnection("workspacePrivateEndpointConnection",
///     private_endpoint_connection_name="connection",
///     properties={
///         "private_link_service_connection_state": {
///             "actions_required": "vgqhrxvmviabfgmafqtbej",
///             "description": "lknyprq",
///             "status": azure_native.discovery.PrivateEndpointServiceConnectionStatus.PENDING,
///         },
///     },
///     resource_group_name="rgdiscovery",
///     workspace_name="2b2ef1dfc273d99493")
///
/// ```
///
/// ```yaml
/// resources:
///   workspacePrivateEndpointConnection:
///     type: azure-native:discovery:WorkspacePrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: connection
///       properties:
///         privateLinkServiceConnectionState:
///           actionsRequired: vgqhrxvmviabfgmafqtbej
///           description: lknyprq
///           status: Pending
///       resourceGroupName: rgdiscovery
///       workspaceName: 2b2ef1dfc273d99493
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
/// $ pulumi import azure-native:discovery:WorkspacePrivateEndpointConnection connection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Discovery/workspaces/{workspaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class WorkspacePrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspacePrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspacePrivateEndpointConnection]. {@macro pulumi_discovery_workspace_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspacePrivateEndpointConnection(
    String name, {
    WorkspacePrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:discovery:WorkspacePrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WorkspacePrivateEndpointConnection] resource.
  WorkspacePrivateEndpointConnection.reference(String urn)
    : super(
        'azure-native:discovery:WorkspacePrivateEndpointConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
